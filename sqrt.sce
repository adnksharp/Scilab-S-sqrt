x = strtod(input ( "Raiz de: ", "s" ));
cache = x/2;
sqrt = 0;

if x > 0 then
    while 1 do
        if abs(sqrt*sqrt - x) < 0.001 then
            break;
        end
        sqrt = (sqrt + (x/cache)) / 2;
        cache = sqrt;
    end
end

mprintf("Raiz de %f = %f\n", x, sqrt);