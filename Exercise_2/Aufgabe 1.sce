// Aufgabe 1 a)

E_Fus_J = 3.955e-12 // J Energie pro Fusion frei wird
J_eV = 6.242e18 // 1ev = 1.602e-19 J <-> 1J / 1/1.602e-19 eV
E_Sonne = 3.8e26

E_Fus_eV = E_Fus_J * J_eV
anz = E_Sonne/E_Fus_J

// Aufgabe 1 b)
M_Sonne = 63.3e6 // in [W/m^2] Strahlungstärke auf der Sone
r_S = 6.963e8 // in m Sonneradius
r_SE = 1.496e11 // in m Abstand Sonne Erde

// M_Sonne * A_Sonne = E_e * A_SE
// E_e = M_Sonne * A_Sonne / A_SE
// A = 4*pi*r^2
E_e = M_Sonne * (r_S/r_SE)^2 // W/m^2 Bestrahlungsstärke auf der Erde, Solarkonstante

