// Duty System
let TRANSLATIONS = {};
let isViewingPlayerHeatmap = false;
let buttonEventListeners = new Set();

const DutySystem = {
    config: {
        enableRequestBackup: true,
        enableRequestToGoOnDuty: true,
        enableEditOrders: true
    },
    orders: {
        data: {},
        hasNewOrders: false
    },
    editingAllLocations: false,
    allLocations: [],

    data: {
        players: {},
        dutyTimesData: {}
    },
    currentUser: '0',
    currentPage: 'front',

    init() {
        this.updateFrontPage();
        this.updateDutyPage();
        this.setupEventListeners();
    },

    setupEventListeners() {
        document.getElementById('search').addEventListener('input', (e) => {
            this.updateDutyPage(e.target.value);
        });
    },

    async clockIn() {
        const location = currentDutyLocation;
        const playerId = this.currentUser;

        const player = this.data.players[playerId];
        if (player && player.isOnDuty) {
            fetch('https://outsider_policeman/notify', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    action: 'alreadyClockedIn'
                })
            });
            return;
        }

        const res = await fetch('https://outsider_policeman/setPlayerOnDuty', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ playerId: playerId, location: location })
        });

        const data = await res.json();
        if (!data.success) return;

        const serverTime = data.time
        const serverDate = data.date
        const serverTimeStamp = data.timeStamp
        const startTime = `${serverDate} ${serverTime}`;

        const sessions = this.data.players[playerId].sessions;
        const existingSession = sessions[0];
        if (existingSession) {
            existingSession.start = startTime;
            existingSession.dateStarted = serverDate;
            existingSession.timeStarted = serverTime;
            existingSession.dutyStartTimestamp = serverTimeStamp;
            existingSession.TimeOnDuty = "00:00:00";
            existingSession.serverTimeOnDuty = "00:00:00";
            existingSession.end = null;
            existingSession.location = location;

            this.data.players[playerId].dateStarted = serverDate;
            this.data.players[playerId].timeStarted = serverTime;
        }


        this.data.players[playerId].isOnDuty = true;
        this.startDutyTimer(playerId);
        this.updatePlayerEntry(playerId);
    },

    async clockOut() {
        const playerId = this.currentUser;

        if (!this.data.players[playerId] || !this.data.players[playerId].sessions.length) {
            return;
        }

        const lastSession = this.data.players[playerId].sessions[this.data.players[playerId].sessions.length - 1];
        if (lastSession && !lastSession.end) {

            const chosenLocation = lastSession.location;

            const res = await fetch('https://outsider_policeman/setPlayerOffDuty', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ playerId: playerId, location: chosenLocation })
            });

            const data = await res.json();
            if (!data.success) return;

            lastSession.end = new Date();

            this.data.players[playerId].isOnDuty = false;


            this.stopDutyTimer(playerId);
            this.updatePlayerEntry(playerId);
        } else {

            fetch('https://outsider_policeman/notify', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    action: 'notClockedIn'
                })
            });
        }
    },

    updatePlayerEntry(playerId) {
        const player = this.data.players[playerId];
        if (!player) return;

        const container = document.getElementById('on-duty-list');
        const playerCards = container.querySelectorAll('.card');

        let yourCard = null;
        playerCards.forEach(card => {
            const playerName = card.querySelector('.player-name');
            if (playerName && playerName.textContent.includes(player.name)) {
                yourCard = card;
            }
        });

        if (!yourCard) {
            this.updateFrontPage();
            return;
        }

        const isOnDuty = player.isOnDuty || false;

        if (isOnDuty) {
            yourCard.classList.remove('off-duty');
        } else {
            yourCard.classList.add('off-duty');
        }

        if (isOnDuty && player.sessions && player.sessions.length > 0) {
            const lastSession = player.sessions[player.sessions.length - 1];
            if (lastSession && !lastSession.end && lastSession.location === currentLocation) {

                const nameDiv = yourCard.querySelector('.name');
                if (nameDiv) {
                    nameDiv.className = 'name online';
                }

                this.updatePlayerCardSubElements(yourCard, lastSession, true, player);
            }
        } else {

            const nameDiv = yourCard.querySelector('.name');
            if (nameDiv) {
                nameDiv.className = 'name offline';
            }

            this.updatePlayerCardSubElements(yourCard, null, false, player);
        }
    },

    updateFrontPage() {
        const container = document.getElementById('on-duty-list');
        const onDutyOfficers = [];
        const addedPlayerIds = new Set();

        for (const [playerId, player] of Object.entries(this.data.players)) {
            if (!player) continue;


            if (addedPlayerIds.has(playerId)) {
                continue;
            }

            if (playerId !== String(this.currentUser) && player.location && player.location !== currentLocation) {
                continue;
            }

            if (!player.location || player.location === 'Unknown') {
                continue;
            }

            const isOnDuty = player.isOnDuty || false;

            if (isOnDuty) {

                if (player.location === currentLocation) {
                    onDutyOfficers.push({
                        id: playerId,
                        name: player.name,
                        badge: player.badge,
                        jobLabel: player.jobLabel,
                        jobGrade: player.jobGrade,
                        jobSalary: player.jobSalary,
                        clockInTime: player.dateStarted && player.timeStarted ? `${TRANSLATIONS.clockedIn}: ${player.dateStarted} ${player.timeStarted}` : '',
                        timeOnDuty: player.sessions?.TimeOnDuty || "00:00:00",
                        location: player.location,
                        locationHired: player.locationHired,
                        isOnDuty: true,
                        isCurrentUser: playerId === String(this.currentUser)
                    });
                    addedPlayerIds.add(playerId);
                }
            } else {

                onDutyOfficers.push({
                    id: playerId,
                    name: player.name,
                    badge: player.badge,
                    jobLabel: player.jobLabel,
                    jobGrade: player.jobGrade,
                    jobSalary: player.jobSalary,
                    clockInTime: TRANSLATIONS.clockedOut,
                    timeOnDuty: '00:00:00',
                    location: player.location,
                    locationHired: player.locationHired,
                    isOnDuty: false,
                    isCurrentUser: playerId === String(this.currentUser)
                });
                addedPlayerIds.add(playerId);
            }
        }

        if (onDutyOfficers.length === 0) {
            container.innerHTML = `<div class="card"><div class="sub">${TRANSLATIONS.noOfficersOnDuty} ${currentLocation}</div></div>`;
            return;
        }

        container.innerHTML = onDutyOfficers.map(officer => `
                    <div class="card ${officer.isCurrentUser ? 'current-user' : ''} ${!officer.isOnDuty ? 'off-duty' : ''}">
                        <div class="officer-info">
                            <div class="officer-details">
                                <div class="name ${officer.isOnDuty ? 'online' : 'offline'}">
                                    <span class="player-name">${officer.name}</span>
                                    ${`<span class="job-info">${officer.jobLabel}</span>`}
                                    ${`<span class="job-grade">${officer.jobGrade}</span>`}
                                    ${`<span class="job-salary">$${officer.jobSalary}</span>`}
                                </div>
                                <div class="sub">${officer.isOnDuty ? officer.clockInTime : TRANSLATIONS.clockedOut}</div>
                                <div class="sub">
                                ${TRANSLATIONS.timeOnDuty} ${officer.timeOnDuty} 
                                </div>
                                <div class="sub">${TRANSLATIONS.location} ${officer.location}</div>
                                <div class="sub">Hired at: ${officer.locationHired || 'Unknown'}</div>
                            </div>
                            <div class="badge-container">
                                ${officer.isCurrentUser ? `
                                    <div class="duty-controls"> ${officer.isOnDuty ?
                    `<button class="btn" id="clockOutBtn" onclick="clockOut()">${TRANSLATIONS.clockOut}</button>` :
                    `<button class="btn" id="clockInBtn" onclick="clockIn()">${TRANSLATIONS.clockIn}</button>`}
                                    </div>
                                `: officer.isOnDuty ? `
                                    <div class="duty-controls"> ${DutySystem.config.enableRequestBackup ?
                    `<button class="btn" onclick="requestBackup('${officer.id}')">${TRANSLATIONS.requestBackup}</button>` : ''}
                                    </div> ` : `
                                    <div class="duty-controls">${DutySystem.config.enableRequestToGoOnDuty ?
                `<button class="btn" onclick="requestToGoOnDuty('${officer.id}')">${TRANSLATIONS.requestToGoOnDuty}</button>` : ''}
                                    </div>`}
                                <img src="./images/${officer.badge}" alt="Badge" class="officer-badge">
                            </div>
                        </div>
                    </div>
                `).join('');

        setupButtonSoundEvents();
    },

    async updateDutyPage(searchQuery = '') {
        const container = document.getElementById('player-list');


        try {
            const response = await fetch('https://outsider_policeman/getDutyEmployees', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    location: currentDutyLocation
                })
            });

            const data = await response.json();
            if (data.success && data.employees) {

                const filteredEmployees = data.employees.filter(employee => {
                    const matchesSearch = employee.name.toLowerCase().includes(searchQuery.toLowerCase());
                    return matchesSearch;
                });

                container.innerHTML = filteredEmployees.map(employee => {

                    const employeeWithSessions = {
                        name: employee.name,
                        badge: employee.badge,
                        isOnline: employee.isOnline,
                        location: employee.location,
                        sessions: []
                    };
                    return this.renderPlayerCard(employee.id, employeeWithSessions);
                }).join('');

                setupButtonSoundEvents();
            } else {
                container.innerHTML = '<div class="card"><div class="sub">No duty data found</div></div>';
            }
        } catch (error) {
            console.error('Error fetching duty times:', error);
            container.innerHTML = '<div class="card"><div class="sub">Error loading duty data</div></div>';
        }
    },

    renderPlayerCard(playerId, player) {

        const stats = this.calculateStatsWithFallbacks(player);
        const isOnline = player.isOnline;

        return `
                    <details class="card2" onclick="if (!this.open) DutySystem.loadEmployeeSessions('${playerId}')" onclose="isViewingPlayerHeatmap = false;">
                        <summary>
                            <span class="chev">▼</span>
                            <div class="player-info">
                                <div class="player-details">
                                    <div class="name">${player.name || 'Unknown Player 1'}</div>
                        <div class="sub">${TRANSLATIONS.lastLocation}: ${stats.lastLocation}</div>
                    </div>
                    <div class="badge-container">
                        <img src="./images/${player.badge + ".png" || 'provision_sheriff_star.png'}" alt="Badge" class="player-badge">
                    </div>
                </div>
                <span class="badge ${isOnline ? 'online' : 'offline'}">
                    ${isOnline ? TRANSLATIONS.online : TRANSLATIONS.offline}
                </span>
            </summary>
            <div class="body">
                <div class="kv">
                    ${this.generateStatsHTML(stats)}
                    ${this.generateCleanupButton(playerId)}
                </div>
                ${this.renderHeatmap(playerId, player.sessions)}
            </div>
        </details>
        `;
    },

    showCleanupOptions(playerId) {

        const dropdown = document.createElement('div');
        dropdown.className = 'cleanup-dropdown';
        const currentYear = new Date().getFullYear();
        const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
        const monthOptions = months.map((month, index) => {
            const monthValue = `${currentYear}-${String(index + 1).padStart(2, '0')}`;
            return `<option value="${monthValue}">${month} ${currentYear}</option>`;
        }).join('');

        dropdown.innerHTML = `
            <div class="cleanup-header">${TRANSLATIONS.selectMonth}:</div> 
            <div class="month-selector">
                <select id="cleanup-month-${playerId}" class="cleanup-select">
                    <option value="">${TRANSLATIONS.chooseMonth}</option>
                    ${monthOptions}
                </select>
            </div>
            <div class="cleanup-actions">
                <button class="delete-btn" onclick="DutySystem.deleteMonthData('${playerId}')">${TRANSLATIONS.deleteMonth}</button>
                <button class="cancel-btn" onclick="DutySystem.closeCleanupDropdown()">${TRANSLATIONS.cancel}</button>
            </div>
        `;


        const button = event.target;
        dropdown.style.position = 'absolute';
        dropdown.style.top = button.offsetTop + button.offsetHeight + 'px';
        dropdown.style.left = button.offsetLeft + 'px';
        dropdown.style.zIndex = '1000';


        document.body.appendChild(dropdown);
        this.currentCleanupDropdown = dropdown;
    },

    closeCleanupDropdown() {
        if (this.currentCleanupDropdown) {
            document.body.removeChild(this.currentCleanupDropdown);
            this.currentCleanupDropdown = null;
        }
    },

    async deleteMonthData(playerId) {
        const monthSelect = document.getElementById(`cleanup-month-${playerId}`);
        const selectedMonth = monthSelect.value;

        if (!selectedMonth) {
            return;
        }


        try {
            const response = await fetch('https://outsider_policeman/cleanupDutyData', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    playerId: playerId,
                    cleanupType: 'month',
                    month: selectedMonth
                })
            });

            const data = await response.json();
            if (data.success) {

                this.closeCleanupDropdown();
                if (this.data.players[playerId]) {
                    this.data.players[playerId].sessions = [];
                }

                this.updateSpecificPlayerCard(playerId);
                this.loadEmployeeSessions(playerId);
            } else {
                console.error('Delete failed:', data.error);
            }
        } catch (error) {
            console.error('Error during delete:', error);
        }
    },

    async loadEmployeeSessions(employeeId) {
        try {
            isViewingPlayerHeatmap = true;

            const response = await fetch('https://outsider_policeman/getEmployeeDutyData', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    employeeId: employeeId,
                    location: currentDutyLocation
                })
            });

            const data = await response.json();

            if (data.success && data.sessions && Array.isArray(data.sessions)) {


                if (!this.data.dutyTimesData[employeeId]) {
                    this.data.dutyTimesData[employeeId] = { sessions: [] };
                }

                this.data.dutyTimesData[employeeId].sessions = data.sessions.map(session => {
                    try {

                        const startDate = new Date(session.start);
                        const endDate = session.end ? new Date(session.end) : null;

                        return {
                            start: startDate,
                            end: endDate,
                            duration: session.duration || 0,
                            location: session.location,
                            moneyEarned: session.money_earned || 0,
                            TimeOnDuty: "00:00:00",

                            clockIn: session.clockIn,
                            clockOut: session.clockOut
                        };
                    } catch (error) {


                        return {
                            start: new Date(),
                            end: null,
                            duration: 0,
                            location: session.location || 'Unknown',
                            moneyEarned: 0,
                            TimeOnDuty: "00:00:00",
                            clockIn: session.clockIn || "00:00:00",
                            clockOut: session.clockOut || "Active"
                        };
                    }
                });

                this.updateSpecificPlayerCard(employeeId);
            }
        } catch (error) {
            console.error('Error fetching employee sessions:', error);
        }
    },

    updateSpecificPlayerCard(playerId) {
        const playerCard = document.querySelector(`details[onclick*="loadEmployeeSessions('${playerId}')"]`);
        if (!playerCard) return;

        const wasOpen = playerCard.open;
        if (wasOpen) {

            const dutyTimesPlayer = this.data.dutyTimesData[playerId];
            if (dutyTimesPlayer) {
                const bodyDiv = playerCard.querySelector('.body');
                if (bodyDiv) {
                    const stats = this.calculateStatsFromSessions(dutyTimesPlayer.sessions);
                    const kvDiv = bodyDiv.querySelector('.kv');
                    if (kvDiv) {
                        kvDiv.innerHTML = this.generateStatsHTML(stats) + this.generateCleanupButton(playerId);
                    }


                    const heatmapDiv = bodyDiv.querySelector('.heatmap');
                    if (heatmapDiv) {
                        heatmapDiv.outerHTML = this.renderHeatmap(playerId, dutyTimesPlayer.sessions);
                    }
                }
            }
            return;
        }

        const dutyTimesPlayer = this.data.dutyTimesData[playerId];
        if (!dutyTimesPlayer) return;

        if (!playerCard.getAttribute('onclick')) {
            playerCard.setAttribute('onclick', `if (!this.open) DutySystem.loadEmployeeSessions('${playerId}')`);
        }

        const bodyDiv = playerCard.querySelector('.body');
        if (bodyDiv) {
            const stats = this.calculateStatsFromSessions(dutyTimesPlayer.sessions);
            const kvDiv = bodyDiv.querySelector('.kv');
            if (kvDiv) {
                kvDiv.innerHTML = this.generateStatsHTML(stats) + this.generateCleanupButton(playerId);
            }

            const heatmapDiv = bodyDiv.querySelector('.heatmap');
            if (heatmapDiv) {
                heatmapDiv.outerHTML = this.renderHeatmap(playerId, dutyTimesPlayer.sessions);
            }
        }

        if (wasOpen) {
            playerCard.open = true;
        }
    },

    renderHeatmap(playerId, sessions) {
        const year = parseInt(currentYear);
        const scopeType = currentScope;

        if (scopeType === 'month') {
            const month = parseInt(currentMonth);
            return this.renderMonthHeatmap(playerId, sessions, year, month);
        } else {
            return this.renderYearHeatmap(playerId, sessions, year);
        }
    },

    renderMonthHeatmap(playerId, sessions, year, month) {
        const daysInMonth = new Date(year, month + 1, 0).getDate();
        const monthName = new Date(year, month).toLocaleString('default', { month: 'short' });

        let headerHtml = '<div class="heatmap-header">';
        headerHtml += '<div></div>';
        for (let day = 1; day <= daysInMonth; day++) {
            headerHtml += `<div class="day-label">${day}</div>`;
        }
        headerHtml += '</div>';

        let rowHtml = '<div class="heatmap-row">';
        rowHtml += `<div class="month-label">${monthName}</div>`;
        for (let day = 1; day <= daysInMonth; day++) {
            const date = new Date(year, month, day);
            const activityLevel = this.getActivityLevelOnDate(sessions, date);
            rowHtml += `<div class="heatmap-cell level-${activityLevel}" 
                                    onclick="event.stopPropagation(); showDayInfo('${playerId}', '${date.toISOString()}')"></div>`;
        }
        rowHtml += '</div>';

        return `
            <div class="heatmap">
                <h4>${TRANSLATIONS.activityHeatmap} - ${monthName} ${year}</h4>
                ${headerHtml}
                ${rowHtml}
                <div id="inspector-${playerId}" class="inspector hidden">
                    ${TRANSLATIONS.clickOnDayToSeeSessions}
                </div>
            </div>
        `;
    },

    renderYearHeatmap(playerId, sessions, year) {
        const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        let heatmapHtml = `<div class="heatmap"><h4>${TRANSLATIONS.activityHeatmap} - ${year}</h4>`;


        heatmapHtml += '<div class="heatmap-header"><div></div>';
        for (let day = 1; day <= 31; day++) {
            heatmapHtml += `<div class="day-label">${day}</div>`;
        }
        heatmapHtml += '</div>';


        for (let month = 0; month < 12; month++) {
            const daysInMonth = new Date(year, month + 1, 0).getDate();
            heatmapHtml += '<div class="heatmap-row">';
            heatmapHtml += `<div class="month-label">${months[month]}</div>`;

            for (let day = 1; day <= 31; day++) {
                if (day <= daysInMonth) {
                    const date = new Date(year, month, day);
                    const activityLevel = this.getActivityLevelOnDate(sessions, date);
                    heatmapHtml += `<div class="heatmap-cell level-${activityLevel}" 
                                              onclick="event.stopPropagation(); showDayInfo('${playerId}', '${date.toISOString()}')"></div>`;
                } else {
                    heatmapHtml += '<div></div>';
                }
            }
            heatmapHtml += '</div>';
        }

        heatmapHtml += `<div id="inspector-${playerId}" class="inspector hidden">
                    ${TRANSLATIONS.clickOnDayToSeeSessions}
                </div></div>`;

        return heatmapHtml;
    },

    getActivityLevelOnDate(sessions, date) {
        if (!sessions || sessions.length === 0) {
            return 0;
        }

        const sessionsOnDate = sessions.filter(session => {
            if (!session.start) return false;

            const sessionStartDate = new Date(session.start);
            const sessionEndDate = session.clockOut ? new Date(session.clockOut) : null;

            const startsOnDate = sessionStartDate.toDateString() === date.toDateString();
            const endsOnDate = sessionEndDate && sessionEndDate.toDateString() === date.toDateString();

            return startsOnDate || endsOnDate;
        });

        const sessionCount = sessionsOnDate.length;
        if (sessionCount === 0) return 0;
        if (sessionCount === 1) return 1;
        if (sessionCount <= 3) return 2;
        if (sessionCount <= 5) return 3;
        return 4;
    },

    getSessionsForDate(playerId, dateString) {
        const date = new Date(dateString);
        const dutyTimesPlayer = this.data.dutyTimesData[playerId];
        if (!dutyTimesPlayer) return [];

        const sessionsToSearch = dutyTimesPlayer.sessions;

        return sessionsToSearch.filter(session => {
            const sessionStartDate = new Date(session.start);
            const sessionEndDate = new Date(session.clockOut);

            const startsOnDate = sessionStartDate.toDateString() === date.toDateString();
            const endsOnDate = sessionEndDate.toDateString() === date.toDateString();

            return startsOnDate || endsOnDate;
        });
    },

    showDayInfo(playerId, dateString) {
        const inspector = document.getElementById(`inspector-${playerId}`);
        const sessions = this.getSessionsForDate(playerId, dateString);
        const date = new Date(dateString);

        if (sessions.length === 0) {
            inspector.innerHTML = `${TRANSLATIONS.noSessionsOnDate} ${date.toDateString()}`;
        } else {
            let html = `<strong>${TRANSLATIONS.sessionsForDate} ${date.toDateString()}:</strong><br>`;
            if (sessions.length > 4) {
                html += '<div class="session-scroll-container">';
            }
            sessions.forEach(session => {
                const startTime = session.clockIn;
                const endTime = session.clockOut;

                const durationSeconds = session.duration || 0;
                const hours = Math.floor(durationSeconds / 3600);
                const minutes = Math.floor((durationSeconds % 3600) / 60);
                const durationText = hours > 0 ? `${hours}h ${minutes}m` : `${minutes}m`;

                html += `<div class="session-item">
                            ${TRANSLATIONS.start} ${startTime} | ${TRANSLATIONS.End} ${endTime} | ${TRANSLATIONS.duration} ${durationText} | ${TRANSLATIONS.location} ${session.location} | ${TRANSLATIONS.money} $${(parseFloat(session.moneyEarned) || 0).toFixed(2)}
                        </div>`;
            });
            if (sessions.length > 4) {
                html += '</div>';
            }
            inspector.innerHTML = html;
        }

        inspector.classList.remove('hidden');
    },

    calculateTotalTime(sessions) {

        return sessions.reduce((total, session) => {
            if (!session.end) {

                return total;
            }

            if (Math.abs(session.duration) > 86400) {
                return total;
            }

            return total + (session.duration || 0);
        }, 0);
    },

    getMostUsedLocation(sessions) {
        const locationCount = {};
        sessions.forEach(session => {
            locationCount[session.location] = (locationCount[session.location] || 0) + 1;
        });

        const mostUsed = Object.entries(locationCount).reduce((a, b) =>
            locationCount[a[0]] > locationCount[b[0]] ? a : b, ['None', 0]
        );

        return mostUsed[0];
    },

    calculateTotalMoneyEarned(sessions) {
        return sessions.reduce((total, session) => {
            return total + (parseFloat(session.moneyEarned) || 0);
        }, 0);
    },

    getLastLocation(sessions) {
        if (sessions.length === 0) return null;
        return sessions[sessions.length - 1].location;
    },


    formatDuration(seconds) {
        const hours = Math.floor(seconds / 3600);
        const minutes = Math.floor((seconds % 3600) / 60);
        return `${hours}h ${minutes}m`;
    },

    setCurrentUser(playerId) {
        this.currentUser = playerId;
    },

    startDutyTimer(playerId) {
        const player = this.data.players[playerId];
        if (!player) return;

        const activeSession = player.sessions.find(session => session.end === null);
        if (!activeSession) {
            return;
        }

        if (this.dutyTimers && this.dutyTimers[playerId]) {
            clearInterval(this.dutyTimers[playerId]);
        }

        if (!this.dutyTimers) {
            this.dutyTimers = {};
        }

        this.dutyTimers[playerId] = setInterval(() => {
            this.updateDutyTime(playerId);
        }, 1000);
    },

    updateDutyTime(playerId) {

        const player = this.data.players[playerId];
        if (!player) {
            console.log('no player found in updateDutyTime for:', playerId);
            return;
        }

        const activeSession = player.sessions.find(session => session.end === null);
        if (!activeSession) {
            console.log('no active session found in updateDutyTime for player:', playerId);
            return;
        }


        let hours, minutes, seconds;
        if (typeof activeSession.serverTimeOnDuty === 'string') {
            [hours, minutes, seconds] = activeSession.serverTimeOnDuty.split(':').map(Number);
        } else if (activeSession.serverTimeOnDuty && typeof activeSession.serverTimeOnDuty === 'object') {
            hours = activeSession.serverTimeOnDuty.hours || 0;
            minutes = activeSession.serverTimeOnDuty.minutes || 0;
            seconds = activeSession.serverTimeOnDuty.seconds || 0;
        } else {
            hours = minutes = seconds = 0;
        }

        let totalSeconds = hours * 3600 + minutes * 60 + seconds;

        totalSeconds += 1;

        const newHours = Math.floor(totalSeconds / 3600);
        const newMinutes = Math.floor((totalSeconds % 3600) / 60);
        const newSeconds = totalSeconds % 60;

        const timeString = `${newHours.toString().padStart(2, '0')}:${newMinutes.toString().padStart(2, '0')}:${newSeconds.toString().padStart(2, '0')}`;
        activeSession.TimeOnDuty = timeString;

        activeSession.serverTimeOnDuty = timeString;

        this.updateTimeDisplay(playerId);
    },

    updateTimeDisplay(playerId) {
        const player = this.data.players[playerId];
        if (!player || !player.isOnDuty) return;

        const activeSession = player.sessions.find(session => !session.end);
        if (!activeSession) return;

        const container = document.getElementById('on-duty-list');
        const playerCards = container.querySelectorAll('.card');

        playerCards.forEach(card => {
            const playerName = card.querySelector('.player-name');
            if (playerName && playerName.textContent.includes(player.name)) {
                const subDivs = card.querySelectorAll('.sub');
                subDivs.forEach(div => {
                    if (div.textContent.includes(TRANSLATIONS.timeOnDuty)) {
                        div.innerHTML = `${TRANSLATIONS.timeOnDuty} ${activeSession.TimeOnDuty}`;
                    }
                });
            }
        });
    },

    stopDutyTimer(playerId) {
        if (this.dutyTimers && this.dutyTimers[playerId]) {
            clearInterval(this.dutyTimers[playerId]);
            delete this.dutyTimers[playerId];
        }
    },


    calculateStatsFromSessions(sessions) {
        return {
            totalTime: this.calculateTotalTime(sessions),
            mostUsedLocation: this.getMostUsedLocation(sessions),
            lastLocation: this.getLastLocation(sessions) || 'Unknown',
            totalMoneyEarned: this.calculateTotalMoneyEarned(sessions)
        };
    },

    calculateStatsWithFallbacks(player) {
        const hasSessionData = player.sessions && player.sessions.length > 0;
        return {
            totalTime: hasSessionData ? this.calculateTotalTime(player.sessions) : 0,
            mostUsedLocation: hasSessionData ? this.getMostUsedLocation(player.sessions) : 'None',
            lastLocation: hasSessionData ? (this.getLastLocation(player.sessions) || player.location) : (player.location || 'Unknown'),
            totalMoneyEarned: hasSessionData ? this.calculateTotalMoneyEarned(player.sessions) : 0
        };
    },


    generateStatsHTML(stats) {
        return `
            <div>${TRANSLATIONS.totalDutyTime}:</div>
            <div>${this.formatDuration(stats.totalTime)}</div>
            <div>${TRANSLATIONS.mostUsedLocation}:</div>
            <div>${stats.mostUsedLocation}</div>
            <div>${TRANSLATIONS.currentLastLocation}:</div>
            <div>${stats.lastLocation}</div>
            <div>${TRANSLATIONS.totalMoneyEarned}:</div>
            <div>$${stats.totalMoneyEarned.toFixed(2)}</div>
        `;
    },

    generateCleanupButton(playerId) {
        return `
            <div class="cleanup-section">
                <button class="cleanup-btn" onclick="DutySystem.showCleanupOptions('${playerId}')">
                    🗑️ ${TRANSLATIONS.cleanData}
                </button>
            </div>
        `;
    },


    updatePlayerCardSubElements(card, session, isOnDuty, player) {
        const subElements = card.querySelectorAll('.sub');

        if (isOnDuty && session) {
            subElements[0].textContent = TRANSLATIONS.clockedIn + ': ' + (player.dateStarted || '') + ' ' + (player.timeStarted || '');
            subElements[1].innerHTML = `${TRANSLATIONS.timeOnDuty} ${session.TimeOnDuty || "00:00:00"}`;

            if (subElements[2]) {
                subElements[2].textContent = `${TRANSLATIONS.location} ${currentDutyLocation}`;
            }

        } else {

            subElements[0].textContent = TRANSLATIONS.clockedOut;
            subElements[1].innerHTML = `${TRANSLATIONS.timeOnDuty} 00:00:00`;

            if (subElements[2]) {
                subElements[2].textContent = `${TRANSLATIONS.location} ${currentDutyLocation}`;
            }
        }
        const dutyControls = card.querySelector('.duty-controls');
        if (dutyControls) {
            if (isOnDuty) {
                dutyControls.innerHTML = `<button class="btn" id="clockOutBtn" onclick="clockOut()">${TRANSLATIONS.clockOut}</button>`;
            } else {
                dutyControls.innerHTML = `<button class="btn" id="clockInBtn" onclick="clockIn()">${TRANSLATIONS.clockIn}</button>`;
            }
        }
    },


    openOrdersCard() {
        const ordersCard = document.getElementById('orders-card');
        const window = document.querySelector('.window');
        ordersCard.classList.remove('hidden');
        if (window) {
            window.classList.add('dimmed');
        }
        this.loadOrdersForLocation();

        this.hideNewOrdersIndicator();
    },

    closeOrdersCard() {
        const ordersCard = document.getElementById('orders-card');
        const window = document.querySelector('.window');
        ordersCard.classList.add('hidden');
        if (window) {
            window.classList.remove('dimmed');
        }
        this.cancelEditOrders();
    },

    loadOrdersForLocation() {
        const selectedLocation = currentDutyLocation || 'Valentine';
        const ordersDisplay = document.getElementById('orders-display');
        const orders = this.orders.data[selectedLocation];

        if (orders && orders.trim().length > 0) {
            ordersDisplay.innerHTML = marked.parse(orders);
        } else {
            ordersDisplay.textContent = 'No orders';
        }
    },

    editOrders() {
        const ordersEdit = document.getElementById('orders-edit');
        const ordersDisplay = document.getElementById('orders-display');
        const ordersTextarea = document.getElementById('orders-textarea');
        const selectedLocation = currentDutyLocation || 'Valentine';

        ordersEdit.classList.remove('hidden');
        ordersDisplay.classList.add('hidden');

        const currentOrders = this.orders.data[selectedLocation] || '';
        ordersTextarea.value = currentOrders;


        const locationNameElement = document.getElementById('current-location-name');
        if (locationNameElement) {
            locationNameElement.textContent = selectedLocation;
        }

        this.hideEditOrdersButton();

        this.editingAllLocations = false;
        this.updateAllLocationsButton();
    },

    cancelEditOrders() {
        const ordersEdit = document.getElementById('orders-edit');
        const ordersDisplay = document.getElementById('orders-display');

        ordersEdit.classList.add('hidden');
        ordersDisplay.classList.remove('hidden');

        this.showEditOrdersButton();
    },

    async saveOrders() {
        const ordersTextarea = document.getElementById('orders-textarea');
        const selectedLocation = currentDutyLocation || 'Valentine';
        const newOrders = ordersTextarea.value.trim();

        const result = await fetch(`https://${GetParentResourceName()}/updateOrders`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                location: this.editingAllLocations ? 'all' : selectedLocation,
                orders: newOrders,
                allLocations: this.editingAllLocations
            })
        });

        const data = await result.json();
        if (data.success) {

            if (this.editingAllLocations) {
                this.allLocations.forEach(location => {
                    this.orders.data[location] = newOrders;
                });
            } else {
                this.orders.data[selectedLocation] = newOrders;
            }

            this.cancelEditOrders();
            this.loadOrdersForLocation();
            this.showEditOrdersButton();
            this.updateNewOrdersIndicator();
        } else {
            return console.error('Failed to save orders:', data.error);
        }
    },

    updateNewOrdersIndicator() {
        const indicator = document.getElementById('new-orders-indicator');

        const hasOrders = Object.values(this.orders.data).some(orders => orders && orders.trim().length > 0);

        if (hasOrders) {
            indicator.classList.remove('hidden');
            this.orders.hasNewOrders = true;
        } else {
            indicator.classList.add('hidden');
            this.orders.hasNewOrders = false;
        }
    },

    hideNewOrdersIndicator() {
        const indicator = document.getElementById('new-orders-indicator');
        if (indicator) {
            indicator.classList.add('hidden');
            this.orders.hasNewOrders = false;
        }
    },

    updateAllLocationsButton() {
        const allLocationsBtn = document.getElementById('all-locations-btn');
        if (allLocationsBtn) {
            allLocationsBtn.textContent = this.editingAllLocations ? TRANSLATIONS.allLocations : TRANSLATIONS.singleLocation;
        }

        const locationNameElement = document.getElementById('current-location-name');
        if (locationNameElement) {
            if (this.editingAllLocations) {
                locationNameElement.textContent = TRANSLATIONS.allLocations.toUpperCase();
            } else {
                const selectedLocation = currentDutyLocation || 'Valentine';
                locationNameElement.textContent = selectedLocation;
            }
        }
    },

    toggleAllLocations() {
        this.editingAllLocations = !this.editingAllLocations;
        this.updateAllLocationsButton();
    },

    updateEditOrdersButtonVisibility() {
        const editBtn = document.getElementById('edit-orders-btn');
        if (editBtn) {
            editBtn.style.display = this.config.enableEditOrders ? 'inline-block' : 'none';
        }
    },

    hideEditOrdersButton() {
        const editBtn = document.getElementById('edit-orders-btn');
        if (editBtn && this.config.enableEditOrders) {
            editBtn.style.display = 'none';
        }
    },

    showEditOrdersButton() {
        const editBtn = document.getElementById('edit-orders-btn');
        if (editBtn && this.config.enableEditOrders) {
            editBtn.style.display = 'inline-block';
        }
    }
};

// Global functions
function playButtonSound() {
    fetch('https://outsider_policeman/playButtonSound', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({})
    });
}

function setupButtonSoundEvents() {

    buttonEventListeners.forEach(listener => {
        listener.element.removeEventListener('mouseenter', listener.handler);
    });
    buttonEventListeners.clear();


    const buttons = document.querySelectorAll('button, .btn, .dropdown-option, .card2');
    buttons.forEach(button => {
        const handler = () => playButtonSound();
        button.addEventListener('mouseenter', (event) => {
            event.preventDefault();
            handler();
        });
        buttonEventListeners.add({ element: button, handler });
    });
}

function generateDropdownOptions(containerId, onClickFunction) {
    const container = document.getElementById(containerId);
    if (!container || !DutySystem.allLocations || DutySystem.allLocations.length === 0) {
        return;
    }

    container.innerHTML = '';
    DutySystem.allLocations.forEach(location => {
        const option = document.createElement('div');
        option.className = 'dropdown-option';
        option.setAttribute('data-value', location);
        option.textContent = location;
        option.onclick = () => onClickFunction(location);
        container.appendChild(option);
    });

    setupButtonSoundEvents();
}


function generateYearDropdownOptions() {
    const container = document.getElementById('year-options');
    if (!container) return;

    const currentYear = new Date().getFullYear();
    const startYear = 2025;
    const endYear = Math.max(2025, currentYear);

    container.innerHTML = '';

    for (let year = endYear; year >= startYear; year--) {
        const option = document.createElement('div');
        option.className = 'dropdown-option';
        option.setAttribute('data-value', year.toString());
        option.textContent = year.toString();
        option.onclick = () => selectYear(year.toString());
        container.appendChild(option);
    }

    const selectedText = document.getElementById('year-selected-text');
    if (selectedText) {
        selectedText.textContent = currentYear.toString();
    }

    setupButtonSoundEvents();
}

function requestToGoOnDuty(targetPlayerId) {
    const currentUserId = DutySystem.currentUser;

    if (!currentUserId || !targetPlayerId) {
        console.error('missing user IDs for duty request');
        return;
    }

    // Check if current user is on duty
    const currentUser = DutySystem.data.players[currentUserId];
    if (!currentUser || !currentUser.isOnDuty) {
        fetch('https://outsider_policeman/notify', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                action: 'notOnDuty'
            })
        });
        return;
    }

    fetch(`https://${GetParentResourceName()}/requestToGoOnDuty`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            requesterId: currentUserId,
            targetId: targetPlayerId,
            location: currentDutyLocation
        })
    })
}

function requestBackup(targetPlayerId) {
    const currentUserId = DutySystem.currentUser;

    if (!currentUserId || !targetPlayerId) {
        console.error('missing user IDs for backup request');
        return;
    }

    // Check if current user is on duty
    const currentUser = DutySystem.data.players[currentUserId];
    if (!currentUser || !currentUser.isOnDuty) {
        //fecth notify
        fetch('https://outsider_policeman/notify', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                action: 'notOnDuty'
            })
        });
        return;
    }

    fetch(`https://${GetParentResourceName()}/requestBackup`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            requesterId: currentUserId,
            targetId: targetPlayerId,
            location: currentDutyLocation
        })
    })
}

function togglePage() {
    const frontPage = document.getElementById('front-page');
    const dutyPage = document.getElementById('duty-page');
    const toggleText = document.getElementById('toggle-text');

    if (DutySystem.currentPage === 'front') {
        frontPage.classList.add('hidden');
        dutyPage.classList.remove('hidden');
        toggleText.textContent = TRANSLATIONS.dutyList;
        DutySystem.currentPage = 'duty';
        DutySystem.updateDutyPage();
    } else {
        frontPage.classList.remove('hidden');
        dutyPage.classList.add('hidden');
        toggleText.textContent = TRANSLATIONS.dutyTimes;
        DutySystem.currentPage = 'front';
    }
}

function clockIn() {
    DutySystem.clockIn();
}

function clockOut() {
    DutySystem.clockOut();
}

function showDayInfo(playerId, dateString) {
    DutySystem.showDayInfo(playerId, dateString);
}


let currentLocation = 'Valentine';
let currentDutyLocation = 'Valentine';
let currentScope = 'year';
let currentYear = new Date().getFullYear();
let currentMonth = new Date().getMonth();

function toggleDropdown(dropdownId) {
    const dropdown = document.getElementById(dropdownId);
    const selected = dropdown.querySelector('.dropdown-selected');
    const options = dropdown.querySelector('.dropdown-options');

    document.querySelectorAll('.dropdown-options').forEach(opt => {
        if (opt !== options) {
            opt.classList.remove('show');
            opt.parentElement.querySelector('.dropdown-selected').classList.remove('active');
        }
    });

    options.classList.toggle('show');
    selected.classList.toggle('active');
}

function selectLocation(location) {
    currentLocation = location;
    currentDutyLocation = location;
    document.getElementById('location-selected-text').textContent = location;

    document.querySelectorAll('#location-options .dropdown-option').forEach(option => {
        option.classList.remove('selected');
        if (option.dataset.value === location) {
            option.classList.add('selected');
        }
    });

    const dropdown = document.getElementById('location-dropdown');
    dropdown.querySelector('.dropdown-options').classList.remove('show');
    dropdown.querySelector('.dropdown-selected').classList.remove('active');

    DutySystem.updateFrontPage();
}

function selectScope(scope) {
    currentScope = scope;
    document.getElementById('scope-selected-text').textContent = scope.charAt(0).toUpperCase() + scope.slice(1);

    document.querySelectorAll('#scope-options .dropdown-option').forEach(option => {
        option.classList.remove('selected');
        if (option.dataset.value === scope) {
            option.classList.add('selected');
        }
    });

    const monthDropdown = document.getElementById('month-dropdown');
    if (scope === 'month') {
        monthDropdown.classList.remove('hidden');
    } else {
        monthDropdown.classList.add('hidden');
    }

    const dropdown = document.getElementById('scope-dropdown');
    dropdown.querySelector('.dropdown-options').classList.remove('show');
    dropdown.querySelector('.dropdown-selected').classList.remove('active');

    DutySystem.updateDutyPage();
}

function selectYear(year) {
    currentYear = year;
    document.getElementById('year-selected-text').textContent = year;

    document.querySelectorAll('#year-options .dropdown-option').forEach(option => {
        option.classList.remove('selected');
        if (option.dataset.value === year) {
            option.classList.add('selected');
        }
    });

    const dropdown = document.getElementById('year-dropdown');
    dropdown.querySelector('.dropdown-options').classList.remove('show');
    dropdown.querySelector('.dropdown-selected').classList.remove('active');

    DutySystem.updateDutyPage();
}

function selectMonth(month) {
    currentMonth = month;
    const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    document.getElementById('month-selected-text').textContent = monthNames[parseInt(month)];

    document.querySelectorAll('#month-options .dropdown-option').forEach(option => {
        option.classList.remove('selected');
        if (option.dataset.value === month) {
            option.classList.add('selected');
        }
    });

    const dropdown = document.getElementById('month-dropdown');
    dropdown.querySelector('.dropdown-options').classList.remove('show');
    dropdown.querySelector('.dropdown-selected').classList.remove('active');

    DutySystem.updateDutyPage();
}

function selectDutyLocation(location) {
    currentDutyLocation = location;
    DutySystem.currentLocation = location;
    const displayText = location;
    document.getElementById('duty-location-selected-text').textContent = displayText;

    document.querySelectorAll('#duty-location-options .dropdown-option').forEach(option => {
        option.classList.remove('selected');
        if (option.dataset.value === location) {
            option.classList.add('selected');
        }
    });

    const dropdown = document.getElementById('duty-location-dropdown');
    dropdown.querySelector('.dropdown-options').classList.remove('show');
    dropdown.querySelector('.dropdown-selected').classList.remove('active');

    DutySystem.updateDutyPage();

    const ordersCard = document.getElementById('orders-card');
    if (ordersCard && !ordersCard.classList.contains('hidden')) {
        DutySystem.loadOrdersForLocation();
    }
}

document.addEventListener('click', function (event) {
    if (!event.target.closest('.custom-dropdown')) {
        document.querySelectorAll('.dropdown-options').forEach(options => {
            options.classList.remove('show');
            options.parentElement.querySelector('.dropdown-selected').classList.remove('active');
        });
    }
});

function closeUI() {
    showDutyUI('none');
    isOpen = false;

    if (DutySystem.dutyTimers) {
        Object.keys(DutySystem.dutyTimers).forEach(playerId => {
            clearInterval(DutySystem.dutyTimers[playerId]);
            delete DutySystem.dutyTimers[playerId];
        });
    }

    DutySystem.data.players = {};

    buttonEventListeners.forEach(listener => {
        listener.element.removeEventListener('mouseenter', listener.handler);
    });
    buttonEventListeners.clear();

    fetch('https://outsider_policeman/closeDuty', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({})
    });
}

function showDutyUI(value) {

    const tutorialButton = document.getElementById('tutorialButton');
    const dutyWindow = document.querySelector('.window');
    if (dutyWindow) {
        dutyWindow.style.display = value;
    }

    if (tutorialButton) {
        tutorialButton.remove();
    }
    toggleReportsContainer(false)
    toggleWantedBoardContainer(false);

    document.body.style.display = value;
}



document.addEventListener('DOMContentLoaded', () => {
    showDutyUI('none');
    generateYearDropdownOptions();
    let isOpen = false;
    window.addEventListener('message', function (event) {
        var data = event.data;
        if (data.action === 'openDuty') {
            showDutyUI('block');
            isOpen = true;

            currentDutyLocation = data.currentLocation;
            currentLocation = data.currentLocation;

            DutySystem.allLocations = data.locationsAllowed;

            generateDropdownOptions('location-options', selectLocation);
            generateDropdownOptions('duty-location-options', selectDutyLocation);


            document.getElementById('location-selected-text').textContent = currentLocation;
            document.querySelectorAll('#location-options .dropdown-option').forEach(option => {
                option.classList.remove('selected');
                if (option.dataset.value === currentLocation) {
                    option.classList.add('selected');
                }
            });

            DutySystem.setCurrentUser(String(data.playerid));

            DutySystem.currentPage = 'front';
            const frontPage = document.getElementById('front-page');
            const dutyPage = document.getElementById('duty-page');
            const toggleText = document.getElementById('toggle-text');


            frontPage.classList.remove('hidden');
            dutyPage.classList.add('hidden');
            toggleText.textContent = TRANSLATIONS.dutyTimes;

            if (data.config) {
                DutySystem.config.enableRequestBackup = data.config.enableRequestBackup;
                DutySystem.config.enableRequestToGoOnDuty = data.config.enableRequestToGoOnDuty;
                DutySystem.config.enableEditOrders = data.config.enableEditOrders;
                DutySystem.updateEditOrdersButtonVisibility();
            }

            const realPlayers = data.players || {};


            DutySystem.data.players = {};

            Object.keys(realPlayers).forEach(playerId => {
                const realPlayer = realPlayers[playerId];

                DutySystem.data.players[playerId] = realPlayer;
                DutySystem.data.players[playerId].sessions = [realPlayer.sessions];

                const player = DutySystem.data.players[playerId];
                if (player && player.isOnDuty) {
                    const activeSession = player.sessions[0];
                    if (activeSession) {
                        activeSession.serverTimeOnDuty = activeSession.TimeOnDuty;
                    }

                    DutySystem.updateTimeDisplay(playerId);
                    DutySystem.startDutyTimer(playerId);
                }
            });


            DutySystem.init();
            setupButtonSoundEvents();
        } else if (data.action === 'updateOrders') {

            if (data.allLocations) {


                DutySystem.allLocations.forEach(location => {
                    DutySystem.orders.data[location] = data.orders;
                });
                DutySystem.updateNewOrdersIndicator();


                const ordersCard = document.getElementById('orders-card');
                if (ordersCard && !ordersCard.classList.contains('hidden')) {
                    DutySystem.loadOrdersForLocation();
                }
            } else {

                DutySystem.orders.data[data.location] = data.orders;
                DutySystem.updateNewOrdersIndicator();

                const ordersCard = document.getElementById('orders-card');
                if (ordersCard && !ordersCard.classList.contains('hidden') && DutySystem.currentLocation === data.location) {
                    DutySystem.loadOrdersForLocation();
                }
            }
        } else if (data.action === 'translate') {

            TRANSLATIONS = data.translation;
            DutySystem.allLocations.push(...data.allLocations);

            generateDropdownOptions('location-options', selectLocation);
            generateDropdownOptions('duty-location-options', selectDutyLocation);

        }
    });

    document.addEventListener('keydown', function (event) {
        if (event.key === 'Escape' && isOpen) {
            closeUI();
        }
    });

});

