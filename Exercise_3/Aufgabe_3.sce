// Aufgabe 3
// Berechnung der maximalen Konzentration
// a)
r_S = 6.968e8 // m Sonnenradius
r_SE = 1.5e11 // m mittlerer Abstand Donne-Erde

phi_s_halbe = asind(r_S/r_SE)

// c)
// Maximaler Konzentrationsfaktor
C_max = 1 / sind(phi_s_halbe)^2

// d)
anz_Sp = 624 // Anzahl Spiegel
A_Sp = 120 // m^2 Fläche einers Spiegels
A_K = anz_Sp * A_Sp // Konzentrator Fläche
A_R = 121 // m^2 Recevier

K_Sevills = A_K / A_R
