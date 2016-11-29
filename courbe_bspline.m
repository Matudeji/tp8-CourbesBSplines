function [xp, yp] = courbe_bspline(m, x, y, vecteur_noeud)

  k = m+1;
  n = length(x)-1;

  N = n+k+1

  ti = vecteur_noeud(k):0.01:vecteur_noeud(n+2);

  xp = zeros(length(ti), 1);
  yp = zeros(length(ti), 1);
  for i=0:n
    for j=1:length(ti)
      % disp('vect taille')
      % length(vecteur_noeud)
      xp(j) += x(i+1) * fonctionb(vecteur_noeud, ti(j), m, i+1);
      yp(j) += y(i+1) * fonctionb(vecteur_noeud, ti(j), m, i+1);
    end
  end
  disp('xp');
  xp
end
