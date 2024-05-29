// Weibullverteilung
// * matrices operation in default
// . elementwise explizit schreiben

function w = weibull(k, a, v)
    // k - shape Parameter
    // a - scale Parameter
    // v - Windgeschwindigkeit

    w = ((k/a) * (v/a).^(k-1)).*exp(-(v/a).^k) * 100
endfunction