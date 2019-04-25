function y = jacobi(matriz,x)
	D = diag(diag(matriz(:,1:length(matriz)-1)));
	R =  matriz(:,1:length(matriz)-1) - D;
	i = 0;
	while 1
        		aux = x;
        		x = inv(D)*(matriz(:,length(matriz))) - inv(D)*(R*x);
        		if norm(x-aux)/norm(x) <10^(-6) || i == 10000
                		break;
        		end
        		i=i+1;
 	end
	if i == 10000
        		y = 'Nao converge';
	else
        		y = x;
	end
	disp(i);
 end

