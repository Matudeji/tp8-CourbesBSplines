% EXO1


% disp('Click gauche pour insérer les points de contrôle et click droit pour le dernier et terminer.');
% tasto=1;
% figure;
% axis([0 10 0 10 ]);
% grid on;
% hold on;
%
% x=[];y=[];
% %t=input('valeur de t*: ');
% while tasto == 1
%   [xi,yi,tasto]=ginput(1);
%   plot (xi,yi,'r*');
%   x= [x xi];
%   y= [y yi];
% end
% m = input('Rentrer m:');
%
% k = m+1;
% n = length(x)-1;
%
% N = n+k+1
% vecteur_noeud = zeros(N, 1);
% for i =1:N
%   vecteur_noeud(i) = input('rentrer un noeud')
% end
% xp = [];
% yp = [];
% ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
% disp('xp dans exe');
% length(xp)
% length(yp)
% plot(xp, yp);
% pause(2);

% EXO2
% a)

% m = 3;
% k = m+1;
%
% x = [1 2 3 4];
% y = [2 6 2 6];
% n = length(x)-1;
% N = n+k+1;
% vecteur_noeud = 1:N;
% ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
% figure;
% subplot(2, 1, 1)
% plot(xp, yp);
%
%
% % k changé
% m = 1;
% k = m+1;
% N = n+k+1;
% x = [1 2 3 4];
% y = [2 6 2 6];
% vecteur_noeud = 1:N;
% ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
% subplot(2, 1, 2)
% plot(xp, yp);
% pause(3);

% On remarque que avec un k supérieur un réduit la taille de la courbe
% Si k est plus petit on la courbe suit plus les pts de controles, et la classe de la fonction diminue
% k est lié à la classe de la courbe (si k = 2)


% b)
% Le cours nous dit:
% La courbe de Bézier associée à n + 1 points de contrôle
% est la courbe B-spline de degré n avec comme nœuds les points
% t0 = t1 = . . . = tn = 0 et tn+1 = tn+2 = . . . = t2n+1 = 1
% figure;
%
% m = 2;
% k = m+1;
% N = n+k+1;
% x = [1 2 3 4];
% y = [2 6 2 6];
% % creation du vecteur noeuds "B-spline"
% vecteur_noeud = zeros(n+1, 1);
% vecteur_noeud = [vecteur_noeud; ones(m+1, 1)]
% ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
% subplot(2, 1, 1)
% plot(xp, yp);
% pause(3);


%  c)
% discontinuité
% figure;
%
% m = 3;
% k = m+1;
% % poitns de controles multiples
% x = [1 2 2 2 5];
% y = [2 6 6 6 2];
% n = length(x)-1;
%
% N = n+k+1;
% vecteur_noeud = [1 2 1 2 3 5 6 7 8];
% ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
%
% subplot(2, 1, 1)
% plot(xp, yp);
%
%
% m = 3;
% k = m+1;
% % poitns de controles multiples
% x = [5 5 1 1 3 5 5 7 9 9];
% y = [1 1 4 6 8 6 6 8 6 4];
% n = length(x)-1;
%
% N = n+k+1;
% vecteur_noeud = [1 2 3 4 5 6 7 8 9 10 11 12 13 14];
% ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

% [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
% subplot(2, 1, 2)
% plot(xp, yp);
% pause;


% d)
% partition

figure;

m = 3;
k = m+1;
% poitns de controles multiples
x = [5 5 1 1 3 5 5 7 9 9];
y = [1 1 4 6 8 6 6 8 6 4];
n = length(x)-1;

N = n+k+1;
vecteur_noeud = [1 2 3 4 5 6 7 8 9 10 11 12 13 14];
ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2)

[xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
subplot(2, 1, 1)
plot(xp, yp);


m = 3;
k = m+1;
% poitns de controles multiples
x = [5 5 1 1 3 5 5 7 9 9];
y = [1 1 4 6 8 6 6 8 6 4];
n = length(x)-1;

N = n+k+1;
vecteur_noeud = [1 2 3 4 5 6 7 8 9 10 11 12 13 14];
ti = vecteur_noeud(k):1:vecteur_noeud(n+2)

[xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
subplot(2, 1, 2)
plot(xp, yp);
pause(2);


m = 3;
k = m+1;
% poitns de controles multiples
x = [5 5 1 1 3 5 5 7 9 9];
y = [1 1 4 6 8 6 6 8 6 4];
n = length(x)-1;

N = n+k+1;
vecteur_noeud = [1 2 3 4 5 6 7 8 9 10 11 12 13 14];
ti = vecteur_noeud(k):0.01:50

[xp, yp] = courbe_bspline(m, x, y, vecteur_noeud, ti);
plot(xp, yp);
pause()
