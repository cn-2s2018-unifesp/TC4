function y=gauss_seidel(m,x,erro)
	aux = m(:,1:length(m)-1).*(-1) + diag(diag(m(:,1:length(m)-1)));
	aux1 = diag(m(:,1:length(m)-1));
	aux2 =aux1;
	for i = 1:length(x)-1
   	aux2 = [aux2 aux1];
	end
	c = aux./aux2;
	d = m(:,length(m))./diag(m);
	j = 0;
	while 1
    	aux = x;
    	for i = 1:length(x)
        	j = j + 1;
        	disp(j);
        	x(i) = c(i,:)*x + d(i);
    	end
    	if (x-aux)<erro
            	y = x;
            	return
    	end
	end
    
end

