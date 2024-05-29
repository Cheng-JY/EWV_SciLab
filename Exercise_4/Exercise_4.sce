// Übung 4, Aufgabe 1c)

h = 6.6260755e-34 // J/s , planck'sche Wirkungsquantum
c = 2.9979e8 // m7s, Lichtgeschwindigkeit
E = 1.107 * 1.602177e-19 // Umrechning von eV in J

lambda = h*c/E // maximale Wellenlänge 1.120 um/ 1120 nm

// Übung 4, Aufgabe 2 c)
k = 1.38807e-23 // J/K, Bolzmann konstante 
T = 300 // K, Temperartur
e = 1.602e-19 // A*s, Ladung des Elektrons

n_A = 1e16 // 1/cm^3 Dichte der Akzeptoren (p-Dotierung)
n_D = 2e16 // 1/cm^3 Dichte der Donatoren (n-Dotierung)

n_i0 = 6.42e15 // 1/(cm^3*K^3/2)
Eg = 1.107*e // Bandlücke von Silizium in J

n_i = sqroot(n_i0^2 * T^3 * exp(-Eg/(k*T))) 
// intrische Ladungsträgerdichte

U_d = k*T/e * log(n_A * n_D/ n_i^2)
// 0.7033 V

// e) Dioden/ Transistoren 

// amorphe Solarzelle taschenrechner

