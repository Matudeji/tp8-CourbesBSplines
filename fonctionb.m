function N = fonctionb(vecteur_noeud, t, m, i)
  if m == 0
    if vecteur_noeud(i) <= t && t < vecteur_noeud(i+1)
      N = 1;
    else
      N = 0;
    end
  else
    if vecteur_noeud(i+m) == vecteur_noeud(i)
      N = 1;
    else
      N = (t-vecteur_noeud(i))/(vecteur_noeud(i+m)-vecteur_noeud(i));
    end
    N = N * fonctionb(vecteur_noeud, t, m-1, i);
    disp("i+m+1")
    i+m+1
    if vecteur_noeud(i+m+1) == vecteur_noeud(i+1)
      N = N + 1 * fonctionb(vecteur_noeud, t, m-1, i+1);
    else
        N = N + (vecteur_noeud(i+m+1)-t)/(vecteur_noeud(i+m+1)-vecteur_noeud(i+1)) * fonctionb(vecteur_noeud, t, m-1, i+1);
    end
  end
end
