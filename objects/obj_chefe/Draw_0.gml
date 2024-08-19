// Desenha o chefe
draw_self();

// Configurações da barra de vida
var barra_largura = 100; // Largura da barra de vida
var barra_altura = 10; // Altura da barra de vida
var barra_x = x - barra_largura / 2; // Centraliza a barra
var barra_y = y - sprite_height / 2 - 20; // Posiciona acima da cabeça

// Calcula o comprimento da barra com base na vida restante
var vida_percentual = vida / 30; // Vida total do chefe é 30
var barra_comprimento = barra_largura * vida_percentual;

// Define a cor da barra de vida
if (vida_percentual > 0.5) {
    draw_set_color(c_green); // Verde se a vida for maior que 50%
} else if (vida_percentual > 0.25) {
    draw_set_color(c_yellow); // Amarelo se a vida estiver entre 25% e 50%
} else {
    draw_set_color(c_red); // Vermelho se a vida estiver abaixo de 25%
}

// Desenha a barra de vida
draw_rectangle(barra_x, barra_y, barra_x + barra_comprimento, barra_y + barra_altura, false);

// Reseta a cor para branco após desenhar
draw_set_color(c_white);
