img = imread("imagens\hospital_61.jpg");
mask = imread("imagens\masc.jpeg");

masked_img = bitand(img, mask);

figure();
subplot(1, 3, 1); imshow(img); title("Hospital");
subplot(1, 3, 2); imshow(mask); title("Máscara");
subplot(1, 3, 3); imshow(masked_img); title("Destaque");