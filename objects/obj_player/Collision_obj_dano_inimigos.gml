if (!invulneravel) {
    // Código de dano e reposicionamento
    // Exemplo: Reduzir a vida e mover o jogador para um ponto seguro
    // vida -= 1;
	 // Verifica se ainda há vidas restantes
    if (global.player_vida > 0) {
		
    x = 670;
    y = 740;
	
    // Ativar invulnerabilidade
    invulneravel = true;
    pode_piscar = true;
    alarm[0] = tempo_invulneravel; // Definir o alarme para o tempo de invulnerabilidade
}

}