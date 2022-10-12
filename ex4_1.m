light = imread("imagens\fce_clara.bmp");
dark = imread("imagens\fce_escura.bmp");

% Clara
figure();
subplot(2, 3, 1); 
imshow(light); 
title("Clara");

subplot(2, 3, 2); 
[~, nbins] = imhist(light);
imhist(light);
title("Histograma");

subplot(2, 3, 3); 
histogram(light, nbins, 'Normalization','pdf'); 
title("Histograma normalizado");

fprintf("Face clara\n");
fprintf("Intensidade média: %f\n", mean2(light));
fprintf("Desvio padrão: %f\n", std2(light));

% Escura
subplot(2, 3, 4); 
imshow(dark); 
title("Escura");

subplot(2, 3, 5); 
[~, nbins] = imhist(dark);
imhist(dark);
title("Histograma");

subplot(2, 3, 6); 
histogram(dark, nbins, 'Normalization','pdf'); 
title("Histograma normalizado");

fprintf("\nFace escura\n");
fprintf("Intensidade média: %f\n", mean2(dark));
fprintf("Desvio padrão: %f\n", std2(dark));