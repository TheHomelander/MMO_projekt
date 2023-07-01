function x_star = bisection(a, b, f, epsilon)
    x1 = a + (b - a) / 4;
    xm = (a + b) / 2;
    x2 = b - (b - a) / 4;

    while b - a >= 2 * epsilon
        if f(x1) < f(xm)
            b = xm;
        elseif f(x2) < f(xm)
            a = xm;
        else
            a = x1;
            b = x2;
        end

        x1 = a + (b - a) / 4;
        xm = (a + b) / 2;
        x2 = b - (b - a) / 4;
    end

    x_star = (b + a) / 2;
end