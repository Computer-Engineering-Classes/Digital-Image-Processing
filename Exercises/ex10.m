% 10.1
clear, clc, close all
I = imread("imagens\bolas.jpg");
figure(1); 
subplot(1, 2, 1); imshow(I); title("Original");

figure(2); imhist(I);

I_bin = imbinarize(I, 110/255);
figure(1); 
subplot(1, 2, 2); imshow(I_bin); title("Bolas");
% 10.2
clear, clc, close all
I = imread("imagens\celulas.jpg");
figure(3);
subplot(1, 2, 1); imshow(I); title("Original");

figure(4); imhist(I);

thresh = multithresh(I, 2);
seg_I = imquantize(I, thresh);

RGB = label2rgb(seg_I); 	 
figure(3);
subplot(1, 2, 2); imshow(RGB); title("Imagem Segmentada (RGB)");
% 10.3
clear, clc, close all
% implay("imagens\Color_Ball.avi");
v = VideoReader("imagens\Color_Ball.avi");

figure;
while(hasFrame(v))
    frame = readFrame(v);
    [R, G, B] = imsplit(frame);
    bin_I = R > 180 & G < 120 & B < 120;

    % Remover brilho
    SE = strel("disk", 8);
    J = imclose(bin_I, SE);

    imshow(J);
    title(sprintf('Current Time = %.3f sec', v.CurrentTime));
end
% 10.4 
clear, clc, close all
I = imread("imagens\impressao_digital.jpg");

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imhist(I); title("Histograma");

otsu_th = graythresh(I);
pv_th = pvthresh(I);
iter_th = iterthresh(I);

otsu_I = imbinarize(I, otsu_th);
pv_I = I > pv_th;
iter_I = I > iter_th;

figure;
subplot(1, 3, 1); imshow(otsu_I); title("Otsu");
subplot(1, 3, 2); imshow(pv_I); title("Peak/Valley");
subplot(1, 3, 3); imshow(iter_I); title("Iterative");

fprintf("Thresholds:\n");
fprintf("Otsu: %d\n", otsu_th * 255);
fprintf("Peak/Valley: %d\n", pv_th);
fprintf("Iterative: %d\n", iter_th);
% 10.5
clear, clc, close all
I = imread("imagens\text_grad.bmp");
%T = adaptivethreshold(I, 11, 7/255);
T = adaptivethreshold(I, 15, 3/255);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(T); title("Adaptive Threshold");
