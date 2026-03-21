const wrap = document.getElementById("wrap");
const ticketImg = document.getElementById("ticketImg");
const fallback = document.getElementById("fallback");

const buyer = document.getElementById("buyer");
const origin = document.getElementById("origin");
const dest = document.getElementById("dest");

const buyer2 = document.getElementById("buyer2");
const origin2 = document.getElementById("origin2");
const dest2 = document.getElementById("dest2");
const price2 = document.getElementById("price2");

let timer = null;

const imageMap = {
  saintdenis: "rail_ticket_saintdenis.png",
  valentine: "rail_ticket_valentine.png",
  tumbleweed: "rail_ticket_tumbleweed.png",
  rhodes: "rail_ticket_rhodes.png",
  annesburg: "rail_ticket_annesburg.png",
  vanhorne: "rail_ticket_vanhorne.png",
  riggs: "rail_ticket_riggs.png",
  blackwater: "rail_ticket_blackwater.png",
};

function fillText(d) {
  buyer.textContent = d.buyer || "Unknown";
  origin.textContent = d.origin || "Unknown";
  dest.textContent = d.destination || "Unknown";

  buyer2.textContent = d.buyer || "Unknown";
  origin2.textContent = d.origin || "Unknown";
  dest2.textContent = d.destination || "Unknown";
  price2.textContent = `$${d.price || 0}`;
}

function showFallback(d) {
  fallback.classList.remove("hidden");
  ticketImg.classList.add("hidden");
  fillText(d);
}

window.addEventListener("message", (event) => {
  const msg = event.data;
  if (!msg || msg.action !== "show") return;

  const d = msg.data || {};
  wrap.classList.remove("hidden");
  fillText(d);

  const key = (d.destinationKey || "").toLowerCase();
  const file = imageMap[key];

  if (file) {
    ticketImg.onload = () => {
      fallback.classList.add("hidden");
      ticketImg.classList.remove("hidden");
    };
    ticketImg.onerror = () => showFallback(d);
    ticketImg.src = `img/${file}`;
  } else {
    showFallback(d);
  }

  if (timer) clearTimeout(timer);
  timer = setTimeout(() => {
    wrap.classList.add("hidden");
  }, msg.duration || 10000);
});
