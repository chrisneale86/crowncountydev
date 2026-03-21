let job
let bounties
let idoftable
$(document).ready(function(){
  
    $(".container").hide();
    $("#container").hide();
    $(".paper").hide(); 
    $("#container-landing").hide(); 
    window.addEventListener('message', function(event){
        let data = event.data;
        job = data.job
        bounties = data.bounties
        
        if (data.action == "show") {
            $(".container").show();
            $("#container").show();
            $("#container-landing").show(); 
            $('.grid-container').html('')
            for (const [ind, tab] of Object.entries(bounties)) {
                $('.grid-container').append(
                    `<button
                    id = "viewselection2"
                    onclick='showimage(${ind})'
                    <div>
                    <li>
                    ${tab.namexyz}
                    </li>
                    </div>
                    </button>`
                );
            }
        }

    });
});



document.onkeyup = function (data) {
    if ((data.which == 8) || (data.which == 27)) { // backspace key
        $(".container").hide();
        $("#container").hide();
        $("#container-landing").hide(); 
        $(".paper").hide(); 
        $.post('http://syn_bountyhunting/closeui', JSON.stringify({}));
    }
};



function showimage(name) {
    idoftable = bounties[name].id 
    $(".container").hide();
    $(".paper").show(); 
    let image = bounties[name].info[0].img
    let money = bounties[name].info[0].fine
    let namez = bounties[name].namexyz
    let desc = bounties[name].info[0].desc
    if (image == ""){
        var img = document.getElementById("text2");
        img.src='img/sel.png';
        img.style="display: show;";
    } else  {
        var img = document.getElementById("text2");
        img.src=`${image}`;
        img.style="display: show;";
    }
    var cash = document.getElementById("cash");
    cash.style="display: show;";
    cash.innerHTML = `$ ${money}`;
    var nam = document.getElementById("names");
    nam.style="display: show;";
    nam.innerHTML = `${namez}`;
    var nam = document.getElementById("desc");
    nam.style="display: show;";
    nam.innerHTML = `${desc}`;
    if (job == true){
        var button = document.getElementById("mission");
        button.style="display: show;";
    }
    var button = document.getElementById("back");
        button.style="display: show;";
}

$("#back").click(function (event) {
    $(".container").show(); 
    $(".paper").hide(); 
});




$("#mission").click(function (event) {
    $(".container").hide();
    $(".paper").hide();
    $.post('http://syn_bountyhunting/missionbounty', JSON.stringify({id:idoftable}));
});

