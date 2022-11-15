clc; clear; close all;

counts = [25,25,30,20,5,20,25,28,25];
nbins = 101:109;

it_thresh(counts, nbins);

function it_thresh(counts, nbins, dt)
if nargin < 3
    dt = 0.5;
end

qmin = nbins(1);
d = qmin - 1;
L = length(counts);
th = 102;
fprintf("Current threshold: %d\n", th);

while true
    Mo = 0; so = 0;
    Mb = 0; sb = 0;

    for i = qmin:th
        Mo = Mo + counts(i - d) * i;
        so = so + counts(i - d);
    end
    for i = th + 1:L + d
        Mb = Mb + counts(i - d) * i;
        sb = sb + counts(i - d);
    end

    Mo = Mo / so;
    Mb = Mb / sb;
    tnext = round((Mo + Mb) / 2 + 0.05);

    if abs(tnext - th) < dt
        th = tnext;
        break;
    end
    th = tnext;
    fprintf("Current threshold: %d\n", th);
end

fprintf("Final threshold: %d\n", th);
end