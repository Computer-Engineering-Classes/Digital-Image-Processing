img = imread("imagens\polen.tif");

img_eq = histeq(img);

figure();
subplot(2, 2, 1); imshow(img); title("Pólen");
subplot(2, 2, 2); imshow(img_eq); title("Equalizada");
subplot(2, 2, 3); imhist(img);
subplot(2, 2, 4); imhist(img_eq);