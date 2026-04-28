// Vorlagen


// Local Storage
localStorage.setItem("user", JSON.stringify({ name: "Max", age: 30 }));

// Abrufen der gespeicherten Daten
let user = JSON.parse(localStorage.getItem("user"));
console.log(user.name);

// Datenvalidierung
function validateForm() {
  let name = document.getElementById("name").value;
  let email = document.getElementById("email").value;
  let message = document.getElementById("message").value;
  
  if (name === "") {
    alert("Name muss ausgefüllt werden");
    return false;
  }
  
  let emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
  if (!email.match(emailPattern)) {
    alert("Bitte eine gültige E-Mail-Adresse eingeben");
    return false;
  }

  if (message === "") {
    alert("Nachricht darf nicht leer sein");
    return false;
  }

  return true; // Alle Felder sind gültig
}

//AJAX Request auf Fetch API
function fetchData() {
  fetch('https://link')  // API-URL
    .then(response => response.json())
    .then(data => {
      console.log(data);  // Daten im Konsolenlog ausgeben
    })
    .catch(error => {
      console.error('Fehler:', error);  // Fehler im Fall eines Fehlers
    });
}

// Evetn Listener
document.getElementById("myButton").addEventListener("click", function() {
  alert("Button wurde geklickt!");
});

//Dynamische HTML Elemente
function createNewElement() {
  let newDiv = document.createElement("div");
  newDiv.innerHTML = "Dies ist ein neu erstelltes Element!";
  document.body.appendChild(newDiv);
}

// Timer. Cause Why Not?
function countdown(seconds) {
  let remainingTime = seconds;
  let timer = setInterval(() => {
    console.log(remainingTime);
    remainingTime--;

    if (remainingTime < 0) {
      clearInterval(timer);
      console.log("Countdown beendet!");
    }
  }, 1000);
}

//Debouncing-Funktion zum Suchen
function debounce(func, wait) {
  let timeout;
  return function(...args) {
    clearTimeout(timeout);
    timeout = setTimeout(() => func.apply(this, args), wait);
  };
}

const onSearch = debounce(function() {
  console.log('Suche ausgelöst');
}, 300);

document.getElementById("searchInput").addEventListener("input", onSearch);

// Element nach Scrollposition
window.addEventListener("scroll", function() {
  let element = document.getElementById("hiddenElement");
  let position = element.getBoundingClientRect();

  if (position.top <= window.innerHeight) {
    element.classList.add("visible");
  }
});

// Aray Duplikate entfernen
function removeDuplicates(arr) {
  return [...new Set(arr)];
}

let numbers = [1, 2, 3, 1, 2, 4];
let uniqueNumbers = removeDuplicates(numbers);
console.log(uniqueNumbers);

// Dark Mode on/off
function toggleDarkMode() {
  document.body.classList.toggle("dark-mode");
}

document.getElementById("darkModeButton").addEventListener("click", toggleDarkMode);
//CSS
body.dark-mode {
  background-color: #121212;
  color: white;
}

