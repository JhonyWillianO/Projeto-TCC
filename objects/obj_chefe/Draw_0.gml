// Desenha o chefe
draw_self();

// Configurações da barra de vida
var barra_largura = 100; // Largura da barra de vida
var barra_altura = 10; // Altura da barra de vida
var barra_x = (room_width / 2) - (barra_largura / 2); // Centraliza a barra no topo da tela
var barra_y = 20; // Posiciona a barra no topo da tela

// Calcula o comprimento da barra com base na vida restante
var vida_percentual = vida / 100; // Vida total do chefe é 100
var barra_comprimento = barra_largura * vida_percentual;

// Define a cor da barra de vida
if (vida_percentual > 0.5) {
    draw_set_color(c_green); // Verde se a vida for maior que 50%
} else if (vida_percentual > 0.25) {
    draw_set_color(c_yellow); // Amarelo se a vida estiver entre 25% e 50%
} else {
    draw_set_color(c_red); // Vermelho se a vida estiver abaixo de 25%
}

// Desenha a barra de vida no topo da tela
draw_rectangle(barra_x, barra_y, barra_x + barra_comprimento, barra_y + barra_altura, false);

// Reseta a cor para branco após desenhar
draw_set_color(c_white);

// Desenha o nome do chefe abaixo da barra de vida
var nome_chefe = "Inimigo Chefe"; // Substitua pelo nome desejado
var nome_x = room_width / 2; // Centraliza o nome
var nome_y = barra_y + barra_altura + 5; // Posiciona abaixo da barra de vida

// Define a cor do texto
draw_set_color(c_white);

// Centraliza o texto horizontalmente
draw_text_ext(nome_x - (string_width(nome_chefe) / 2), nome_y, nome_chefe, -1, -1);

// Reseta a cor para branco após desenhar
draw_set_color(c_white);
