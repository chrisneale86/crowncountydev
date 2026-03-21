let imageCounter = 0;
let currentlyOpenContainer = null;


function toggleReportsContainer(show) {
    const reportsContainer = document.getElementById('reportsContainer');
    reportsContainer.style.display = show ? 'flex' : 'none';
    reportsContainer.style.opacity = '1';

    const tutorialContainer = document.getElementById('tutorialContainer');
    tutorialContainer.style.display = 'none';

    const newOccurrenceContainer = document.getElementById('newOccurrenceContainer');
    newOccurrenceContainer.style.display = 'none';

    const recordsContainer = document.getElementById('records-container');
    recordsContainer.style.display = 'none';

    const jailContainer = document.getElementById('jail-container');
    jailContainer.style.display = 'none';

    const newWantedContainer = document.getElementById('newWantedContainer');
    newWantedContainer.style.display = 'none';

    const penalCodeContainer = document.getElementById('penalCodeContainer');
    penalCodeContainer.style.display = 'none';

    const investigationContainer = document.getElementById('investigationContainer');
    investigationContainer.style.display = 'none';

    const searchNameInput = document.getElementById('searchInputRecords');
    if (searchNameInput) {
        searchNameInput.style.display = 'none';
    }
}

function selectButton(clickedButtonId) {
    const buttons = document.querySelectorAll('#buttonsContainer button');
    buttons.forEach(button => {
        button.classList.remove('button-selected');
    });

    const clickedButton = document.getElementById(clickedButtonId);
    if (clickedButton) {
        clickedButton.classList.add('button-selected');
    }
}


function openContainer(containerId, noAccess) {

    var newOccurrenceContainer = document.getElementById('newOccurrenceContainer');
    var wantedContainer = document.getElementById('newWantedContainer');
    var investigationContainer = document.getElementById('investigationContainer');
    if (newOccurrenceContainer.style.display === 'block' || wantedContainer.style.display === 'block' || investigationContainer.style.display === 'block') {
        const reportsContainer = document.getElementById('reportsContainer');
        reportsContainer.style.opacity = '1';
    }

    if (currentlyOpenContainer && currentlyOpenContainer !== containerId) {
        const currentContainer = document.getElementById(currentlyOpenContainer);
        if (currentContainer) {
            currentContainer.style.display = 'none';
        }
    }

    const newContainer = document.getElementById(containerId);
    if (newContainer) {
        newContainer.style.display = 'block';
        currentlyOpenContainer = containerId;
    }

    const searchInputReport = document.getElementById('searchInputReport');
    const searchInputOccurrences = document.getElementById('searchInputOccurrences');
    const searchInputArchives = document.getElementById('searchInputArchives');
    const newOccurrence = document.getElementById('new-occurrence');
    const newRequest = document.getElementById('new-request');
    const newInvestigation = document.getElementById('new-investigation');
    const searchInputRequests = document.getElementById('searchInputRequests');
    const searchNameInput = document.getElementById('searchInputRecords');

    if (noAccess) {
        searchNameInput.style.display = 'none';
        searchInputReport.style.display = 'none';
        searchInputOccurrences.style.display = 'none';
        newOccurrence.style.display = 'none';
        searchInputArchives.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        newInvestigation.style.display = 'none';

    }

    if (containerId === 'penalCodeContainer') {
        searchInputReport.style.display = 'block';
        searchInputOccurrences.style.display = 'none';
        newOccurrence.style.display = 'none';
        searchInputArchives.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        searchNameInput.style.display = 'none';
        newInvestigation.style.display = 'none';

    } else if (containerId === 'occurencesContainer') {
        searchInputOccurrences.style.display = 'block';
        searchInputReport.style.display = 'none';
        newOccurrence.style.display = 'block';
        searchInputArchives.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        searchNameInput.style.display = 'none';
        newInvestigation.style.display = 'none';

    } else if (containerId === 'archivesContainer') {
        searchInputArchives.style.display = 'block';
        searchInputOccurrences.style.display = 'none';
        searchInputReport.style.display = 'none';
        newOccurrence.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        searchNameInput.style.display = 'none';
        newInvestigation.style.display = 'none';

    } else if (containerId === 'wantedContainer') {
        newRequest.style.display = 'block';
        searchInputRequests.style.display = 'block';
        searchInputArchives.style.display = 'none';
        searchInputOccurrences.style.display = 'none';
        searchInputReport.style.display = 'none';
        newOccurrence.style.display = 'none';
        searchNameInput.style.display = 'none';
        newInvestigation.style.display = 'none';

    } else if (containerId === 'records-container') {
        searchNameInput.style.display = 'block';
        searchInputReport.style.display = 'none';
        searchInputOccurrences.style.display = 'none';
        newOccurrence.style.display = 'none';
        searchInputArchives.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        newInvestigation.style.display = 'none';

    } else if (containerId === 'investigationContainer') {
        newInvestigation.style.display = 'block';
        searchInputReport.style.display = 'none';
        searchInputOccurrences.style.display = 'none';
        newOccurrence.style.display = 'none';
        searchInputArchives.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        searchNameInput.style.display = 'none';
    } else {
        searchNameInput.style.display = 'none';
        searchInputReport.style.display = 'none';
        searchInputOccurrences.style.display = 'none';
        newOccurrence.style.display = 'none';
        searchInputArchives.style.display = 'none';
        newRequest.style.display = 'none';
        searchInputRequests.style.display = 'none';
        newInvestigation.style.display = 'none';
    }
}

//BUTTONS
function occurences() {
    selectButton('Occurences');
    $.post(`https://${GetParentResourceName()}/GetOccurences`, JSON.stringify({}), function (data) {
        populateOccurrences(data);
    });
}

function records() {
    selectButton('Records');
    const container = document.getElementById('records-container');
    container.innerHTML = '';
    $.post(`https://${GetParentResourceName()}/CanOpenRecords`, JSON.stringify({}), function (data) {
        if (data.Access) {
            openContainer('records-container');
            const noDataMsg = document.createElement('p');
            noDataMsg.textContent = Config.RecordsContainer.Text;
            noDataMsg.className = 'no-occurrences-message';
            container.appendChild(noDataMsg);

        } else {
            openContainer('records-container', true);
            const noDataMsg = document.createElement('p');
            noDataMsg.textContent = data.Message;
            noDataMsg.className = 'no-occurrences-message';
            container.appendChild(noDataMsg);
        }
    });
}

function jail() {
    $.post(`https://${GetParentResourceName()}/GetJailRecords`, JSON.stringify({}), function (data) {
        populateJail(data);
    });
    selectButton('Jail');
}

function penalcode() {

    $.post(`https://${GetParentResourceName()}/CanOpenPenalCode`, JSON.stringify({}), function (data) {
        if (data.Access) {
            selectButton('PenalCode');
            openContainer('penalCodeContainer');
        } else {
            openContainer('penalCodeContainer', true);
            const container = document.getElementById('penalCodeContainer');
            const noDataMsg = document.createElement('p');
            noDataMsg.textContent = data.Message;
            noDataMsg.className = 'no-occurrences-message';
            container.appendChild(noDataMsg);
        }
    });
}

function archives() {
    $.post(`https://${GetParentResourceName()}/GetArchivedOccurrences`, JSON.stringify({}), function (data) {
        populateArchives(data);
    });
    selectButton('Archives');
}

function investigation() {
    $.post(`https://${GetParentResourceName()}/GetInvestigations`, JSON.stringify({}), function (data) {
        populateInvestigations(data);
    });
    selectButton('Investigation');
}

function wanted() {
    $.post(`https://${GetParentResourceName()}/GetWantedData`, JSON.stringify({}), function (data) {
        populateWanted(data);
    });
    selectButton('Wanted');
}

async function setHeaderLabels(header, headerTown) {
    const headerElement = document.getElementById('reportHeader');
    headerElement.textContent = header.toUpperCase();

    const headerTownElement = document.getElementById('reportHeaderTown');
    const dropdownContainer = document.createElement('div');
    dropdownContainer.className = 'custom-dropdown';

    const selectedValue = document.createElement('div');
    selectedValue.className = 'selected-value';
    selectedValue.textContent = headerTown + " ▼";

    const optionsContainer = document.createElement('div');
    optionsContainer.className = 'options-container';
    optionsContainer.style.position = 'absolute';
    optionsContainer.style.display = 'none';
    optionsContainer.style.zIndex = 9999;

    $.post(`https://${GetParentResourceName()}/GetTownsList`, JSON.stringify({}), function (townsList) {
        for (let i = 0; i < townsList.length; i++) {
            const option = document.createElement('div');
            option.className = 'option';
            option.textContent = townsList[i];

            if (townsList[i] === headerTown) {
                option.classList.add('selected');
            }

            option.onclick = function () {
                $.post(`https://${GetParentResourceName()}/ChangeTown`, JSON.stringify({
                    town: townsList[i]
                }));
                selectedValue.textContent = townsList[i] + " ▼";
                optionsContainer.style.display = 'none';

                const options = optionsContainer.getElementsByClassName('option');
                for (let j = 0; j < options.length; j++) {
                    options[j].classList.remove('selected');
                }
                option.classList.add('selected');
            };

            optionsContainer.appendChild(option);
        }
    });

    selectedValue.onclick = function (e) {
        e.stopPropagation();
        $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
            sound: "sound1"
        }));

        const rect = selectedValue.getBoundingClientRect();
        optionsContainer.style.left = rect.left + "px";
        optionsContainer.style.top = (rect.bottom + window.scrollY) + "px";
        optionsContainer.style.minWidth = rect.width + "px";
        optionsContainer.style.display = optionsContainer.style.display === 'block' ? 'none' : 'block';


        if (!document.body.contains(optionsContainer)) {
            document.body.appendChild(optionsContainer);
        }
    };


    document.addEventListener('click', function (e) {
        if (!optionsContainer.contains(e.target) && e.target !== selectedValue) {
            optionsContainer.style.display = 'none';
        }
    });

    dropdownContainer.appendChild(selectedValue);
    headerTownElement.innerHTML = '';
    headerTownElement.appendChild(dropdownContainer);
}

async function setUpButtons(data) {

    const buttons = document.querySelectorAll('#buttonsContainer button');
    const reportImageMenu = document.getElementById('reportImageMenu');
    const reportImageMenuDescription = document.getElementById('reportImageMenuDescription');
    let hoverTimeout = null;
    let currentHoveredButton = null;

    buttons.forEach(button => {

        const buttonsLabels = data.buttons.MainMenu[button.id].label;
        if (buttonsLabels) {
            button.textContent = buttonsLabels;
        }



        button.addEventListener('mouseenter', () => {
            event.preventDefault();


            if (hoverTimeout) {
                clearTimeout(hoverTimeout);
            }

            currentHoveredButton = button;

            if (!button.classList.contains('button-selected')) {
                hoverTimeout = setTimeout(() => {
                    if (currentHoveredButton === button) {
                        $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                            sound: "sound1"
                        }));
                        const imageSrc = data.buttons.MainMenu[button.id].Img;
                        reportImageMenu.src = `images/${imageSrc}`;
                        reportImageMenu.style.display = 'block';
                        const description = data.buttons.MainMenu[button.id].desc;
                        reportImageMenuDescription.textContent = description;
                        reportImageMenuDescription.style.display = 'block';
                    }
                }, 100);
            }
        });

        button.addEventListener('mouseleave', (event) => {
            event.preventDefault();


            if (hoverTimeout) {
                clearTimeout(hoverTimeout);
                hoverTimeout = null;
            }


            if (currentHoveredButton === button) {
                currentHoveredButton = null;
            }
        });
    });

}

function organizeByType(penalCodes) {
    const organizedData = {};
    penalCodes.forEach(entry => {
        if (!organizedData[entry.type]) {
            organizedData[entry.type] = [];
        }
        organizedData[entry.type].push(entry);
    });
    return organizedData;
}

function toggleEntryContent(headerElement) {
    const content = headerElement.nextElementSibling;
    content.style.display = content.style.display === 'block' ? 'none' : 'block';
}

function searchTitles() {
    const searchValue = document.getElementById('searchInputReport').value.toLowerCase();
    const entryDivs = document.querySelectorAll('#penalCodeContainer .penalCodeEntry');

    entryDivs.forEach(entryDiv => {
        const titleElement = entryDiv.querySelector('.title');
        const titleMatches = titleElement && titleElement.textContent.toLowerCase().includes(searchValue);
        if (titleMatches) {
            entryDiv.style.display = '';
            let parent = entryDiv.parentElement;
            if (parent && parent.classList.contains('typeEntries')) {
                parent.style.display = 'block';
            }
        } else {
            entryDiv.style.display = 'none';
        }
    });
}

function searchOccurrences(input, container) {
    const searchValue = document.getElementById(input).value.toLowerCase();
    const contain = `#${container} .occurrenceCodeEntry`;
    const entryDivs = document.querySelectorAll(contain);

    entryDivs.forEach(entryDiv => {
        const titleElement = entryDiv.querySelector('.title');
        const idMatches = entryDiv.id && entryDiv.id.toLowerCase().includes(searchValue);
        const titleMatches = titleElement && titleElement.textContent.toLowerCase().includes(searchValue);

        if (idMatches || titleMatches) {
            entryDiv.style.display = '';
            let parent = entryDiv.parentElement;
            if (parent && parent.classList.contains('occurrenceEntries')) {
                parent.style.display = 'block';
            }
        } else {
            entryDiv.style.display = 'none';
        }
    });
}

function searchArchives() {
    const searchValue = document.getElementById('searchInputArchives').value.toLowerCase();
    const entryDivs = document.querySelectorAll('#archivesContainer .occurrenceCodeEntry');

    entryDivs.forEach(entryDiv => {
        const titleElement = entryDiv.querySelector('.title');
        const idMatches = entryDiv.getAttribute('data-id') && entryDiv.getAttribute('data-id').toLowerCase().includes(searchValue);
        const titleMatches = titleElement && titleElement.textContent.toLowerCase().includes(searchValue);
        const contentDiv = entryDiv.querySelector('.occurrenceEntryContent');
        entryDiv.style.display = '';

        if (idMatches || titleMatches) {
            contentDiv.style.display = 'block';
        } else {
            contentDiv.style.display = 'none';
        }
    });
}

function processNames(names) {
    if (!Array.isArray(names)) {
        try {
            names = JSON.parse(names);
        } catch (e) {
            return [];
        }
    }
    return names.map(name => `<span class="name-bubble-form">${name}</span>`).join(' ');
}

function resetFormAndLists(id) {
    const form = document.getElementById(id);
    form.reset();
    form.dataset.id = '';
    const container = document.getElementById('occurencesContainer');
    container.innerHTML = '';
    document.getElementById('newOccurrenceTitle').value = '';
    document.getElementById('newOccurrenceLocation').value = '';
    document.getElementById('newOccurrenceType').value = '';
    document.getElementById('newOccurrenceDescription').value = '';
    document.getElementById('suspectList').innerHTML = '';
    document.getElementById('officerList').innerHTML = '';
    document.getElementById('witnessList').innerHTML = '';
    document.getElementById('chargeList').innerHTML = '';
    document.getElementById('suspectIdList').innerHTML = '';
    document.getElementById('imageList').innerHTML = '';
}

/* function generateEvidenceBubbles(evidenceData) {
    return evidenceData.map((imageLink, index) => {
        const bubbleText = `<span class ="entry-occurrence-image" > ${Config.JailContainer.Image + index + 1}</span>`;
        return `<span class="image-bubble" onclick="displayImageModal('${imageLink}')">${bubbleText}</span>`;
    }).join(' ');
} */

function generateEvidenceBubbles(evidenceData) {
    return evidenceData.map((imageLink, index) => {
        const none = imageLink.includes('None');
        const text = none ? "none" : Config.JailContainer.Image + index + 1;
        const bubbleText = `<span class ="entry-occurrence-image" > ${text}</span>`;
        if (none) {
            return `<span class="image-bubble">${bubbleText}</span>`;
        } else {
            return `<span class="image-bubble" onclick="displayImageModal('${imageLink}')">${bubbleText}</span>`;
        }
    }).join(' ');
}

function displayImageModal(imageLink) {
    const modal = document.createElement('div');
    modal.className = 'image-modal';
    modal.innerHTML = `<div class="image-modal-content">
       <span class="close">&times;</span>
     <img src="${imageLink}" class="modal-image">
    </div>`;

    modal.querySelector('.close').addEventListener('click', function () {
        modal.remove();
    });

    document.body.appendChild(modal);
}


function addNames(id, container, Input, list) {
    const form = document.getElementById(id);
    const suspectInput = form.querySelector(`#${container} .${Input}`);
    const suspectName = suspectInput.value.trim();
    if (suspectName) {
        const suspectList = form.querySelector(`#${list}`);
        const nameBubble = document.createElement('span');
        nameBubble.className = 'name-bubble';
        nameBubble.textContent = suspectName;

        nameBubble.addEventListener('click', function () {
            suspectList.removeChild(nameBubble);
        });

        nameBubble.addEventListener('mouseenter', function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
            nameBubble.style.fontSize = '16px';
        });

        nameBubble.addEventListener('mouseleave', function () {
            nameBubble.style.fontSize = '15px';
        });

        suspectList.appendChild(nameBubble);
        suspectInput.value = '';
    }
}


function updateBubbleList(formId, bubbleListId, bubbleList, isImageList = false) {
    const form = document.getElementById(formId);
    const bubbleListElement = form.querySelector(`#${bubbleListId}`);
    bubbleListElement.innerHTML = '';

    bubbleList.forEach((bubble, index) => {
        const nameBubble = document.createElement('span');
        nameBubble.className = 'name-bubble';

        if (isImageList) {

            nameBubble.textContent = `${Config.JailContainer.Image + index + 1}`;
            nameBubble.dataset.link = bubble;


            nameBubble.addEventListener('click', function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                bubbleListElement.removeChild(nameBubble);
            });
        } else {

            nameBubble.textContent = bubble;
            nameBubble.addEventListener('click', function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                bubbleListElement.removeChild(nameBubble);
            });
        }


        nameBubble.addEventListener('mouseenter', function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
            nameBubble.style.fontSize = '16px';
        });
        nameBubble.addEventListener('mouseleave', function () {
            nameBubble.style.fontSize = '15px';
        });

        bubbleListElement.appendChild(nameBubble);
    });
}

function newOccurrence() {
    var newOccurrenceContainer = document.getElementById('newOccurrenceContainer');
    var reportsContainer = document.getElementById('reportsContainer');
    // can make new occurrence
    $.post(`https://${GetParentResourceName()}/CanMakeNewOccurrence`, JSON.stringify({}), function (data) {
        if (data.Access) {
            var header = document.getElementById('newOccurrenceHeader');
            var headerText = Config.OccurrenceContainer.NewOccurrence;
            header.textContent = headerText.toUpperCase();

            if (newOccurrenceContainer.style.display === 'none' || newOccurrenceContainer.style.display === '') {
                reportsContainer.style.opacity = '0.9';
                var button = document.querySelector('.addSuspectIdButton');
                button.style.display = 'block';
                var toolTip = document.querySelector('.tooltip-suspectId');
                toolTip.style.display = 'block';
                // get form 
                var form = document.getElementById('newOccurrenceForm');
                form.style.display = 'block';
                openContainer('newOccurrenceContainer');
            } else {
                reportsContainer.style.opacity = '1';
            }
        }
    });
}

function newRequest() {
    var newOccurrenceContainer = document.getElementById('newWantedContainer');
    var reportsContainer = document.getElementById('reportsContainer');

    $.post(`https://${GetParentResourceName()}/CanMakeNewRequest`, JSON.stringify({}), function (data) {
        if (data.Access) {
            var header = document.getElementById('newRequestHeader');
            var headerText = Config.Headears.NewRequest;
            header.textContent = headerText.toUpperCase();

            if (newOccurrenceContainer.style.display === 'none' || newOccurrenceContainer.style.display === '') {
                var form = document.getElementById('newRequestForm');
                form.style.display = 'block';
                reportsContainer.style.opacity = '0.9';
                openContainer('newWantedContainer');
            } else {
                reportsContainer.style.opacity = '1';
            }
        }
    });
}


function newInvestigation() {
    var newInvestigationContainer = document.getElementById('newInvestigationContainer');
    var reportsContainer = document.getElementById('reportsContainer');

    $.post(`https://${GetParentResourceName()}/CanCreateNewInvestigation`, JSON.stringify({}), function (data) {
        if (data.Access) {
            var header = document.getElementById('newInvestigationHeader');
            var headerText = Config.Headears.NewInvestigation
            header.textContent = headerText.toUpperCase();
            if (newInvestigationContainer.style.display === 'none' || newInvestigationContainer.style.display === '') {
                resetFormAndLists('newCaseForm');
                var button = document.getElementById('newReportConfirm');
                button.textContent = Config.Headears.CreateCase;
                var form = document.getElementById('newCaseForm');
                form.style.display = 'block';
                reportsContainer.style.opacity = '0.9';
                openContainer('newInvestigationContainer');
            } else {
                reportsContainer.style.opacity = '1';
            }
        }
    });
}

function addImage(id) {
    const form = document.getElementById(id);
    const imageLinkInput = form.querySelector('#imagesContainer .imageInput');
    const imageLink = imageLinkInput.value.trim();
    if (imageLink) {
        const imageLinksList = form.querySelector('#imageList');
        const linkBubble = document.createElement('span');
        linkBubble.className = 'name-bubble';
        imageCounter++;
        linkBubble.textContent = `${Config.JailContainer.Image + imageCounter}`;
        linkBubble.dataset.link = imageLink;

        linkBubble.addEventListener('click', function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
            imageCounter--;
            imageLinksList.removeChild(linkBubble);
        });

        linkBubble.addEventListener('mouseenter', function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
            linkBubble.style.fontSize = '16px';
        });

        linkBubble.addEventListener('mouseleave', function () {
            linkBubble.style.fontSize = '15px';
        });

        imageLinksList.appendChild(linkBubble);
        imageLinkInput.value = '';
    }
}


function createPenalCodeTable(organizedData) {
    const container = document.getElementById('penalCodeContainer');
    container.innerHTML = '';

    Object.keys(organizedData).forEach(type => {

        const typeHeader = document.createElement('h3');
        typeHeader.className = 'typeHeader';
        typeHeader.textContent = type;
        container.appendChild(typeHeader);


        const entriesDiv = document.createElement('div');
        entriesDiv.className = 'typeEntries';
        entriesDiv.style.display = 'none';

        organizedData[type].forEach(entry => {
            const entryDiv = document.createElement('div');
            const headerDiv = document.createElement('div');
            const contentDiv = document.createElement('div');
            headerDiv.className = 'entryHeader';
            contentDiv.className = 'entryContent';
            entryDiv.className = 'penalCodeEntry';
            const pc = Config.PenalContainer.PC

            headerDiv.innerHTML = `<span class="title">${entry.title}</span>
            <span class="code"> ${pc + entry.code}</span > `;

            headerDiv.onclick = function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                toggleEntryContent(this);
            };
            const Time = Config.PenalContainer.Time.replace("{days}", entry.time?.Minutes || entry.time.Hours);
            const Fine = Config.PenalContainer.Fine.replace("{amount}", entry.fine.Amount).replace("{days}", entry.fine.DaysToPay);
            const PenalCode = Config.PenalContainer.Penal.replace("{code}", entry.code);
            const timeOrFine = entry.time.Jail.Jail ? `${Time}` : `${Fine}`;
            const information = entry.time.Jail.Jail ? entry.time.Jail.information : entry.fine.information;
            const markedContent = marked.parse(entry.desc);
            const markedContent1 = marked.parse(information);
            const markedContent2 = marked.parse(entry.notes);

            contentDiv.innerHTML = `  <span>${PenalCode}</span>
                <p class="entry-description">${markedContent}</p>
                <br>
                <p class="entry-fine-info">${markedContent1}</p>
                <p class="entry-time-or-fine">⚠️${timeOrFine}</p>
                <br>
                <p class="entry-notes">${markedContent2}</p>`;

            contentDiv.style.display = 'none';

            entryDiv.appendChild(headerDiv);
            entryDiv.appendChild(contentDiv);
            container.appendChild(entryDiv);
            entriesDiv.appendChild(entryDiv);
        });

        container.appendChild(entriesDiv);

        typeHeader.onclick = function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
            entriesDiv.style.display = entriesDiv.style.display === 'block' ? 'none' : 'block';
        };

        typeHeader.addEventListener('mouseenter', function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
        });
    });
}


function populateArchives(Data) {
    const container = document.getElementById('archivesContainer');
    container.innerHTML = '';
    if (Data.Access === false) {
        openContainer('archivesContainer', true);
        const noDataMsg = document.createElement('p');
        noDataMsg.textContent = Data.Message;
        noDataMsg.className = 'no-occurrences-message';
        container.appendChild(noDataMsg);
        return;
    }

    openContainer('archivesContainer');

    if (Data.Access && Data.Results.length > 0) {
        const reversedData = [...Data.Results].reverse();
        reversedData.forEach((entry, index) => {

            const entryDiv = document.createElement('div');
            const headerDiv = document.createElement('div');
            const contentDiv = document.createElement('div');
            headerDiv.className = 'occurrenceEntryHeader';
            contentDiv.className = 'occurrenceEntryContent';
            entryDiv.className = 'occurrenceCodeEntry';
            entryDiv.setAttribute('data-id', entry.id);
            const deleteButton = document.createElement('button');
            deleteButton.textContent = Config.ArchivesContainer.Delete;
            deleteButton.className = 'deleteButton';

            const Case = Config.OccurrenceContainer.Case.replace("{case}", entry.id);
            headerDiv.innerHTML = `<span class="title">${Case} ${entry.title}</span> <span class="code">${entry.report_date}</span>`;
            headerDiv.appendChild(deleteButton);
            deleteButton.onclick = function (event) {
                event.stopPropagation();
                $.post(`https://${GetParentResourceName()}/DeleteArchivedOccurrence`, JSON.stringify({
                    id: entry.id
                }), function (data) {
                    if (data.Access) {
                        entryDiv.remove();
                    };
                });
            };

            const markedContent = marked.parse(entry.report_desc);
            const ReportedBy = Config.OccurrenceContainer.ReportedBy;
            const Officers = Config.OccurrenceContainer.Officers;
            const Witnesses = Config.OccurrenceContainer.Witnesses;
            const Suspects = Config.OccurrenceContainer.Suspects;
            const Charges = Config.OccurrenceContainer.Charges;
            const Evidence = Config.ArchivesContainer.Evidence;
            const Desc = Config.OccurrenceContainer.Desc;
            const Location = Config.OccurrenceContainer.Location.replace("{location}", entry.location);
            const edited = Config.OccurrenceContainer.EditedBy.replace("{name}", entry.edited_by);
            const wasedited = entry.edited === 1 ? edited : '';
            contentDiv.innerHTML = `<div class="info-occurrence-container">
                <span class="entry-edited">${wasedited}</span>
                <div class="entry-occurrence-location"><br>${Location}</div>
                <span class ="reported-by">${ReportedBy}</span><span class ="reported-name">${entry.reported_by}</span>
                <div class="entry-occurrence-info"><span>${Officers}</span>
                    ${processNames(JSON.parse(entry.officers_involved))}
                </div>
                <div class="entry-occurrence-witnesses"><span>${Witnesses}</span>
                    ${processNames(JSON.parse(entry.witnesses || "[]"))}
                </div>
                <div class="entry-occurrence-suspects"> <span>${Suspects}</span>
                    ${processNames(JSON.parse(entry.suspects_involved || "[]"))}
                </div>
                <div class="entry-occurrence-charges"> <span>${Charges}</span>
                    ${processNames(JSON.parse(entry.charges))}
                </div>
                <span class="entry-occurrence-evidence">${Evidence}</span>${generateEvidenceBubbles(JSON.parse(entry.evidence || "[]"))}
                <br>
                <span class ="occurence-desc-label">${Desc}</span>
                <p class="entry-occurrence-description">${markedContent}</p>
                </div>`;

            entryDiv.appendChild(headerDiv);
            entryDiv.appendChild(contentDiv);
            container.appendChild(entryDiv);


            headerDiv.onclick = function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                toggleEntryContent(this);
            };
        });
    }
}

// new occurences function
function populateOccurrences(Data) {
    const container = document.getElementById('occurencesContainer');
    container.innerHTML = '';

    if (Data.Access === false) {
        openContainer('occurencesContainer', true);
        const noDataMsg = document.createElement('p');
        noDataMsg.textContent = Data.Message;
        noDataMsg.className = 'no-occurrences-message';
        container.appendChild(noDataMsg);
        return;
    }

    openContainer('occurencesContainer');

    if (Data.Access && Data.Results.length > 0) {
        const organizedData = organizeByType(Data.Results);

        Object.keys(organizedData).forEach(type => {
            const titleCount = organizedData[type].length;
            const typeHeader = document.createElement('h3');
            typeHeader.className = 'occurrenceHeader';
            typeHeader.textContent = Config.OccurrenceContainer.Types[type] || "does not exist in config";
            typeHeader.innerHTML += ` <span class="occurrenceTitleCount">${titleCount}</span>`;
            container.appendChild(typeHeader);

            const entriesDiv = document.createElement('div');
            entriesDiv.className = 'occurrenceEntries';
            entriesDiv.style.display = 'none';
            const reversedOccurrences = [...organizedData[type]].reverse();
            reversedOccurrences.forEach(entry => {
                const entryDiv = document.createElement('div');
                const headerDiv = document.createElement('div');
                const contentDiv = document.createElement('div');
                headerDiv.className = 'occurrenceEntryHeader';
                contentDiv.className = 'occurrenceEntryContent';
                entryDiv.className = 'occurrenceCodeEntry';
                entryDiv.setAttribute('data-id', entry.id);
                const Case = Config.OccurrenceContainer.Case.replace("{case}", entry.id);
                const archiveButton = document.createElement('button');
                archiveButton.textContent = Config.OccurrenceContainer.Archive;
                archiveButton.className = 'archiveButton';

                const lockerButton = document.createElement('button');
                lockerButton.textContent = Config.OccurrenceContainer.Locker;
                lockerButton.className = 'lockerButton';

                const editButton = document.createElement('button');
                editButton.textContent = Config.OccurrenceContainer.Edit;
                editButton.className = 'editButton';
                headerDiv.innerHTML = `<span class="title">${Case} ${entry.title}</span> <span class="code">${entry.report_date}</span>`;;
                headerDiv.appendChild(archiveButton);
                headerDiv.appendChild(editButton);
                headerDiv.appendChild(lockerButton);

                archiveButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/ArchiveOccurrence`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();

                            const remainingEntries = entriesDiv.querySelectorAll('.occurrenceCodeEntry').length;
                            typeHeader.innerHTML = `${Config.OccurrenceContainer.Types[type]} <span class="occurrenceTitleCount">${remainingEntries}</span>`;

                            if (remainingEntries === 0) {
                                typeHeader.remove();
                                entriesDiv.remove();
                            };
                        };
                    });
                };
                lockerButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/OpenLockers`, JSON.stringify({
                        id: entry.id,
                        name: "occurence"
                    }), function (data) {
                        if (data.Access) {
                            //here we close the container and open the locker
                        }
                    });
                };

                editButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/CanEditOccurrences`, JSON.stringify({}), function (data) {

                        if (!data.Access) {
                            event.preventDefault();
                            return;
                        }

                        const newOccurrenceContainer = document.getElementById('newOccurrenceContainer');
                        const reportsContainer = document.getElementById('reportsContainer');
                        reportsContainer.style.opacity = '0.9';
                        openContainer('newOccurrenceContainer');
                        newOccurrenceContainer.style.display = 'block';
                        const header = document.getElementById('newOccurrenceHeader');
                        const headerText = Config.OccurrenceContainer.NewOccurrence;
                        header.textContent = headerText.toUpperCase();
                        const newOccurrenceForm = document.querySelector('#newOccurrenceForm');
                        newOccurrenceForm.style.display = 'block';
                        const titleInputRequest = newOccurrenceForm.querySelector('.inputTitleTooltip #newOccurrenceTitle');
                        titleInputRequest.value = entry.title;
                        const locationInputRequest = newOccurrenceForm.querySelector('.inputLocationTooltip #newOccurrenceLocation');
                        locationInputRequest.value = entry.location;
                        const typeInputRequest = newOccurrenceForm.querySelector('.inputTypeTooltip #newOccurrenceType');
                        typeInputRequest.value = entry.type;
                        const descriptionInputRequest = newOccurrenceForm.querySelector('#newOccurrenceDescription');
                        descriptionInputRequest.value = entry.report_desc;
                        updateBubbleList('newOccurrenceForm', 'suspectList', JSON.parse(entry.suspects_involved || "[]"));
                        updateBubbleList('newOccurrenceForm', 'officerList', JSON.parse(entry.officers_involved || "[]"));
                        updateBubbleList('newOccurrenceForm', 'witnessList', JSON.parse(entry.witnesses || "[]"));
                        updateBubbleList('newOccurrenceForm', 'chargeList', JSON.parse(entry.charges || "[]"));
                        updateBubbleList('newOccurrenceForm', 'imageList', JSON.parse(entry.evidence || "[]"), true);
                        updateBubbleList('newOccurrenceForm', 'suspectIdList', JSON.parse(entry.suspects_charids || "[]"));
                        var button = newOccurrenceForm.querySelector('.addSuspectIdButton');
                        button.style.display = 'none';
                        var toolTip = newOccurrenceForm.querySelector('.tooltip-suspectId');
                        toolTip.style.display = 'none';
                        document.getElementById('newOccurrenceForm').dataset.id = entry.id;
                        document.getElementById('newOccurrenceForm').dataset.report_date = entry.report_date;
                    });
                };

                headerDiv.onclick = function () {
                    $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                        sound: "sound1"
                    }));
                    toggleEntryContent(this);
                };

                const markedContent = marked.parse(entry.report_desc);
                const ReportedBy = Config.OccurrenceContainer.ReportedBy;
                const Officers = Config.OccurrenceContainer.Officers;
                const Witnesses = Config.OccurrenceContainer.Witnesses;
                const Suspects = Config.OccurrenceContainer.Suspects;
                const Charges = Config.OccurrenceContainer.Charges;
                const Evidence = Config.OccurrenceContainer.Evidence;
                const Desc = Config.OccurrenceContainer.Desc;
                const Location = Config.OccurrenceContainer.Location.replace("{location}", entry.location);
                const edited = Config.OccurrenceContainer.EditedBy.replace("{name}", entry.edited_by);
                const wasedited = entry.edited === 1 ? edited : '';
                contentDiv.innerHTML = `<div class="info-occurrence-container">
                <span class="entry-edited">${wasedited}</span>
                <div class="entry-occurrence-location"><br>${Location}</div>
                <span class ="reported-by">${ReportedBy}</span><span class ="reported-name">${entry.reported_by}</span>
                <div class="entry-occurrence-info"><span>${Officers}</span>
                    ${processNames(JSON.parse(entry.officers_involved))}
                </div>
                <div class="entry-occurrence-witnesses"><span>${Witnesses}</span>
                    ${processNames(JSON.parse(entry.witnesses))}
                </div>
                <div class="entry-occurrence-suspects"> <span>${Suspects}</span>
                    ${processNames(JSON.parse(entry.suspects_involved))}
                </div>
                <div class="entry-occurrence-charges"> <span>${Charges}</span>
                    ${processNames(JSON.parse(entry.charges))}
                </div>
                <span class="entry-occurrence-evidence">${Evidence}</span>${generateEvidenceBubbles(JSON.parse(entry.evidence || "[]"))}
                <br>
                <span class ="occurence-desc-label">${Desc}</span>
                <p class="entry-occurrence-description">${markedContent}</p>
                </div>`;

                contentDiv.style.display = 'none';
                entryDiv.appendChild(headerDiv);
                entryDiv.appendChild(contentDiv);
                container.appendChild(entryDiv);
                entriesDiv.appendChild(entryDiv);
            });

            container.appendChild(entriesDiv);

            typeHeader.onclick = function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                entriesDiv.style.display = entriesDiv.style.display === 'block' ? 'none' : 'block';
            };

            typeHeader.addEventListener('mouseenter', function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
            });
        });


    }
}

function populateWanted(Data) {
    const container = document.getElementById('wantedContainer');
    container.innerHTML = '';

    if (Data.Access === false) {
        openContainer('wantedContainer', true);
        const noDataMsg = document.createElement('p');
        noDataMsg.textContent = Data.Message;
        noDataMsg.className = 'no-occurrences-message';
        container.appendChild(noDataMsg);
        return;
    }

    openContainer('wantedContainer');

    if (Data.Access && Data.Results.length > 0) {
        const organizedData = organizeByType(Data.Results);

        Object.keys(organizedData).forEach(type => {

            const titleCount = organizedData[type].length;
            const typeHeader = document.createElement('h3');
            typeHeader.className = 'occurrenceHeader';
            typeHeader.textContent = Config.WantedContainer.Types[type] || "does not exist in config";
            typeHeader.innerHTML += ` <span class="occurrenceTitleCount">${titleCount}</span>`;
            container.appendChild(typeHeader);

            const entriesDiv = document.createElement('div');
            entriesDiv.className = 'occurrenceEntries';
            entriesDiv.style.display = 'none';
            const reversedOccurrences = [...organizedData[type]].reverse();
            reversedOccurrences.forEach(entry => {

                const entryDiv = document.createElement('div');
                const headerDiv = document.createElement('div');
                const contentDiv = document.createElement('div');
                headerDiv.className = 'occurrenceEntryHeader';
                contentDiv.className = 'occurrenceEntryContent';
                entryDiv.className = 'occurrenceCodeEntry';
                entryDiv.setAttribute('data-id', entry.id);
                const Case = Config.OccurrenceContainer.Case.replace("{case}", entry.id);

                // delete button
                const deleteButton = document.createElement('button');
                deleteButton.textContent = Config.WantedContainer.Delete;
                deleteButton.className = 'archiveButton';
                // edit button 
                const editButton = document.createElement('button');
                editButton.textContent = Config.WantedContainer.Edit;
                editButton.className = 'editButton';
                //accept button
                const acceptButton = document.createElement('button');
                acceptButton.textContent = Config.WantedContainer.Accept;
                acceptButton.className = 'acceptButton';
                // reject button
                const rejectButton = document.createElement('button');
                rejectButton.textContent = Config.WantedContainer.Reject;
                rejectButton.className = 'rejectButton';

                //awaiting
                var wasedited = '&#x1F7E1';
                var accepted = Config.WantedContainer.Awaiting;

                if (entry.accepted === 1) {
                    //accepted
                    wasedited = '&#x1F7E2';
                    acceptButton.style.display = 'none';
                    rejectButton.style.display = 'none';
                    editButton.style.display = 'none';
                    accepted = Config.RequestContainer.AcceptedBy;
                } else if (entry.accepted === 2) {
                    //rejected
                    wasedited = '&#x1F534';
                    rejectButton.style.display = 'none';
                    accepted = Config.RequestContainer.RejectedBy;
                }

                headerDiv.innerHTML = `<span class="title">${Case} ${entry.title}</span> <span class="code">${entry.date}  ${wasedited} </span>`;

                headerDiv.appendChild(deleteButton);
                headerDiv.appendChild(editButton);
                headerDiv.appendChild(acceptButton);
                headerDiv.appendChild(rejectButton);

                deleteButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/DeleteRequest`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();

                            const remainingEntries = entriesDiv.querySelectorAll('.occurrenceCodeEntry').length;
                            typeHeader.innerHTML = `${Config.WantedContainer.Types[type]} <span class="occurrenceTitleCount">${remainingEntries}</span>`;

                            if (remainingEntries === 0) {
                                typeHeader.remove();
                                entriesDiv.remove();
                            };
                        }
                    });
                };
                editButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/CanEditRequest`, JSON.stringify({}), function (data) {

                        if (!data.Access) {
                            event.preventDefault();
                            return;
                        }

                        const newOccurrenceContainer = document.getElementById('newWantedContainer');
                        const reportsContainer = document.getElementById('reportsContainer');
                        reportsContainer.style.opacity = '0.9';
                        openContainer('newWantedContainer');
                        newOccurrenceContainer.style.display = 'block';
                        const header = document.getElementById('newRequestHeader');
                        const headerText = "new request";
                        header.textContent = headerText.toUpperCase();
                        // For #newRequestForm
                        const newRequestForm = document.querySelector('#newRequestForm');
                        newRequestForm.style.display = 'block';
                        const titleInputRequest = newRequestForm.querySelector('.inputTitleTooltip #newOccurrenceTitle');
                        titleInputRequest.value = entry.title;
                        const typeInputRequest = newRequestForm.querySelector('.inputTypeTooltip #newOccurrenceType');
                        typeInputRequest.value = entry.type;
                        const descriptionInputRequest = newRequestForm.querySelector('#newOccurrenceDescription');
                        descriptionInputRequest.value = entry.description;
                        updateBubbleList('newRequestForm', 'suspectList', JSON.parse(entry.suspects || "[]"));
                        updateBubbleList('newRequestForm', 'officerList', JSON.parse(entry.requesting || "[]"));
                        updateBubbleList('newRequestForm', 'witnessList', JSON.parse(entry.witnesses || "[]"));
                        updateBubbleList('newRequestForm', 'chargeList', JSON.parse(entry.charges || "[]"));
                        updateBubbleList('newRequestForm', 'imageList', JSON.parse(entry.evidence || "[]"), true);
                        var button1 = document.querySelector('.addOfficerButton');
                        button1.style.display = 'none';
                        var toolTip1 = document.querySelector('.tooltip-officer');
                        toolTip1.style.display = 'none';
                        document.getElementById('newRequestForm').dataset.id = entry.id;
                    });
                };

                acceptButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/AcceptRequest`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            acceptButton.style.display = 'none';
                            rejectButton.style.display = 'none';
                            editButton.style.display = 'none';
                            wasedited = '&#x1F7E2';
                            headerDiv.querySelector('.code').innerHTML = `${entry.date}  ${wasedited}`;
                            const accepted = Config.RequestContainer.AcceptedBy;
                            const reportedByElement = contentDiv.querySelector('.reported-by');
                            if (reportedByElement) {
                                reportedByElement.innerHTML = `${accepted}`;
                            }
                        }
                    });
                };

                rejectButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/RejectRequest`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            rejectButton.style.display = 'none';
                            wasedited = '&#x1F534';
                            headerDiv.querySelector('.code').innerHTML = `${entry.date}  ${wasedited}`;
                            const rejected = Config.RequestContainer.RejectedBy;
                            const reportedByElement = contentDiv.querySelector('.reported-by');
                            if (reportedByElement) {
                                reportedByElement.innerHTML = `${rejected}`;
                            }
                        }
                    });
                };

                headerDiv.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                        sound: "sound1"
                    }));
                    toggleEntryContent(this);
                };

                const markedContent = marked.parse(entry.description);
                const ReportedBy = accepted;
                const Officers = Config.OccurrenceContainer.Officers;
                const Witnesses = Config.OccurrenceContainer.Witnesses;
                const Suspects = Config.OccurrenceContainer.Suspects;
                const Charges = Config.OccurrenceContainer.Charges;
                const Evidence = Config.OccurrenceContainer.Evidence;
                const Desc = Config.OccurrenceContainer.Desc;
                contentDiv.innerHTML = `<div class="info-occurrence-container">
               
                <span class ="reported-by">${ReportedBy}</span><span class ="reported-name">${entry.accepted_by || ""}</span>
                <div class="entry-occurrence-witnesses"><span>${Witnesses}</span>
                    ${processNames(JSON.parse(entry.witnesses))}
                </div>
                <div class="entry-occurrence-suspects"> <span>${Suspects}</span>
                    ${processNames(JSON.parse(entry.suspects))}
                </div>
                <div class="entry-occurrence-charges"> <span>${Charges}</span>
                    ${processNames(JSON.parse(entry.charges))}
                </div>
                <div class="entry-occurrence-info"><span>${Officers}</span>
                   ${processNames(JSON.parse(entry.requesting))}
                </div>
                <span class="entry-occurrence-evidence">${Evidence}</span>${generateEvidenceBubbles(JSON.parse(entry.evidence || "[]"))}
                <br>
                <span class ="occurence-desc-label">${Desc}</span>
                <p class="entry-occurrence-description">${markedContent}</p>
                </div>`;

                contentDiv.style.display = 'none';
                entryDiv.appendChild(headerDiv);
                entryDiv.appendChild(contentDiv);
                container.appendChild(entryDiv);
                entriesDiv.appendChild(entryDiv);
            });

            container.appendChild(entriesDiv);

            typeHeader.onclick = function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                entriesDiv.style.display = entriesDiv.style.display === 'block' ? 'none' : 'block';
            };

            typeHeader.addEventListener('mouseenter', function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
            });
        });

    }
}


function populateRecords(Data) {
    const container = document.getElementById('records-container');
    container.innerHTML = '';

    if (!Data.Access) {
        openContainer('records-container', true);
        const noDataMsg = document.createElement('p');
        noDataMsg.textContent = Data.Message;
        noDataMsg.className = 'no-occurrences-message';
        container.appendChild(noDataMsg);
        return;
    }
    openContainer('records-container');

    if (Data.Access && Data.Results.length > 0) {
        const record = Data.Results[0];

        const imageDiv = document.createElement('div');
        imageDiv.className = 'record-image';

        if (record.image === null || record.image === undefined) {
            record.image = "images/example.png"; // default image change this to what you want
        }
        imageDiv.innerHTML = `<img src="${record.image}" alt="Criminal Image">`;
        const fieldsDiv = document.createElement('div');
        const name = record.name.split(" ");
        record.forename = name[0];
        record.surname = name[1];
        const forename = Config.RecordsContainer.Forename;
        const surname = Config.RecordsContainer.Surname;
        const nickname = Config.RecordsContainer.NickName;
        const gender = Config.RecordsContainer.Gender;
        const age = Config.RecordsContainer.Age;
        const wanted = Config.RecordsContainer.Wanted;
        const timesJailed = Config.RecordsContainer.TimesJailed;
        const iswanted = Config.RecordsContainer.IsWanted;
        fieldsDiv.className = 'record-fields';
        fieldsDiv.innerHTML = `
            <span class="record-field-label">${forename}</span>
            <span class="record-field-content">${record.forename}</span>
            <br>
            <span class="record-field-label">${surname}</span>
            <span class="record-field-content">${record.surname}</span>
            <br>
            <span class="record-field-label">${nickname}</span>
            <span class="record-field-content">${record.nickname}</span>
            <br>
            <span class="record-field-label">${gender}</span>
            <span class="record-field-content">${record.gender}</span>
            <br>
            <span class="record-field-label">${age}</span>
            <span class="record-field-content">${record.age}</span>
            <br>
            <span class="record-field-label">${wanted}</span>
            <span class="record-field-content">${record.wanted === 0 ? "false" : iswanted}</span>
            <br>
            <span class="record-field-label">${timesJailed}</span>
            <span class="record-field-content">${record.times_jailed}</span>`;


        const updateImageButton = document.createElement('button');
        updateImageButton.textContent = Config.RecordsContainer.UpdateImage;
        updateImageButton.className = 'update-image-btn';


        const input = document.createElement('input');
        input.type = 'text';
        input.placeholder = Config.RecordsContainer.ImagePlaceHolder;
        input.className = 'image-url-input';
        input.style.display = 'none';

        imageDiv.appendChild(updateImageButton);
        imageDiv.appendChild(input);

        updateImageButton.addEventListener('click', function () {
            if (input.style.display === 'inline') {
                updateImageButton.textContent = Config.RecordsContainer.UpdateImage;
                input.style.display = 'none';
                return;
            }
            updateImageButton.textContent = Config.RecordsContainer.Close;
            input.style.display = 'inline';
            input.focus();
        });


        input.addEventListener('keypress', function (event) {
            if (event.key === 'Enter') {
                const newImageUrl = input.value;
                if (newImageUrl) {
                    const testImage = new Image();
                    testImage.onload = function () {

                        if (testImage.width === 400 && testImage.height === 400) {
                            $.post(`https://${GetParentResourceName()}/UpdateRecordImage`, JSON.stringify({
                                id: record.id,
                                image: newImageUrl
                            }), function (data) {
                                if (data.Access) {
                                    imageDiv.querySelector('img').src = newImageUrl;
                                    input.style.display = 'none';
                                    input.value = '';
                                }
                            });
                        } else {
                            input.value = '';
                            input.placeholder = Config.RecordsContainer.InvalidImage;
                        }
                    };

                    testImage.onerror = function () {
                        input.value = '';
                        input.placeholder = Config.RecordsContainer.InvalidUrl;
                    }

                    testImage.src = newImageUrl;
                }
            }
        });


        const recordsDiv = document.createElement('div');
        recordsDiv.className = 'criminal-records';

        const notesDiv = document.createElement('div');
        notesDiv.className = 'notes-div';
        //check if notes exist before parse to marked 
        const markedContent = record.notes ? marked.parse(record.notes) : Config.RecordsContainer.NoNotes;
        notesDiv.innerHTML = markedContent;
        recordsDiv.appendChild(notesDiv);

        const updateNotesButton = document.createElement('button');
        updateNotesButton.textContent = Config.RecordsContainer.UpdateNotes;
        updateNotesButton.className = 'update-notes-btn';

        const saveNotesButton = document.createElement('button');
        saveNotesButton.textContent = Config.RecordsContainer.SaveNotes;
        saveNotesButton.className = 'save-notes-btn';
        saveNotesButton.style.display = 'none';

        const notesInput = document.createElement('textarea');
        notesInput.value = record.notes ? record.notes : Config.RecordsContainer.NoNotes;
        notesInput.className = 'notes-input';
        notesInput.style.display = 'none';


        recordsDiv.appendChild(saveNotesButton);
        recordsDiv.appendChild(updateNotesButton);
        recordsDiv.appendChild(notesInput);

        updateNotesButton.addEventListener('click', function () {

            if (notesInput.style.display === 'inline') {
                updateNotesButton.textContent = Config.RecordsContainer.UpdateNotes;
                notesInput.style.display = 'none';
                if (saveNotesButton.style.display === 'inline') {
                    saveNotesButton.style.display = 'none';
                }
                return;

            }
            saveNotesButton.style.display = 'inline';
            updateNotesButton.textContent = Config.RecordsContainer.Close;
            notesInput.style.display = 'inline';
            notesInput.focus();
        });

        saveNotesButton.addEventListener('click', function () {
            const newNotes = notesInput.value;

            if (newNotes) {
                $.post(`https://${GetParentResourceName()}/UpdateRecordsNote`, JSON.stringify({
                    id: record.id,
                    notes: newNotes
                }), function (data) {
                    if (data.Access) {
                        notesDiv.innerHTML = marked.parse(newNotes);
                        notesInput.style.display = 'none';
                        notesInput.value = '';
                        saveNotesButton.style.display = 'none';
                        updateNotesButton.textContent = Config.RecordsContainer.UpdateNotes;
                    }
                });
            }
        });


        const header = document.createElement('h3');
        header.innerHTML = Config.RecordsContainer.Title;
        recordsDiv.appendChild(header);

        const chargesObject = JSON.parse(record.charges);
        Object.keys(chargesObject).forEach(index => {
            const charge = chargesObject[index];
            const accordionHeader = document.createElement('button');
            accordionHeader.className = 'entries-pannel';
            const deleteButton = document.createElement('button');
            deleteButton.textContent = Config.RecordsContainer.Delete;
            deleteButton.className = 'deleteButton';
            const titleSpan = document.createElement('span');
            const chargetype = Config.RecordsContainer.Types[charge.type] || "doesnt exist in config";
            titleSpan.textContent = `${Config.RecordsContainer.Occurrence} #${index} - ${chargetype} - ${charge.date}`;
            accordionHeader.appendChild(titleSpan);


            deleteButton.onclick = function (event) {
                event.stopPropagation();
                $.post(`https://${GetParentResourceName()}/DeleteRecord`, JSON.stringify({
                    id: record.id,
                    index: index
                }), function (data) {
                    if (data.Access) {
                        accordionHeader.remove();
                        panel.remove();
                    };
                });
            }

            accordionHeader.appendChild(deleteButton);
            const markedContent = marked.parse(charge.desc);
            const panel = document.createElement('div');
            const title = Config.RecordsContainer.ChargeTitle;
            const chargeType = Config.RecordsContainer.ChargeType;
            const chargeDate = Config.RecordsContainer.ChargeDate;
            const chargeCharges = Config.RecordsContainer.ChargeCharge;
            const chargeDesc = Config.RecordsContainer.ChargeDesc;
            panel.className = 'record-panel';
            panel.innerHTML =
                `<div class="info-record-container">
                <span class ="record-label">${title}</span><span class ="record-title">${charge.title || ""}</span>
                <div class="entry-record-type"><span>${chargeType}</span>
                    ${chargetype}
                </div>
                <div class="entry-record-date"> <span>${chargeDate}</span>
                    ${charge.date}
                </div>
                <div class="entry-record-charges"> <span>${chargeCharges}</span>
                    ${processNames(charge.charges)}
                </div>
                <br>
                <span class ="record-desc-label">${chargeDesc}</span>
                <p class="entry-record-description">${markedContent}</p>
                </div>`;

            accordionHeader.onclick = function () {
                this.classList.toggle("active");
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            };

            recordsDiv.appendChild(accordionHeader);
            recordsDiv.appendChild(panel);
        });

        container.appendChild(imageDiv);
        container.appendChild(fieldsDiv);
        container.appendChild(recordsDiv);
    }
}



function populateJail(Data) {
    const container = document.getElementById('jail-container');
    container.innerHTML = '';

    if (Data.Access === false) {
        openContainer('jail-container', true);
        const noDataMsg = document.createElement('p');
        noDataMsg.textContent = Data.Message;
        noDataMsg.className = 'no-occurrences-message';
        container.appendChild(noDataMsg);
        return;
    }

    openContainer('jail-container');

    if (Data.Access && Data.Results.length > 0) {

        const organizedData = organizeByType(Data.Results);

        Object.keys(organizedData).forEach(type => {

            const titleCount = organizedData[type].length;

            const typeHeader = document.createElement('h3');
            typeHeader.className = 'occurrenceHeader';
            typeHeader.textContent = Config.JailContainer.Types[type] || "does not exist in config";
            typeHeader.innerHTML += ` <span class="occurrenceTitleCount">${titleCount}</span>`;
            container.appendChild(typeHeader);

            const entriesDiv = document.createElement('div');
            entriesDiv.className = 'occurrenceEntries';
            entriesDiv.style.display = 'none';
            const reversedOccurrences = [...organizedData[type]].reverse();

            reversedOccurrences.forEach(entry => {

                const entryDiv = document.createElement('div');
                const headerDiv = document.createElement('div');
                const contentDiv = document.createElement('div');
                headerDiv.className = 'occurrenceEntryHeader';
                contentDiv.className = 'occurrenceEntryContent';
                entryDiv.className = 'occurrenceCodeEntry';
                entryDiv.setAttribute('data-id', entry.case);
                const Case = Config.OccurrenceContainer.Case.replace("{case}", entry.case);

                const deleteButton = document.createElement('button');
                deleteButton.textContent = Config.JailContainer.Delete;
                deleteButton.className = 'deleteButton';


                const editButton = document.createElement('button');
                editButton.textContent = Config.JailContainer.AddRemove;
                editButton.className = 'editButton';


                const releaseButton = document.createElement('button');
                releaseButton.textContent = Config.JailContainer.Release;
                releaseButton.className = 'archiveButton';


                const acceptButton = document.createElement('button');
                acceptButton.textContent = Config.JailContainer.Accept;
                acceptButton.className = 'acceptButton';

                const wantedButton = document.createElement('button');
                wantedButton.textContent = Config.JailContainer.SetWanted;
                wantedButton.className = 'wantedButton';


                const jailButton = document.createElement('button');
                jailButton.textContent = Config.JailContainer.Jail;
                jailButton.className = 'jailButton';


                const confineButton = document.createElement('button');
                const confine = Config.JailContainer.Confine;
                const unconfine = Config.JailContainer.UnConfine;
                confineButton.textContent = entry.insolitary === 1 ? unconfine : confine;
                confineButton.className = 'confineButton';

                const lockerButton = document.createElement('button');
                lockerButton.textContent = Config.OccurrenceContainer.Locker;
                lockerButton.className = 'lockerButton';

                //awaiting
                var wasedited = '';
                var accepted = "";
                var extended = "";

                if (type === "JAILED") {
                    wasedited = '&#x1F7E2';
                    deleteButton.style.display = 'none';
                    acceptButton.style.display = 'none';
                    jailButton.style.display = 'none';
                    wantedButton.style.display = 'none';
                    accepted = Config.JailContainer.Currently;
                }

                if (type === "RELEASED") {
                    wasedited = '&#x1F534';
                    acceptButton.style.display = 'none';
                    editButton.style.display = 'none';
                    releaseButton.style.display = 'none';
                    jailButton.style.display = 'none';
                    wantedButton.style.display = 'none';
                    confineButton.style.display = 'none';
                    accepted = Config.JailContainer.HasBeen;
                }

                if (type === "AWAIT") {
                    wasedited = '&#x1F7E1';
                    deleteButton.style.display = 'none';
                    editButton.style.display = 'none';
                    releaseButton.style.display = 'none';
                    jailButton.style.display = 'none';
                    wantedButton.style.display = 'none';
                    confineButton.style.display = 'none';
                    accepted = Config.JailContainer.Awaiting;
                }

                //ESCAPED
                if (type === "ESCAPED") {
                    wasedited = '&#x1F534';
                    deleteButton.style.display = 'none';
                    editButton.style.display = 'none';
                    releaseButton.style.display = 'none';
                    acceptButton.style.display = 'none';
                    confineButton.style.display = 'none';
                    if (entry.setwanted === 1) {
                        wantedButton.style.display = 'none';
                        accepted = Config.JailContainer.Escaped;
                        extended = Config.JailContainer.Placed;
                    } else {
                        jailButton.style.display = 'none';
                        accepted = Config.JailContainer.Escaped;
                        extended = Config.JailContainer.SetWantedBoard;
                    }

                }

                headerDiv.innerHTML = `<span class="title">${Case} ${entry.name}</span> <span class="code">${accepted}  ${wasedited} </span>`;
                headerDiv.appendChild(deleteButton);
                headerDiv.appendChild(editButton);
                headerDiv.appendChild(acceptButton);
                headerDiv.appendChild(releaseButton);
                headerDiv.appendChild(wantedButton);
                headerDiv.appendChild(jailButton);
                headerDiv.appendChild(confineButton);
                headerDiv.appendChild(lockerButton);

                deleteButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/DeleteJailRecord`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();
                            const remainingEntries = entriesDiv.querySelectorAll('.occurrenceCodeEntry').length;
                            if (remainingEntries === 0) {
                                typeHeader.remove();
                            }
                        }
                    });
                };

                lockerButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/OpenLockers`, JSON.stringify({
                        id: entry.id,
                        name: "jail"
                    }), function (data) {
                        if (data.Access) {
                            //here we close the container and open the locker
                        }
                    });
                };
                jailButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/AddBackToJail`, JSON.stringify({
                        id: entry.id,
                        charid: entry.charid
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();

                            const remainingEntries = entriesDiv.querySelectorAll('.occurrenceCodeEntry').length;
                            if (remainingEntries === 0) {
                                typeHeader.remove();
                            }
                        }
                    });
                };

                confineButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/ConfinePlayer`, JSON.stringify({
                        id: entry.id,
                        charid: entry.charid,
                        confine: entry.insolitary
                    }), function (data) {
                        if (data.Access) {
                            entry.insolitary = entry.insolitary === 1 ? 0 : 1;
                            confineButton.textContent = entry.insolitary === 1 ? unconfine : confine;
                        }

                    });
                };

                wantedButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/SetWanted`, JSON.stringify({
                        id: entry.id,
                        charid: entry.charid
                    }), function (data) {
                        if (data.Access) {
                            wantedButton.style.display = 'none';
                        }
                    });
                };

                editButton.onclick = function (event) {

                    event.stopPropagation();
                    if (!editButton.classList.contains('editing')) {
                        editButton.classList.add('editing');

                        const input = document.createElement('input');
                        input.className = 'edit-time-input';
                        input.type = 'number';
                        input.placeholder = Config.JailContainer.PlaceHolder;
                        input.focus();
                        headerDiv.appendChild(input);

                        input.addEventListener('click', function (event) {
                            event.stopPropagation();
                        });

                        input.addEventListener('keypress', function (event) {
                            if (event.key === 'Enter') {
                                event.preventDefault();
                                var newTime = input.value;

                                if (newTime === "") {
                                    input.remove();
                                    editButton.classList.remove('editing');
                                    return;
                                }

                                $.post(`https://${GetParentResourceName()}/UpdateTimeServed`, JSON.stringify({
                                    id: entry.id,
                                    time: newTime
                                }), function (data) {
                                    if (data.Access) {
                                        entry.release = data.Release
                                        entry.display = data.Display
                                        entry.time_facing = data.Time;

                                        const content = contentDiv.querySelector('.entry-occurrence-witnesses');
                                        if (content) {
                                            content.innerHTML = `<span>${Config.JailContainer.ReleaseDate}</span>${entry.display}`;
                                        }
                                        const content2 = contentDiv.querySelector('.entry-occurrence-info');

                                        if (content2) {
                                            content2.innerHTML = `<span>${Config.JailContainer.TimeToServer}</span>${entry.time_facing}`;
                                        }

                                        editButton.classList.remove('editing');
                                        input.remove();
                                    } else {
                                        input.remove();
                                        editButton.classList.remove('editing');
                                    }
                                });
                            }
                        });
                    } else {
                        editButton.classList.remove('editing');
                        const input = headerDiv.querySelector('.edit-time-input');
                        input.remove();
                    }
                };


                acceptButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/AcceptJailRecord`, JSON.stringify({
                        id: entry.id,
                        charid: entry.charid,
                        time_facing: entry.time_facing
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();
                            const remainingEntries = entriesDiv.querySelectorAll('.occurrenceCodeEntry').length;
                            if (remainingEntries === 0) {
                                typeHeader.remove();
                            }
                        }
                    });
                };

                releaseButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/ReleaseJailRecord`, JSON.stringify({
                        id: entry.id,
                        charid: entry.charid
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();
                            const remainingEntries = entriesDiv.querySelectorAll('.occurrenceCodeEntry').length;
                            if (remainingEntries === 0) {
                                typeHeader.remove();
                            }
                        }
                    });
                };

                headerDiv.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                        sound: "sound1"
                    }));
                    toggleEntryContent(this);
                };


                const Title = accepted + extended;
                contentDiv.innerHTML = GetContainerDescription(type, entry, Title);
                contentDiv.style.display = 'none';
                entryDiv.appendChild(headerDiv);
                entryDiv.appendChild(contentDiv);
                container.appendChild(entryDiv);
                entriesDiv.appendChild(entryDiv);

            });

            container.appendChild(entriesDiv);

            typeHeader.onclick = function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                entriesDiv.style.display = entriesDiv.style.display === 'block' ? 'none' : 'block';
            };

            typeHeader.addEventListener('mouseenter', function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
            });
        });

    }
}

function modifyYear(dateString) {
    if (!dateString) return dateString;

    // Handle different date formats
    if (dateString.includes('-')) {
        // Format: 2025-04-13 or 2025-04-13 15:08:11
        return dateString.replace(/^\d{4}/, Year);
    } else if (dateString.includes('/')) {
        // Format: 2025/04/13
        return dateString.replace(/^\d{4}/, Year);
    }

    return dateString;
}

function GetContainerDescription(type, entry, Title) {
    let Description = "";

    entry.time_served = Math.floor(entry.time_served * 10) / 10;
    const name = Config.JailContainer.Name;
    const time_facing = Config.JailContainer.TimeFacing;
    const cell = Config.JailContainer.Cell;
    const time_served = Config.JailContainer.TimeServed;
    const release = Config.JailContainer.ReleaseDate;
    const jailed_by = Config.JailContainer.JailedBy;
    const jailed_date = Config.JailContainer.JailedDate;
    const insolitary = Config.JailContainer.InSolitary;
    const yes = Config.JailContainer.Yes;
    const no = Config.JailContainer.No;
    entry.time_servedMinutes = !entry.time_servedMinutes ? 0 : entry.time_servedMinutes;

    const displayRelease = modifyYear(entry.release);
    const displayJailedDate = modifyYear(entry.jailed_date);

    if (type === "JAILED") {
        let color = "white";
        let text = "";
        entry.release = entry.release.replace(/-/g, "/");

        if (entry.time_served >= entry.time_facing) {
            color = "green";
            text = Config.JailContainer.TimesUp;
        }

        Description = `<div class="info-occurrence-container"> <span class ="reported-by">${Title}</span>
        <br>
        <span class ="reported-by">${name}</span><span class ="reported-name">${entry.name}</span>
        <br>
        <span class ="entry-occurrence-witnesses">${time_facing}</span><span class ="reported-name">${entry.time_facing + " H"}</span>
        <br>
        <span class ="reported-by">${cell}</span><span class ="reported-name">${"# " + entry.cell}</span>
        <br>
        <span class ="reported-by">${time_served}</span><span class ="reported-name">${entry.time_served + " H" + entry.time_servedMinutes + " M"}</span >
        <br>
            <span class="reported-by">${release}</span><span class="reported-name">${displayRelease}<span style="color:${color}"> ${text}</span></span>
            <br>
                <span class="reported-by">${jailed_by}</span><span class="reported-name">${entry.accepted_by || "none"}</span>
                <br>
                    <span class="reported-by">${jailed_date}</span><span class="reported-name">${displayJailedDate || ""}</span>
                    <br>
                        <span class="reported-by">${insolitary}</span><span class="reported-name">${entry.insolitary === 1 ? yes : no}</span>
                    </div>`;

    } else if (type === "RELEASED") {
        Description = `<div class="info-occurrence-container"> <span class ="reported-by">${Title}</span>
        <br>
        <span class ="reported-by">${name}</span><span class ="reported-name">${entry.name}</span>
        <br>
        <span class ="entry-occurrence-witnesses">${time_facing}</span><span class ="reported-name">${entry.time_facing + " H"}</span>
        <br>
        <span class ="reported-by">${release}</span><span class ="reported-name">${displayRelease}</span>
        <br>
        <span class ="reported-by">${time_served}</span><span class ="reported-name">${entry.time_served + " H " + entry.time_servedMinutes + " M "}</span >
        <br>
        <span class ="reported-by">${jailed_by}</span><span class ="reported-name">${entry.released_by || "none"}</span>
        <br>
        <span class ="reported-by">${jailed_date}</span><span class ="reported-name">${displayJailedDate || ""}</span>
        </div>`;
    } else if (type === "AWAIT") {
        Description = `<div class="info-occurrence-container"> <span class ="reported-by">${Title}</span>
        <br>
        <span class ="reported-by">${name}</span><span class ="reported-name">${entry.name}</span>
        <br>
        <span class ="entry-occurrence-witnesses">${time_facing}</span><span class ="reported-name">${entry.time_facing + " H"}</span>
        <br>
        <span class ="reported-by">${release}</span><span class ="reported-name">${displayRelease}</span>
        </div>`;
    } else if (type === "ESCAPED") {
        Description = `<div class="info-occurrence-container"> <span class ="reported-by">${Title}</span>
        <br>
        <span class ="reported-by">${name}</span><span class ="reported-name">${entry.name}</span>
        <br>
        <span class ="entry-occurrence-witnesses">${time_facing}</span><span class ="reported-name">${entry.time_facing + " H"}</span>
        <br>
        <span class ="reported-by">${release}</span><span class ="reported-name">${displayRelease}</span>
        <br>
        <span class ="reported-by">${time_served}</span><span class ="reported-name">${entry.time_served + " H" + entry.time_servedMinutes + " M"}</span >
        <br>
        <span class ="reported-by">${jailed_by}</span><span class ="reported-name">${entry.released_by || "none"}</span>
        <br>
        <span class ="reported-by">${jailed_date}</span><span class ="reported-name">${displayJailedDate || ""}</span>
        </div>`;
    };

    return Description;
};


//INVESTIGATIONS

function populateInvestigations(Data) {
    const container = document.getElementById('investigationContainer');
    container.innerHTML = '';

    if (!Data.Access) {
        openContainer('investigationContainer', true);
        const noDataMsg = document.createElement('p');
        noDataMsg.textContent = Data.Message;
        noDataMsg.className = 'no-occurrences-message';
        container.appendChild(noDataMsg);
        const newInvestigation = document.getElementById('new-investigation');
        newInvestigation.style.display = 'block';
        return;
    }
    openContainer('investigationContainer');

    const deleted = Config.JailContainer.Delete;
    const edit = Config.JailContainer.Edit;
    const accept = Config.JailContainer.Accept;
    const reject = Config.JailContainer.Reject;
    const awaiting = Config.JailContainer.Awaiting;
    const savecase = Config.JailContainer.SaveCase;

    if (Data.Access && Data.Results.length > 0) {
        const organizedData = organizeByType(Data.Results);

        Object.keys(organizedData).forEach(type => {

            const titleCount = organizedData[type].length;
            const typeHeader = document.createElement('h3');
            typeHeader.className = 'occurrenceHeader';
            typeHeader.textContent = Config.InvestigationContainer.Types[type] || "does not exist in config";
            typeHeader.innerHTML += ` <span class="occurrenceTitleCount">${titleCount}</span>`;
            container.appendChild(typeHeader);

            const entriesDiv = document.createElement('div');
            entriesDiv.className = 'occurrenceEntries';
            entriesDiv.style.display = 'none';
            const reversedOccurrences = [...organizedData[type]].reverse();
            reversedOccurrences.forEach(entry => {

                const entryDiv = document.createElement('div');
                const headerDiv = document.createElement('div');
                const contentDiv = document.createElement('div');
                headerDiv.className = 'occurrenceEntryHeader';
                contentDiv.className = 'occurrenceEntryContent';
                entryDiv.className = 'occurrenceCodeEntry';
                entryDiv.setAttribute('data-id', entry.id);
                const Case = Config.OccurrenceContainer.Case.replace("{case}", entry.id);

                // delete button
                const deleteButton = document.createElement('button');
                deleteButton.textContent = deleted;
                deleteButton.className = 'archiveButton';
                // edit button 
                const editButton = document.createElement('button');
                editButton.textContent = edit;
                editButton.className = 'editButton';
                //accept button
                const acceptButton = document.createElement('button');
                acceptButton.textContent = accept;
                acceptButton.className = 'acceptButton';
                // reject button
                const rejectButton = document.createElement('button');
                rejectButton.textContent = reject;
                rejectButton.className = 'rejectButton';

                // locker button
                const lockerButton = document.createElement('button');
                lockerButton.textContent = Config.OccurrenceContainer.Locker;
                lockerButton.className = 'lockerButton';

                //awaiting
                var wasedited = '&#x1F7E1';
                var accepted = awaiting;

                if (entry.accepted === 1) {
                    //accepted
                    wasedited = '&#x1F7E2';
                    acceptButton.style.display = 'none';
                    rejectButton.style.display = 'none';
                    editButton.style.display = 'none';
                    accepted = Config.RequestContainer.AcceptedBy;
                } else if (entry.accepted === 2) {
                    //rejected
                    wasedited = '&#x1F534';
                    rejectButton.style.display = 'none';
                    accepted = Config.RequestContainer.RejectedBy;
                }

                headerDiv.innerHTML = `<span class="title">${Case} ${entry.title}</span> <span class="code">${entry.date}  ${wasedited} </span>`;

                headerDiv.appendChild(deleteButton);
                headerDiv.appendChild(editButton);
                headerDiv.appendChild(acceptButton);
                headerDiv.appendChild(rejectButton);
                headerDiv.appendChild(lockerButton);

                deleteButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/DeleteInvestigation`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            entryDiv.remove();
                            const howMany = document.querySelectorAll('.occurrenceCodeEntry').length;
                            if (howMany === 0) {
                                typeHeader.remove();
                            }
                        }
                    });
                };

                lockerButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/OpenLockers`, JSON.stringify({
                        id: entry.id,
                        name: "Investigation"
                    }), function (data) {
                        if (data.Access) {
                            //here we close the container and open the locker
                        }
                    });
                };


                editButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/CanEditInvestigation`, JSON.stringify({}), function (data) {

                        if (!data.Access) {
                            event.preventDefault();
                            return;
                        }

                        const newOccurrenceContainer = document.getElementById('newInvestigationContainer');
                        const reportsContainer = document.getElementById('reportsContainer');
                        reportsContainer.style.opacity = '0.9';
                        openContainer('newInvestigationContainer');
                        newOccurrenceContainer.style.display = 'block';
                        const header = document.getElementById('newInvestigationHeader');
                        const headerText = Config.Headears.UpdateInvestigation;
                        header.textContent = headerText.toUpperCase();
                        var button = document.getElementById('newReportConfirm');
                        button.textContent = savecase;
                        const newCaseForm = document.querySelector('#newCaseForm');
                        newCaseForm.style.display = 'block';
                        const titleInputRequest = newCaseForm.querySelector('.inputTitleTooltip #newOccurrenceTitle');
                        titleInputRequest.value = entry.title;
                        const typeInputRequest = newCaseForm.querySelector('.inputTypeTooltip #newOccurrenceType');
                        typeInputRequest.value = entry.type;
                        const descriptionInputRequest = newCaseForm.querySelector('#newOccurrenceDescription');
                        descriptionInputRequest.value = entry.description;
                        updateBubbleList('newCaseForm', 'suspectList', JSON.parse(entry.suspects || "[]"));
                        updateBubbleList('newCaseForm', 'officerList', JSON.parse(entry.detectives || "[]"));
                        updateBubbleList('newCaseForm', 'witnessList', JSON.parse(entry.witnesses || "[]"));
                        updateBubbleList('newCaseForm', 'chargeList', JSON.parse(entry.charges || "[]"));
                        updateBubbleList('newCaseForm', 'imageList', JSON.parse(entry.evidence || "[]"), true);
                        var button1 = document.querySelector('.addOfficerButton');
                        button1.style.display = 'none';
                        var toolTip1 = document.querySelector('.tooltip-officer');
                        toolTip1.style.display = 'none';
                        document.getElementById('newCaseForm').dataset.id = entry.id;
                    });
                };

                acceptButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/AcceptInvestigation`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            acceptButton.style.display = 'none';
                            rejectButton.style.display = 'none';
                            editButton.style.display = 'none';
                            wasedited = '&#x1F7E2';
                            headerDiv.querySelector('.code').innerHTML = `${entry.date}  ${wasedited}`;
                            const accepted = Config.RequestContainer.AcceptedBy;
                            const reportedByElement = contentDiv.querySelector('.reported-by');
                            if (reportedByElement) {
                                reportedByElement.innerHTML = `${accepted}`;
                            }
                        }
                    });
                };

                rejectButton.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/RejectInvestigation`, JSON.stringify({
                        id: entry.id
                    }), function (data) {
                        if (data.Access) {
                            rejectButton.style.display = 'none';
                            wasedited = '&#x1F534';
                            headerDiv.querySelector('.code').innerHTML = `${entry.date}  ${wasedited}`;
                            const rejected = Config.RequestContainer.RejectedBy;
                            const reportedByElement = contentDiv.querySelector('.reported-by');
                            if (reportedByElement) {
                                reportedByElement.innerHTML = `${rejected}`;
                            }
                        }
                    });
                };

                headerDiv.onclick = function (event) {
                    event.stopPropagation();
                    $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                        sound: "sound1"
                    }));
                    toggleEntryContent(this);
                };

                const ReportedBy = accepted;
                const Officers = Config.OccurrenceContainer.Officers;
                const Witnesses = Config.OccurrenceContainer.Witnesses;
                const Suspects = Config.OccurrenceContainer.Suspects;
                const Charges = Config.OccurrenceContainer.Charges;
                const Evidence = Config.OccurrenceContainer.Evidence;
                const Desc = Config.OccurrenceContainer.Desc;
                const markedContent = marked.parse(entry.description);
                contentDiv.innerHTML = `<div class="info-occurrence-container">
                        <span class="reported-by">${ReportedBy}</span><span class="reported-name">${entry.accepted_by || ""}</span>
                        <div class="entry-occurrence-witnesses"><span>${Witnesses}</span>
                            ${processNames(JSON.parse(entry.witnesses))}
                        </div>
                        <div class="entry-occurrence-suspects"> <span>${Suspects}</span>
                            ${processNames(JSON.parse(entry.suspects))}
                        </div>
                        <div class="entry-occurrence-charges"> <span>${Charges}</span>
                            ${processNames(JSON.parse(entry.charges))}
                        </div>
                        <div class="entry-occurrence-info"><span>${Officers}</span>
                            ${processNames(JSON.parse(entry.detectives))}
                        </div>
                        <span class="entry-occurrence-evidence">${Evidence}</span>${generateEvidenceBubbles(JSON.parse(entry.evidence || "[]"))}
                        <br>
                            <span class="occurence-desc-label">${Desc}</span>
                            <p class="entry-occurrence-description">${markedContent}</p>
                    </div>`;

                contentDiv.style.display = 'none';
                entryDiv.appendChild(headerDiv);
                entryDiv.appendChild(contentDiv);
                container.appendChild(entryDiv);
                entriesDiv.appendChild(entryDiv);
            });

            container.appendChild(entriesDiv);

            typeHeader.onclick = function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
                entriesDiv.style.display = entriesDiv.style.display === 'block' ? 'none' : 'block';
            };

            typeHeader.addEventListener('mouseenter', function () {
                $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                    sound: "sound1"
                }));
            });

        });
    }
}