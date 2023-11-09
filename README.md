# app_target
# Desenvolvimento mobile Flutter - Projeto de Exemplo 📜
Flutter é um framework (ferramenta) de desenvolvimento com foco multiplataforma em dispositivos móveis. 
Criado pela Google, é bastante utilizado no mercado e, mais recentemente, permite a criação de aplicações para desktop (Linux, Windows e macOS).

## ☕ Escopo: 
Uma tela de autenticação onde o usuário é obrigado a digitar seu login e senha.
A tela deve conter
- Um Campo de senha 
- Um campo de texto para representar o Login 
- Um Label descrito "Política de privacidade"

Comportamento da tela 
Verificar e alertar se ambos os campos de Login e senha estão preenchidos. 

- O campo senha não pode ter menos que dois caracteres. 
- O campo senha não pode ter caracteres especiais, sendo apenas possível 

informar 'a' até 'Z' e '0' até '9'. 
- Ambos os campos não podem ultrapassar 20 caracteres. 
- Ambos os campos não podem terminar com o caractere de espaço no final. 
- Se ambas as informações esƟveram preenchidas deve ir para a próxima tela. 
- Ao tocar no label "PolíƟca de privacidade" uma página web direcionada para o google.com.br deve ser aberta. 
- Observações: Não é necessário validar as informações em uma API Externa, mas caso seja feito um mockAPI
contara como um diferencial

Tela de captura de informações
- A tela deve salvar as informações digitadas pelo usuário em um card, listando essas informações salvas e dando a opção de editar ou excluir. Essas informações não podem ser perdidas ao fechar o app, ou seja, ao abrir a tela as informações salvas anteriormente devem ser mostradas na 
ordem. 
- tela deve conter
- Um card principal e central 
- Um campo de texto
Como a tela deve se comportar 
- O foco da digitação deve estar o tempo todo no campo de "Digite seu texto"  
- Ao acionar o "enter" o campo tem que verificar se a informação foi preenchida. 
- O Card principal deve receber a informação digitada do campo. 
- As informações precisam ser salvas e lidas uƟlizando a biblioteca shared_ preferences (https://pub.dev/packages/shared_preferences)
- O Icone de excluir deve abrir um pop-up confirmando a ação. 
- Obrigatório a uƟlização do plugin MOBX para a construção da tela.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# app_target
