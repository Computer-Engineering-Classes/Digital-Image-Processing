I = imread("imagens\impressao_digital.jpg");

figure(1);
subplot(2, 1, 1); imshow(I); title("Original");

t = 0.5 * (min(I, [], "all") + max(I, [], "all"));

while true
    J = I >= t;
    tnext = 0.5 * mean(I(J) + mean(I(~J)));
    if abs(t - tnext) < 0.5
        t = tnext;
        break;
    end
    t = tnext;
end

subplot(2, 1, 2);  imshow(J); title("Iterativo");
fprintf("Iterative threshold value: %d\n", uint8(t));