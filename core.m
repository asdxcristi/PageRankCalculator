function [K A N unu R0]=core(nume)
fp=fopen(nume,"r");#deschidem fisierul dat ca parametru


#scoatem n de pe prima linie
N=fscanf(fp,"%d",1);#scoatem N de pe prima linie
PrimaLinie=fgets(fp);#sarim peste prima linie ce contine N

#initializam matricile si vectorii folositi
A=zeros(N);
M=zeros(N);
K=zeros(N);

for i=1:N#parcurgem liniile ce contin nodurile si vecinii lor

	Linie=fgets(fp);#le luam din fisier si le bagam in memorie
	Linie=str2num(Linie);#le facem vector de numere din string
	NodCurent=Linie(1);#salvam nodul curent
	Vecini=Linie(1,3:end);#salvam vecinii sarind peste primele 2 numere(nodul curent+"numarul de vecini")
	NumarVeciniEgaliNodCurent=sum(sum(Vecini==NodCurent));#numaram daca nodul curent ca vecin al sau de cate ori apare
	NumarVecini=Linie(2)-NumarVeciniEgaliNodCurent;	#eliminam aceste aparitii
	K(i,i)=NumarVecini;#punem pe diagonala matricii K numarul de vecini al nodului curent
	A(NodCurent,Vecini)=1;#formam matricea de adiacenta A punand 1 pe linia nodului curent in pozitia vecinilor sai
endfor
fclose(fp);#inchidem fisierul


for i=1:N
	A(i,i)=0;#punem pe diagonala matricei de adiacenta A din motivele specificate in cerinta
endfor

R0=ones(N,1);#initializam valorile initiale ale vectorului R
R0=R0/N;#tinand cont de formula din cerinta

unu=ones(N,1);#facem vectorul 1
endfunction
