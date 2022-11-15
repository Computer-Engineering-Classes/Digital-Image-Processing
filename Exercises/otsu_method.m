function level = otsu_method(histogramCounts)
    total = sum(histogramCounts);
    sumB = 0;
    wB = 0;
    maximum = 0;
    sum1 = dot(0:length(histogramCounts) - 1, histogramCounts);

    for t = 1:length(histogramCounts)
        wF = total - wB;
        if wB > 0 && wF > 0
            mF = (sum1 - sumB) / wF;
            between = wB * wF * (sumB / wB - mF) ^ 2;
            if between >= maximum
                level = t;
                maximum = between;
            end
        end
        wB = wB + histogramCounts(t);
        sumB = sumB + t * histogramCounts(t);
    end
end