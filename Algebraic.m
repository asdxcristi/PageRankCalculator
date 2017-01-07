function R=Algebraic(nume,d)

[K A N unu]=core(nume);#calculam respectiv scoatem din fisier folosindu-ne de acesta functie matricile K,A vectorul R0(R de inceput) si numarul de noduri N

M=(GramSchmidt(K)*A)';#calculam matricea M folosind functia GramSchmidt pentru a calcula inversa matricei K

#calculam vectorul R folosind GramSchmidt folosind formula din cerinta
asd=(1-d)/N*unu;
asd1=GramSchmidt(eye(N)-d*M);
R=asd1*asd;


endfunction
