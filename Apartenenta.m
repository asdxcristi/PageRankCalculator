function y=Apartenenta(x,val1,val2)

if(x>=0 && x<val1)
	y=0;
	return;
endif

if(x>val2 && x<=1)
	y=1;
	return;
endif

if(x>=val1 && x<=val2)
	a=double(1/(val2-val1));#valori calculate in urma unor calcule matematice pe hartie(limite and stuff)
	b=double(1-val2*a);
	y=double(a*x+b);
endif

endfunction
