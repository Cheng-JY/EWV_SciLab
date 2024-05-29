// Übung 6, Aufgabe 2
clear()

// a Logarithmische Höhenformel

v1 = 3.97 // Windgeschwindigkeit aud 10m in m/scale
h1 = 10 // Messhöhe 10m
h2 = 99 // Nabenhöhe in m 

z0 = 0.03 // Rauigkeitslänge in m 
d = 0 // keine Hindernisse in der Nähe

function v_h2 = log_gs(v1, h1, h2, z0, d)
    v_h2 = v1.*log((h2-d)./z0)./log((h1-d)./z0)
endfunction

v2 = log_gs(v1, h1, h2, z0, d) // mittlere Windgeschwindigkeit in 99m Höhe, in m/s

// b 
clf() // clear the plotting

h_ges = [10:120] // Nabenhöhe - Vektor in m

v2_ges = log_gs(v1, h1, h_ges, z0, d) // Windgeschwindigkeiten

plot2d(h_ges, v2_ges)

// Beschriftung
xlabel("Nabenhöhe in m")
ylabel("mittlere Windgeschwindigkeit in m/s")
title("Logarithmische Grenzschichtprofil")

xstring(20, 4, "Die mittlere Windgeschwindigkeit in " + string(h2) + " m ist " + string(v2) + " m/s")
ax = gca()
ax.data_bounds = [0, 120, 3.5, 6] // [x1, x2, y1, y2]