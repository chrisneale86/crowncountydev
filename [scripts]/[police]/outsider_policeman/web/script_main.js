let currentUi = null;
let Config = null;
let DateOfServer = "";
let Year = "1899";


function showWantedUI(show) {
    const wantedContainer = document.getElementById('wantedBoardContainer');
    const dutyWindow = document.querySelector('.window');
    const reportsContainer = document.getElementById('reportsContainer');
    const tutorialContainer = document.getElementById('tutorialContainer');
    const tutorialButton = document.getElementById('tutorialButton');

    if (wantedContainer) {
        wantedContainer.style.display = show ? 'block' : 'none';
    }

    if (dutyWindow) {
        dutyWindow.style.display = 'none';
    }
    if (reportsContainer) {
        reportsContainer.style.display = 'none';
    }

    if (tutorialButton) {
        tutorialButton.remove();
    }

    if (tutorialContainer) {
        tutorialContainer.style.display = 'none';
    }


}

function showReportsUI(show) {
    const reportsContainer = document.getElementById('reportsContainer');
    const dutyWindow = document.querySelector('.window');
    const wantedContainer = document.getElementById('wantedBoardContainer');
    const tutorialContainer = document.getElementById('tutorialContainer');
    const tutorialButton = document.getElementById('tutorialButton');

    if (reportsContainer) {
        reportsContainer.style.display = show ? 'block' : 'none';
    }

    if (dutyWindow) {
        dutyWindow.style.display = 'none';
    }
    if (wantedContainer) {
        wantedContainer.style.display = 'none';
    }

    if (!show) {
        if (tutorialButton) {
            tutorialButton.remove();
        }

        if (tutorialContainer) {
            tutorialContainer.style.display = 'none';
        }
    }

    document.body.style.display = show ? 'block' : 'none';
}

function closeCurrentUi() {
    if (currentUi == 'wanted') {
        showWantedUI(false);
        document.body.style.display = 'none';
        toggleWantedBoardContainer(false);
        document.getElementById('posterContainer').innerHTML = '';
        document.getElementById('wantedBoardHeader').textContent = '';
        document.getElementById('tooltipContainer').innerHTML = '';
        document.getElementById('displayContainer').innerHTML = '';
        $.post(`https://${GetParentResourceName()}/CloseWanted`, JSON.stringify({}));
    } else if (currentUi == 'reports') {
        showReportsUI(false);
        toggleReportsContainer(false);
        $.post(`https://${GetParentResourceName()}/CloseReports`, JSON.stringify({}));
    }
    currentUi = null;
}

document.addEventListener('DOMContentLoaded', function () {

    var searchInput = document.getElementById('searchInput');

    searchInput.addEventListener('input', function () {
        filterPosters(this.value, wantedPersonsGlobal);
    });

    document.addEventListener('keyup', function (event) {
        if (event.key === 'Escape') {
            closeCurrentUi();
        }
    });

    var occurrenceSearch = document.getElementById('searchInputOccurrences');
    occurrenceSearch.addEventListener('input', function () {
        searchOccurrences('searchInputOccurrences', 'occurencesContainer');
    });

    var requestSearch = document.getElementById('searchInputRequests');
    requestSearch.addEventListener('input', function () {
        searchOccurrences('searchInputRequests', 'wantedContainer');
    });

    var reportSearch = document.getElementById('searchInputReport')
    reportSearch.addEventListener('input', function () {
        searchTitles();
    });

    var archivesSearch = document.getElementById('searchInputArchives')

    archivesSearch.addEventListener('input', function () {
        if (this.value === '') {
            const contentDivs = document.querySelectorAll('#archivesContainer .occurrenceEntryContent');
            contentDivs.forEach(div => div.style.display = 'none');
        } else {
            searchArchives();
        }
    });


    var criminalSearch = document.getElementById('searchInputRecords');
    criminalSearch.addEventListener('keydown', function (event) {

        if (event.key === 'Enter') {
            $.post(`https://${GetParentResourceName()}/GetRecords`, JSON.stringify({
                name: this.value.toLowerCase()
            }), function (data) {
                populateRecords(data);
            });
        }
    });

    window.addEventListener('message', function (event) {

        var data = event.data;

        if (data.action == "ShowWanted") {

            currentUi = "wanted"
            var wanted = data.data;
            var headerText = data.header;
            showWantedUI(true);
            document.body.style.display = 'block';
            toggleWantedBoardContainer(true);
            wantedPersonsGlobal = wanted;
            var header = document.getElementById('wantedBoardHeader');
            header.textContent = headerText.toUpperCase();
            Config = data.lang;

            setTimeout(function () {
                displayPosters(wanted)
            }, 1000);
        }

        if (data.action == "HideWanted") {
            closeCurrentUi();
        }

        if (data.action == "ShowReports") {


            currentUi = "reports"
            Year = data.year;
            Config = data.lang;
            var date = document.getElementById('reportDisplayInfo');
            date.innerHTML = `<span class="date-class">${data.info.date}</span>
             <span class="name-class">${data.info.name + " " + data.info.job + " " + data.info.rank}</span>`;

            var badge = document.getElementById('reportDisplayBadge');
            badge.src = `images/${data.info.badge}.png`;
            badge.style.display = 'block';
            setUpButtons(data);
            toggleReportsContainer(true);
            setHeaderLabels(data.info.header, data.info.town);
            const organizedData = organizeByType(data.penalCode);
            createPenalCodeTable(organizedData);
            showReportsUI(true);
            DateOfServer = data.info.date;

            const tutorialSections = data.lang.Tutorial;
            const tutorialContainer = document.getElementById('tutorialContainer');
            tutorialContainer.innerHTML = "";




            Object.keys(tutorialSections).forEach(sectionKey => {
                const section = tutorialSections[sectionKey];
                const sectionTitleDiv = document.createElement('div');
                sectionTitleDiv.classList.add('sectionTitle');
                const sectionTitle = document.createElement('h1');
                sectionTitle.textContent = sectionKey.toLocaleUpperCase();
                sectionTitleDiv.appendChild(sectionTitle);
                tutorialContainer.appendChild(sectionTitleDiv);

                section.forEach(entry => {
                    const entryDiv = document.createElement('div');
                    entryDiv.classList.add('tutorialEntry');

                    const subTitle = document.createElement('h2');
                    subTitle.textContent = entry.SubTitle;
                    entryDiv.appendChild(subTitle);
                    const markedContent = marked.parse(entry.Desc);
                    const desc = document.createElement('p');
                    desc.innerHTML = markedContent;
                    entryDiv.appendChild(desc);

                    tutorialContainer.appendChild(entryDiv);
                });
            });

            openContainer('tutorialContainer');


            const tutorialButton = document.createElement('button');
            tutorialButton.id = 'tutorialButton';
            tutorialButton.textContent = 'Tutorial'; // translate this
            tutorialButton.onclick = () => openContainer('tutorialContainer');
            document.body.appendChild(tutorialButton);
        }

        if (data.action == "HideReports") {
            closeCurrentUi();
        }
    });
});



function saveOccurrenceChanges(container) {
    imageCounter = 0; // Reset the image counter
    const form = document.getElementById(container);
    var title = form.querySelector('#newOccurrenceTitle').value;
    var type = form.querySelector('#newOccurrenceType').value.toUpperCase();
    var description = form.querySelector('#newOccurrenceDescription').value;
    var location = form.querySelector('#newOccurrenceLocation').value;
    var suspectsIds = Array.from(form.querySelector('#suspectIdList').children).map(el => el.textContent);
    var suspects = Array.from(form.querySelector('#suspectList').children).map(el => el.textContent);
    var officers = Array.from(form.querySelector('#officerList').children).map(el => el.textContent);
    var witnesses = Array.from(form.querySelector('#witnessList').children).map(el => el.textContent);
    var charges = Array.from(form.querySelector('#chargeList').children).map(el => el.textContent);
    var images = Array.from(form.querySelector('#imageList').children).map(el => el.dataset.link);

    var id = form.dataset.id;
    var report_date = form.dataset.report_date;
    var postData = {
        id: id,
        title: title,
        description: description,
        type: type ? type : 'GENERAL',
        location: location,
        suspects_ids: suspectsIds,
        officers: officers && officers.length > 0 ? officers : ['None'],
        witnesses: witnesses && witnesses.length > 0 ? witnesses : ['None'],
        suspects: suspects && suspects.length > 0 ? suspects : ['None'],
        charges: charges,
        evidence: images && images.length > 0 ? images : ['None'],
        report_date: report_date,
    };

    var endpoint = id ? '/UpdateOccurrence' : '/InsertOccurrence';

    $.post(`https://${GetParentResourceName()}${endpoint}`, JSON.stringify(postData), function (data) {
        var Data = data;
        populateOccurrences(Data);
    });

    form.style.display = 'none';
    form.reset();
    const reportsContainer = document.getElementById('reportsContainer');
    reportsContainer.style.opacity = '1';
    resetFormAndLists(container);
    openContainer('occurencesContainer');
}


function saveReportChanges(container) {
    imageCounter = 0;
    const form = document.getElementById(container);
    var title = form.querySelector('#newOccurrenceTitle').value;
    var type = form.querySelector('#newOccurrenceType').value.toUpperCase();
    var description = form.querySelector('#newOccurrenceDescription').value;
    var suspects = Array.from(form.querySelector('#suspectList').children).map(el => el.textContent);
    var officers = Array.from(form.querySelector('#officerList').children).map(el => el.textContent);
    var witnesses = Array.from(form.querySelector('#witnessList').children).map(el => el.textContent);
    var charges = Array.from(form.querySelector('#chargeList').children).map(el => el.textContent);
    var images = Array.from(form.querySelector('#imageList').children).map(el => el.dataset.link);

    var id = form.dataset.id;
    var postData = {
        id: id,
        title: title,
        description: description,
        type: type ? type : 'GENERAL',
        officers: officers && officers.length > 0 ? officers : ['None'],
        witnesses: witnesses && witnesses.length > 0 ? witnesses : ['None'],
        suspects: suspects && suspects.length > 0 ? suspects : ['None'],
        charges: charges,
        evidence: images && images.length > 0 ? images : ['None'],

    };

    var endpoint = id ? '/UpdateRequest' : '/InsertRequest';

    $.post(`https://${GetParentResourceName()}${endpoint}`, JSON.stringify(postData), function (data) {
        var Data = data;
        populateWanted(Data);
    });

    form.style.display = 'none';
    form.reset();
    const reportsContainer = document.getElementById('reportsContainer');
    reportsContainer.style.opacity = '1';
    resetFormAndLists(container);
    openContainer('wantedContainer');
}

function saveCaseChanges(container) {
    const form = document.getElementById(container);
    imageCounter = 0;
    var title = form.querySelector('#newOccurrenceTitle').value;
    var type = form.querySelector('#newOccurrenceType').value.toUpperCase();
    var description = form.querySelector('#newOccurrenceDescription').value;
    var suspects = Array.from(form.querySelector('#suspectList').children).map(el => el.textContent);
    var officers = Array.from(form.querySelector('#officerList').children).map(el => el.textContent);
    var witnesses = Array.from(form.querySelector('#witnessList').children).map(el => el.textContent);
    var charges = Array.from(form.querySelector('#chargeList').children).map(el => el.textContent);
    var images = Array.from(form.querySelector('#imageList').children).map(el => el.dataset.link);
    var id = form.dataset.id;
    var postData = {
        id: id,
        title: title,
        description: description,
        type: type ? type : 'GENERAL',
        officers: officers && officers.length > 0 ? officers : ['None'],
        witnesses: witnesses && witnesses.length > 0 ? witnesses : ['None'],
        suspects: suspects && suspects.length > 0 ? suspects : ['None'],
        charges: charges,
        evidence: images && images.length > 0 ? images : ['None'],
    };

    const endpoint = id ? '/UpdateCase' : '/InsertCase';

    $.post(`https://${GetParentResourceName()}${endpoint}`, JSON.stringify(postData), function (data) {
        var Data = data;
        populateInvestigations(Data);
    });

    form.style.display = 'none';
    form.reset();
    const reportsContainer = document.getElementById('reportsContainer');
    reportsContainer.style.opacity = '1';
    resetFormAndLists(container);
    openContainer('investigationsContainer');
}
