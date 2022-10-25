I = imread("imagens\edificio.tif");

figure(1); imshow(I); title("Original");
figure(2);

% Gaussian noise
IG = imnoise(I, "gaussian");
subplot(2, 3, 1); imshow(IG); title("Gaussian");

% Filtered
favg = fspecial("average");
IGA = imfilter(IG, favg);
subplot(2, 3, 2); imshow(IGA); title("Gaussian with Average");
rmse = sqrt(immse(IGA, I));
fprintf("Gauss with Average filter: %f\n", rmse);

IGM = medfilt2(IG);
subplot(2, 3, 3); imshow(IGM); title("Gaussian with Median");
rmse = sqrt(immse(IGM, I));
fprintf("Gauss with Mean filter: %f\n", rmse);

% Salt & pepper noise
Isp = imnoise(I, "salt & pepper", 0.15);
subplot(2, 3, 4); imshow(Isp); title("Salt & Pepper, d=0.15");

% Filtered
favg = fspecial("average");
ISPA = imfilter(IG, favg);
subplot(2, 3, 5); imshow(ISPA); title("Salt & Pepper with Average");
rmse = sqrt(immse(ISPA, I));
fprintf("S&P with Average filter: %f\n", rmse);

ISPM = medfilt2(IG);
subplot(2, 3, 6); imshow(ISPM); title("Salt & Pepper with Median");
rmse = sqrt(immse(ISPM, I));
fprintf("S&P with Mean filter: %f\n", rmse);