function threshold = pvthresh(I)
[counts, nbins] = imhist(I);
[~, peak_1] = max(counts);

delta = round(max(nbins) / 10);

[~, peak_2_left] = max(counts(1:peak_1 - delta));
[~, peak_2_right] = max(counts(peak_1 + delta:max(nbins)));

peak_2 = max(peak_2_left, peak_2_right);

if peak_2 < peak_1
    [peak_2, peak_1] = deal(peak_1, peak_2);
end

[~, valley] = min(counts(peak_1:peak_2));
threshold = peak_1 + valley;
end