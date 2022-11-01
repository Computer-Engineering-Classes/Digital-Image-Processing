% 3.1
I = imread("imagens\mamograma.tif");
I_50 = imadd(I, 50);
I_150 = imadd(I, 150);

figure; 
subplot(1, 3, 1); imshow(I); title("Original");
subplot(1, 3, 2); imshow(I_50); title("+50");
subplot(1, 3, 3); imshow(I_150); title("+150");
% 3.2
I = imread("imagens\soma1.bmp");
I2 = imread("imagens\soma2.bmp");
if size(I) ~= size(I2)
    fprintf("Image sizes are not equal!\n");
else
    I = imadd(I, I2);
    figure;
    subplot(1, 3, 1); imshow(I); title("soma1.bmp");
    subplot(1, 3, 2); imshow(I2); title("soma2.bmp");
    subplot(1, 3, 3); imshow(I); title("Soma");
end
% 3.3
I = imread("imagens\dif1.bmp");
I2 = imread("imagens\dif2.bmp");

I_dif = imabsdiff(I, I2);
mouse = I_dif > I;

figure;
subplot(2, 2, 1); imshow(I); title("dif1.bmp");
subplot(2, 2, 2); imshow(I2); title("dif2.bmp");
subplot(2, 2, 3); imshow(I_dif); title("Diferença absoluta");
subplot(2, 2, 4); imshow(mouse); title("Rato");
% 3.4
I = imread("imagens\xadrez.tif");
I_neg = ~I;

figure;
subplot(1, 2, 1); imshow(I); title("xadrez.tif");
subplot(1, 2, 2); imshow(img_neg); title("Negativo");
% 3.5
I = imread("imagens\And1.bmp");
I2 = imread("imagens\and2.bmp");
img_and = I | I2;

figure();
subplot(1, 3, 1); imshow(I); title("And1.bmp");
subplot(1, 3, 2); imshow(I2); title("And2.bmp");
subplot(1, 3, 3); imshow(img_and); title("OR");
% 3.6
I = imread("imagens\hospital_61.jpg");
mask = imread("imagens\masc.jpeg");
masked_img = bitand(I, mask);

figure;
subplot(1, 3, 1); imshow(I); title("Hospital");
subplot(1, 3, 2); imshow(mask); title("Máscara");
subplot(1, 3, 3); imshow(masked_img); title("Destaque");
% 3.7
I = imread("imagens\dif1.bmp");
I2 = imread("imagens\dif2.bmp");

figure;
subplot(5, 5, 1); imshow(I); title("dif1.bmp");
k1 = 1;
k2 = 0;
for i = 1 : 23
    img_comb = imlincomb(k1, I, k2, I2);
    subplot(5, 5, i + 1); imshow(img_comb); title("It. " + num2str(i));
    k1 = k1 - 1 / 23;
    k2 = k2 + 1 / 23;
end
subplot(5, 5, 25); imshow(I2); title("dif2.bmp");