% Aproximación/Compresion de una imagen mediante la SVD
clear, close all, clc
B=imread('ferrari.jpg');
figure, image(B), axis image;
pause

% % Trabajar con una componente/banda de la imagen
A = double(B(:,:,2)); % banda verde de una imagen RGB
figure, imagesc(A,[0,255]),colormap(gray),axis image;
title('Imagen original');
pause

% Calcular la SVD
[u,d,v] = svd(double(A));
dd = diag(d);
figure, plot(dd), title('Valores singulares de la imagen')
pause

L = [1,10,50,100,150,200,min(size(A))]
for n=L
    % Aproximación mediante los primeros n términos de la SVD
    Ap=u(:,1:n)*d(1:n,1:n)*v(:,1:n).';
    figure, imagesc(Ap,[0,255]),colormap(gray),axis image;
    title(['Imagen aproximada con ' num2str(n) ' valores singulares']);
    disp(['Error relativo con ' num2str(n) ' valores singulares = ' num2str(norm(Ap-A)/norm(A))]);
    pause
end

