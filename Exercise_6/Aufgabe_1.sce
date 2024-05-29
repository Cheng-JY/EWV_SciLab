// Übung 6, Aufgabe 1
// Aufgabe_1.sce
// Weibullverteilung
// Alle in eine Richtung, Verschaltung in Reihen (Abschwächung von Wind)

clear()
// a

a = 4.4 // scale
k = 1.51 // shape

// Weibullfunction wird aus anderer Datei ("weibull_function.sce") abgerufen
exec("weibull_function.sce")
// w1 = weibull(k, a, 5)

// b
v = [0:0.1:15] // Windgeschwindigkeitsvektor in m/s
y = weibull(k, a, v)

plot2d(v, y)

// Beschriftung
xlabel("Windgeschwindigkeit in m/s")
ylabel("Relative Häufigkeit in %")
title("Weibullverteilung für Neuruppin")

// c
function v_avg = v_average(k, a)
    v_avg = a * (0.568 + 0.434/k)^(1/k)
endfunction

v_avg = v_average(k, a)