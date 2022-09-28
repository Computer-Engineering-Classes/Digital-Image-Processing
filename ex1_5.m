I = ones(256, 256);

I(90:190, 70:170) = 0;

figure();
imshow(I);

imwrite(I, "imagens\quadrado.bmp");