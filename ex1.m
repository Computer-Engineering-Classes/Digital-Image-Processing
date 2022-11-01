% 1.1
img = imread("imagens\rx_mao.jpg");
figure; imshow(img, []); title("Rx Mão");

disp(size(img));
imwrite(img, "imagens\rx_gravado.tiff");
% 1.2
imgs = [
    "imagens\rx_mao.jpg"
    "imagens\rx_torax.jpg"
    "imagens\Rx_bexiga.jpg"
    "imagens\brain.jpg"
    ];
titles = ["Rx Mão", "Rx Tórax", "Rx Bexiga", "Cérebro"];
figure;
for i = 1:4
    I = imread(imgs(i));
    subplot(2, 2, i); imshow(I); title(titles(i));
end
% 1.3
I = imread("imagens\retina.tif");
figure; imshow(I); impixelinfo;

[rows, cols, bands] = size(I);
fprintf("Image dimensions: %d x %d\n", rows, cols);
fprintf("Image bands: %d\n", bands);
fprintf("Total pixels: %d\n", rows * cols);

info = imfinfo(imgpath, "tif");
disp(info);
% 1.4
I = imread("imagens\retina.tif");
[R, G, B] = imsplit(I);

figure; 
subplot(2, 2, 1); imshow(I); title("Original");
subplot(2, 2, 2); imshow(R); title("Red");
subplot(2, 2, 3); imshow(G); title("Green");
subplot(2, 2, 4); imshow(B); title("Blue");
% 1.5
I = ones(256, 256);
I(90:190, 70:170) = 0;

figure; imshow(I); title("Quadrado");

imwrite(I, "imagens\quadrado.bmp");