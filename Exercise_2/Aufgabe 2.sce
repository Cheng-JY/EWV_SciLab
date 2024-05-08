// Aufgabe 2a)
// Globale Bestrahlung
clear

H_GHor = 9.9 // kwh/m^2
H_dirHor = 6.7 // kwh/m^2

// Diffuse Bestrahlung
H_diffHor = H_GHor - H_dirHor // kwh/m^2

// Aufgabe 2b)
// direkte Strahlung mehr bekommen, sinnvoll
// Image: Bestrahlung auf der Erde
// Blickrichtung von Anlagen

// Aufgabe 2c)
gamma_S = 58 // Sonnehöhe in Grad
alpha_S = 155 // Sonnenazimut in Grad
gamma_E = 30 // Neigungswinkel Ebene
alpha_E = -55 // Azimutwinkel, Ausrichtung Ebene

// Einstrahlungswinkel 
theta = acosd(-cosd(gamma_S) * sind(gamma_E) * cosd(alpha_S - alpha_E) + sind(gamma_S) * cosd(gamma_E))

E_dirHor = 750 // W/m^2 direkte Einstrahlung auf hor. Ebene
E_diffHor = 200 // W/m^2 diffuse Einstrahlung auf hor. Ebene

// die direkte Bestrahlungsstärke auf der geneigten Ebene
E_dirGen = E_dirHor * cosd(theta) / sind(gamma_S)

// Aufgabe 2d)
// isotroper Ansatz zur Berechnung der diffusen Strahlung
E_diffGen = E_diffHor * 0.5 * (1 + cosd(gamma_E))

// Aufgabe 2e)
// Bodenreflexion mit Albedo A=0,25 für Gas
// Anteil aus Reflexion
A = 0.25 // Albedo Faktor für Gras
E_GHor = E_diffHor + E_dirHor
E_reflGen = E_GHor * A * 0.5 * (1 - cosd(gamma_E))

// Aufgabe 2f)
E_gesamtGen = E_dirGen + E_diffGen + E_reflGen
