I = imread("imagens\retina.tif");

titles = ["Red", "Green", "Blue"];

figure();
subplot(2, 2, 1);
imshow(I);

for i = 1 : 3
    subplot(2, 2, i + 1);
    imshow(I(:, :, i));
    title(titles(i));
end