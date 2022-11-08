close all; clear; clc;
I = imread("Event2_SP.bmp");

% Filtrar ruído
I_med = medfilt2(I, [4, 4]);
figure; imshow(I_med); impixelinfo;

% Remover info no topo e no fundo
I_med2 = I_med;
I_med2(1:50, 1:480) = 0;
I_med2(355:420, 1:480) = 0;

% Rato
I_mouse = I_med2 > 40;
I_mouse(352:355, 158:190) = 0;

% Marcas
I_marks = I_med2 > 140;

% Mostrar resultados
figure;
subplot(2, 2, 1); imshow(I); title("Original");
subplot(2, 2, 2); imshow(I_med); title("Filtrada");
subplot(2, 2, 3); imshow(I_mouse); title("Rato");
subplot(2, 2, 4); imshow(I_marks); title("Marcas");

% Guardar imagens
imwrite(I_med, "filtered.bmp");
imwrite(I_mouse, "mouse.bmp");
imwrite(I_marks, "marks.bmp");
