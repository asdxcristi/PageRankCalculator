function [R1 R2 R3]=PageRank(test_intrare,d, eps)

fid_out=fopen(strcat(test_intrare,'.out'),'w');#deschidem fisierul in care scriem

fp=fopen(test_intrare,'r');#deschidem fisierul din care citim

N=fscanf(fp,"%d",1);#extragem numarul de noduri N
fprintf(fid_out,"%d\n\n",N);#il scriem in fisierul de out

R1=Iterative(test_intrare,d,eps);#apelam functia Iterative pentru primul bloc din fisierul de out

for i=1:N#scriem blocul in fisier
	fprintf(fid_out,"%f\n",R1(i));
endfor
	fprintf(fid_out,"%s","\n");

R2=Algebraic(test_intrare,d,eps);#apelam functia Algebraic pentru al doilea bloc din fisierul de out

for i=1:N#scriem blocul in fisier
	fprintf(fid_out,"%f\n",R2(i));
endfor
	fprintf(fid_out,"%s","\n");

R3=Power(test_intrare,d,eps);#apelam functia Power pentru al doilea bloc din fisierul de out

for i=1:N+1
	Linie=fgets(fp);#sarim la liniile ce contin val1 si val2
endfor
val1=fgets(fp);#extragem val1
val1=str2num(val1);

val2=fgets(fp);#extragem val2
fclose(fp);#inchidem fisierul din care am citit,dupa ce binenteles ne-am terminat treaba murdara cu el
val2=str2num(val2);

for i=1:N#scriem blocul in fisier
	fprintf(fid_out,"%f\n",R3(i));
endfor
	fprintf(fid_out,"%s","\n");

[SortedR2 asd]=SelectionSort(R2);#sortam vectorul R2(de la taskul 2)
for i=1:N#scriem indicii(locul obtinut),nodul curent(pagina) si gradul de apartenenta al acestei pagini
	fprintf(fid_out,"%d %d %f\n",i,asd(i),Apartenenta(SortedR2(i),val1,val2));
endfor

fclose(fid_out);#inchidem fisierul de out

endfunction


