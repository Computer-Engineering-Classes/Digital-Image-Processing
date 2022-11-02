clear; close all;

counts = [25,25,30,20,5,20,25,28,25];
nbins = 101:109;

iter_thresh(counts, nbins);

function iter_thresh(counts, nbins)
qmin = nbins(1);
qmax = nbins(end);

dt = 0.5;
t0 = qmin + (qmax - qmin) / 2;
t = qmin - 1;

while true
    d = t0 - t;

    sb = qmin:t0;
    mb = sum(sb .* counts(1:d)) / sum(counts(1:d));
    so = t0:qmax;
    mo = sum(so .* counts(d:end)) / sum(counts(d:end));
    
    t1 = round((mo - mb) / 2 + t + 0.05);

    if abs(t1 - t0) <= dt
        th = t1;
        break;
    end
    t0 = t1;
    fprintf("Current threshold: %d\n", t1);
end

fprintf("Iterative threshold: %d\n", th);
end