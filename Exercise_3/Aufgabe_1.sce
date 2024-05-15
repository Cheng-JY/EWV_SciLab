// Aufgabe 1 Auslegung Warmwasserspeicher
// a)
// Waseerverbrauch

vW = 45
mW = 45 // Umrechnung in kg

// Warmwassertemperatur
T_heis = 60 // °C
T_kalt = 7 // °C

// Aus den Vorlesungsfolie
c = 1.163 // Wh/(kg*K)

Q_Jan = c * mW * (T_heis - T_kalt)

// b)

anz = 4 // Anzahl der Person im Haushalt
tage = 365 // Tage im Jahre
Q_Preson = Q_Jan
Q_N = Q_Preson * anz * tage

// c)
// Solarer Deckungsgrad von 50% - 60% in Deutschland erreichen (Hier nehmen wir 60%)
SD = 0.6

// d)
V_SP = 2 * anz * vW // Größe der Warmwasserspeicher in Liter

// e)
eta_KN = 0.3 // mittlere Kollektorkreisnutzungsgraf
H_Solar = 1009.8 * 1000 // kWh/m^2 -> Wh/m^2

A_k = SD/eta_KN * Q_N/H_Solar // nötigte Kollektorfläche
