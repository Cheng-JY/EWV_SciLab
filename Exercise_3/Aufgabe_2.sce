// Aufgabe 2 Kollektorleistung und Kollektorwirkungsgrad

// a)
// Definition Funktion Wirkungsgrad

function etaK=Kollektor(eta0, a, vK, vU, E)
    etaK = eta0 - a*(vK - vU) / E
endfunction

// b)

// Flachkollektor
eat0_FL = 0.81 // optischer Wirkungsgrad 
a_FL = 3.8 // Koeffizienz

// Vakuumrohrenkollektor
eta0_VR = 0.8
a_VR = 1.1 

vK = 70 // °C Kollektortemperatur
vU = 20 // °C Umgebungstemperatur

E = 800 // W/m^2 Bestrahlungsstärke

eta_FL = Kollektor(eat0_FL, a_FL, vK, vU, E)
eta_VR = Kollektor(eta0_VR, a_VR, vK, vU, E)

disp("Wirkungsgrad Flachkollektor: " + string(eta_FL))
disp("Wirkungsgrad Vakuumrohrenkollektor: " + string(eta_VR))