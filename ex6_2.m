img = imread("imagens\polen.tif");

x = double(max(max(img)));
y = double(min(min(img)));

figure;
subplot(2, 4, 1); imshow(img); title("Original");

img2 = imadjust(img, [y / 255, x / 255], [0, 1], 0.2);
subplot(2, 4, 2); imshow(img2); title("Gamma - 0.2");

img3 = imadjust(img, [y / 255, x / 255], [0, 1], 0.4);
subplot(2, 4, 3); imshow(img3); title("Gamma - 0.4");

img4 = imadjust(img, [y / 255, x / 255], [0, 1], 0.6);
subplot(2, 4, 4); imshow(img4); title("Gamma - 0.6");


subplot(2, 4, 5); imhist(img);
subplot(2, 4, 6); imhist(img2);
subplot(2, 4, 7); imhist(img3);
subplot(2, 4, 8); imhist(img4);