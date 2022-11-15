function th = iterthresh(I, dt)
if nargin < 2
    dt = 0.5;
end
m = min(I, [], "all");
M = max(I, [], "all");
th = mean([m, M]);

while true
    J = I >= th;
    tnext = 0.5 * mean(I(J) + mean(I(~J)));
    if abs(th - tnext) < dt
        th = tnext;
        break;
    end
    th = tnext;
end
th = uint8(th);
end