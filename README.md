<h1> Projeto Billinho </h1>

Billinho é um teste técnico da [Quero Educação](https://sobre.quero.com/) com o objetivo de simular uma API



<h3>Clonando o projeto</h3>

` git clone https://github.com/lulcca/projeto-billinho.git `

` cd projeto-billinho `

<h3>Instalando dependências</h3>

` bundle install `

<h3>[EM CASO DE ERRO] É possível que, para completar a instalação do mysql2, seja necessário rodar: </h3>

` gem install mysql2 -- '--with-mysql-lib="c:\Program Files\MySQL\MySQL Server 8.0\lib" --with-mysql-include="c:\Program Files\MySQL\MySQL Server 8.0\include"' `

<h3>Criando e populando o banco de dados</h3>

` rails db:drop db:create db:migrate db:seed `

<h3>Iniciando o projeto</h3>

` rails s `
