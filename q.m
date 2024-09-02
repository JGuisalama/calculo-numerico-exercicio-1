function t = exercicio1(func,xl,xu)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% digite seu codigo aqui

t = 0;
trantigo = 0;
ea = 100;
iter = 0;

l =10;
h =10;
while true
    t = (xl + xu) / 2; %atualizar tr antes de calcular erro aproximado
    if t ~= 0
        ea = abs((t - trantigo) / t) * 100;
    end
    trantigo = t;

    iter = iter + 1;

    teste = func(xl) * func(t);

    if teste < 0 %houve mudanca de sinal
        xu = t;
    elseif teste > 0 %nao houve mudanca de sinal
        xl = t;
    else %encontramos a raiz
        ea = 0;
    end
    if  ea < es || iter >= imax
        disp(ea)
        disp(t)
        disp(iter)
        break;
    end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%

end

