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