img1 = imread("imagens\soma1.bmp");
img2 = imread("imagens\soma2.bmp");
if size(img1) ~= size(img2)
    fprintf("Image sizes are not equal!\n");
else
    img = imadd(img1, img2);
    figure();
    subplot(1, 3, 1); imshow(img1); title("soma1.bmp");
    subplot(1, 3, 2); imshow(img2); title("soma2.bmp");
    subplot(1, 3, 3); imshow(img); title("Soma");
end