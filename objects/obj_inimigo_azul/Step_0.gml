//y += velocidade;
x += velocidade * xdirecao;

if(stop && y >= xstop){
	
	delay_stop -= 0.5;
	
	if(delay_stop <= 0){
	 
	 stop = false;
	 
	}
	 x+= 2;
}
else{
	y += velocidade;
}

delay -= 0.1;

if(delay <= 0){
	
	xdirecao = irandom_range(1,-1);
	delay = delay_diracao;
	
}

if(y >= 780){
y = -20;
}

if(x >= 1240){

x = 1;
}

if(x<=0){
	x = 250;
	
}