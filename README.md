# Desafio Análise Automação Web

Prova técnica do processo seletivo para a Compasso UOL

## Sobre a execução do projeto: 

Para poder executar, você deverá ter:
- Ruby >= 2.5.x;
- Chrome e Chromedriver na última versão estável.

Comandos a serem executados a partir da raíz do projeto:

Instalar as dependências:
```ruby
bundle install
```

## Execução dos cenários implementados:

```ruby
bundle exec cucumber -p default -t@login_com_sucesso
bundle exec cucumber -p default -t@login_com_falha
bundle exec cucumber -p default -t@busca_sem_resultados
bundle exec cucumber -p default -t@adicionar_no_carrinho

```
