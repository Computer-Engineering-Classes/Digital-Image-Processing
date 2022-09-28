img = imread("imagens\rx_mao.jpg");

figure();
imshow(img, []);
title("Rx Mão");

disp(size(img));

imwrite(img, "imagens\rx_gravado.tiff");