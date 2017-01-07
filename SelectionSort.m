function [x y] = SelectionSort(x)

n=size(x)(1);
y=1:n;#vectorul de pozitii initiale ce tine minte ce mutari au avut loc

for i=1:n-1
	for j=i+1:n
		if(x(i)<x(j))
			asd=x(j);
			asdy=y(j);

			x(j)=x(i);
			y(j)=y(i);

			y(i)=asdy;
			x(i)=asd;
		endif
	endfor
endfor


endfunction
