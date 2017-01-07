function [Ainv] = GramSchmidt(A)
[m n]=size(A);
Q=zeros(m,n);
R=zeros(m,n);
	
	for i=1:n#calculam matricile Q si R ale matricei A
		R(i,i)=norm(A(:,i),2);
		Q(:,i)=A(:,i)/R(i,i);

		for j=i+1:n
			R(i,j)=Q(:,i)'*A(:,j);
			A(:,j)=A(:,j)-Q(:,i)*R(i,j);
		endfor

	endfor

invR=zeros(m,n);#initializam inversa matricei R

	for i=1:m#calculam pentru fiecare linie solutia sistemului Rx=Ini(unde Ini este o coloana din matricea In)
		invR(:,i)=ST(R,eye(n)(:,i));#astfel formam inversa punand solutiile linii in inversa
	endfor

Ainv=invR*Q';#calculam inversa matricei A folosindu-ne de faptul ca Q transpus=Q^-1 si inversa matricei R calculata anterior
endfunction
