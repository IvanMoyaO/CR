b = es_primo(12)
c = es_primo(17)


% Más rápido
function p = es_primo (x)
    n = 2:x-1;
    d = x./n;

    p = ~any( (d-fix(d)) == 0);
end


