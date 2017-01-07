function R=Power(nume,d,eps)

[K A N unu]=core(nume);#calculam respectiv scoatem din fisier folosindu-ne de acesta functie matricile K,A vectorii R0(R de inceput) si unu(cel plin de 1) si numarul de noduri N

M=(inv(K)*A)';#calculam matricea M
E=unu*unu';#calculam matricea E

R0=MPD(double(((double(1-d)/N))*E)+double(d*M));#calculam vectorul R0(vectorul R initial) folosind Metoda Puterii Directe

while true#calculam vectorul R 
	asd=double(((double(1-d)/N))*E);
	asd1=double(d*M);
	R=(asd1+asd)*R0;

	if(max(abs(R0-R))<eps)
		break;#ne oprim cand s-a atins precizia dorita
	endif
R0=R;

endwhile
R=double(R);

endfunction

