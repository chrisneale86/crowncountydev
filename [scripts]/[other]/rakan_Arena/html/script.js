document.addEventListener("DOMContentLoaded", () => {
  const menu = document.getElementById("menu");
  const timer = document.getElementById("timer");
  if (menu) menu.style.display = "none";
  if (timer) timer.style.display = "none";
});

window.addEventListener("message", function (event) {
  const menu = document.getElementById("menu");
  const timer = document.getElementById("timer");
  const timeSpan = document.getElementById("time");

  // menu
  if (event.data.type === "openArenaMenu" && menu) {
    menu.style.display = "block";
  }
  if (event.data.type === "closeArenaMenu" && menu) {
    menu.style.display = "none";
  }

  // timer
  if (event.data.type === "showTimer" && timer && timeSpan) {
    timer.style.display = "block";
    timeSpan.innerText = event.data.time;
  }
  if (event.data.type === "hideTimer" && timer) {
    timer.style.display = "none";
  }

  // KD HUD
  if (event.data.type === "updateKD") {
    const hud = document.getElementById("kd-hud");
    if (hud) {
      hud.style.display = "flex";
      document.getElementById("hud-kills").innerText = event.data.kills;
      document.getElementById("hud-deaths").innerText = event.data.deaths;
      document.getElementById("hud-kdr").innerText = event.data.kdr;
    }
  }
  if (event.data.type === "hideKD") {
    const hud = document.getElementById("kd-hud");
    if (hud) hud.style.display = "none";
  }

  // TEAM
 if (event.data.type === "setTeam") {
  const teamHud = document.getElementById("team-hud");
  const teamBox = document.getElementById("team-box");
  if (teamHud && teamBox) {
    teamBox.textContent = `Team ${event.data.team}`;
    teamBox.classList.remove("team1", "team2");

    const t = String(event.data.team);
    if (t === "1") {
      teamBox.classList.add("team1");
    } else {
      teamBox.classList.add("team2");
    }

    teamHud.style.display = "flex";
  }
}

  // =====================
  // LEADERBOARD PART
  // =====================

  // show
  if (event.data.type === "showLeaderboard") {
    const lb = document.getElementById("leaderboard");
    if (lb) lb.style.display = "block";
  }

  // hide
  if (event.data.type === "hideLeaderboard") {
    const lb = document.getElementById("leaderboard");
    if (lb) lb.style.display = "none";
  }

  if (event.data.type === "hideTeam") {
  const teamHud = document.getElementById("team-hud");
  if (teamHud) {
    teamHud.style.display = "none";
  }
}

  // update content
  if (event.data.type === "updateLeaderboard") {
    const lb = document.getElementById("leaderboard");
    if (!lb) return;

    let html = "<h3>Top Players</h3>";
    if (event.data.players && event.data.players.length > 0) {
      event.data.players.forEach((p, i) => {
        html += `<div class="lb-item"><span>${i + 1}. ${p.name}</span><span>${p.kills}</span></div>`;
      });
    } else {
      html += `<div class="lb-item"><span>No data</span></div>`;
    }
    lb.innerHTML = html;
  }
});

function enterArena() {
  const mode = document.getElementById("mode").value;
  fetch(`https://${GetParentResourceName()}/arenaSelected`, {
    method: "POST",
    headers: { "Content-Type": "application/json; charset=UTF-8" },
    body: JSON.stringify({ mode })
  });
  closeMenu();
}

function closeMenu() {
  fetch(`https://${GetParentResourceName()}/arenaClose`, {
    method: "POST",
    headers: { "Content-Type": "application/json; charset=UTF-8" }
  });
  const menu = document.getElementById("menu");
  if (menu) menu.style.display = "none";
}

