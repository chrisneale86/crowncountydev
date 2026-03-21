var wantedPersonsGlobal = [];

function filterPosters(query, wantedPersons) {
    var filteredPersons = wantedPersons.filter(function (person) {
        return person.name.toLowerCase().includes(query.toLowerCase());
    });
    displayPosters(filteredPersons);
}

function displayPosters(wantedPersons) {
    var posterContainer = document.getElementById('posterContainer');
    posterContainer.innerHTML = '';

    wantedPersons.forEach(function (person) {
        var wantedBoard = document.createElement('div');
        wantedBoard.className = 'wantedBoard';

        var backgroundImageUrl = `images/${person.poster_type}`;
        wantedBoard.style.backgroundImage = `url('${backgroundImageUrl}')`;

        wantedBoard.innerHTML = `<img src="${person.image}" alt="Image of ${person.name}"> <div class="description">${person.description}</div>`;
        posterContainer.appendChild(wantedBoard);

        wantedBoard.addEventListener('mouseenter', function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));
        });

        wantedBoard.onclick = function () {
            $.post(`https://${GetParentResourceName()}/PlaySound`, JSON.stringify({
                sound: "sound1"
            }));

            var imageUrl = this.querySelector('img').src;
            var displayContainer = document.getElementById('displayContainer');
            if (!displayContainer) {
                displayContainer = document.createElement('div');
                displayContainer.id = 'displayContainer';
                document.body.appendChild(displayContainer);
            }
            var title = person.rewardTitle;
            var description = person.description;
            var reward = person.reward;
            var name = person.name;
            var gender = person.gender;
            var date = person.date_posted;
            var by = person.posted_by;
            const Name = Config.WantedBoard.Name;
            const Gender = Config.WantedBoard.Gender;
            const Date = Config.WantedBoard.Date;
            var tooltipContent = `<div class="tooltip">
            <name>${Name + name}</name>
            <gender>${Gender + gender}</gender>
            <date>${Date + date}</date>
            <p>${description}</p><reward>${person.rewardDesc.toUpperCase()}</reward>
            <titleReward>${title}</titleReward><amount>${reward + "$"}</amount><postedBy>${by}</postedBy>
            </div>`;
            var tooltipContainer = document.getElementById('tooltipContainer');
            tooltipContainer.innerHTML = tooltipContent;
            tooltipContainer.style.display = 'block';

            var image = new Image();
            image.src = imageUrl;
            image.style.maxWidth = '100%';
            image.alt = 'NON EXISTENT';
            image.onerror = function () {
                displayContainer.innerHTML = '<p>not available</p>';
            };

            displayContainer.innerHTML = '';
            displayContainer.appendChild(image);
        };

    });
}

function toggleWantedBoardContainer(show) {
    const wantedBoardContainer = document.getElementById('wantedBoardContainer');
    wantedBoardContainer.style.display = show ? 'flex' : 'none';
}

