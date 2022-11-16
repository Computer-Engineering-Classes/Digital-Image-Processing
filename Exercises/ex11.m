% 11.1
clc, clear, close all
I = imread("imagens\Img_region_growing.tif");

[G,NR,~,~] = regiongrow(I, 1, 65/255);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(G); title("Segmented with region growing");

fprintf("Number of regions: %d\n", NR);
% 11.2
clc, clear, close all
I = imread("imagens\Img_spli_merge.tif");

G = splitmerge(I, 4, @predicate); % 8 ou 16

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(G); title("Segmented with split/merge");
% 11.3
clc, clear, close all
I = imread("imagens\steel.tif");

im2 = imcomplement(I);
im3 = imhmin(im2, 20);
L = watershed(im3);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(L, []); title("Watershed segmentation");