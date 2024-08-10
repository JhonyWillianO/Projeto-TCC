y += velocidade;
x += velocidade * xdirecao;

delay -= 0.1;

if(delay){
	
	xdirecao = irandom_range(1,-1);
	delay = delay_diracao;
	
}

if(y >= 769){
y = -20;
}

if(x >= 1337){

x = 1;
}

if(x<=0){
	x = 254;
	
}