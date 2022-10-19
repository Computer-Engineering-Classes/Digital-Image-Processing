img = imread("imagens\face.jpg");

f = fspecial("gaussian", 5, 1);

img_gauss = imfilter(img, f);

figure;
subplot(1, 2, 1); imshow(img); title("Original");
subplot(1, 2, 2); imshow(img_gauss); title("Gaussiano 5x5 σ=1");