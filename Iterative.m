function R=Iterative(nume,d,eps)

[K A N unu R0]=core(nume);#calculam respectiv scoatem din fisier folosindu-ne de acesta functie matricile K,A vectorii R0(R de inceput) si unu(cel plin de 1) si numarul de noduri N

M=double((inv(K)*A)');#calculam matricea M

while true#calculam indicele PageRank folosind forma matriceala R
	asd=double(((double(1-d)/N))*unu);
	asd1=double(d*M*R0);
	R=double(asd1+asd);

	if(max(abs(R0-R))<eps)
		break;#ne oprim cand s-a atins precizia dorita
	endif
R0=R;

endwhile


endfunction
