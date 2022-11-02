% Função auxiliar 8.3 e 8.4
function aux_ex8(metodo)
    I = imread("imagens\edificio.tif");
    Id = im2double(I);
    wh = fspecial(metodo);
    I_h = imfilter(Id, wh, "replicate");
    wv = wh.';
    I_v = imfilter(Id, wv, "replicate");
    I_t = imadd(I_h, I_v);
    I_t = imbinarize(I_t, 0.52);
    I_edge = edge(Id, metodo);
    
    figure; title("Original"); imshow(I); figure;
    subplot(2, 2, 1); imshow(I_h, []); title("Arestas Horizontais");
    subplot(2, 2, 2); imshow(I_v, []); title("Arestas Verticais");
    subplot(2, 2, 3); imshow(I_t, []); title("Magnitude " + metodo);
    subplot(2, 2, 4); imshow(I_edge); title(metodo + " com edge");
end