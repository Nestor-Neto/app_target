# app_target
# Desenvolvimento mobile Flutter 📜
Flutter é um framework (ferramenta) de desenvolvimento com foco multiplataforma em dispositivos móveis. 
Criado pela Google, é bastante utilizado no mercado e permite a criação de aplicações para desktop (Linux, Windows e macOS) e aplicativos em diferentes plataformas(Android e iOS) ao mesmo tempo com um único código. Logo, seus principais benefícios são a versatilidade, menor curva de aprendizado e agilidade.

## 📝 Escopo: 
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
- Se ambas as informações estiveram preenchidas deve ir para a próxima tela. 
- Ao tocar no label "Política de privacidade" uma página web direcionada para o google.com.br deve ser aberta. 
- Observações: Não é necessário validar as informações em uma API Externa, mas caso seja feito um mockAPI
contara como um diferencial

Tela de captura de informações
- A tela deve salvar as informações digitadas pelo usuário em um card, listando essas informações salvas e dando a opção de editar ou excluir. Essas informações não podem ser perdidas ao fechar o app, ou seja, ao abrir a tela as informações salvas anteriormente devem ser mostradas na 
ordem. 
A tela deve conter
- Um card principal e central 
- Um campo de texto
Como a tela deve se comportar 
- O foco da digitação deve estar o tempo todo no campo de "Digite seu texto"  
- Ao acionar o "enter" o campo tem que verificar se a informação foi preenchida. 
- O Card principal deve receber a informação digitada do campo. 
- As informações precisam ser salvas e lidas uƟlizando a biblioteca shared_ preferences (https://pub.dev/packages/shared_preferences)
- O Icone de excluir deve abrir um pop-up confirmando a ação. 
- Obrigatório a uƟlização do plugin MOBX para a construção da tela.

## 💻 Pré-requisitos
- instalar a Visual Studio Code ( https://code.visualstudio.com/download )
- Instalar Flutter ( https://docs.flutter.dev/get-started/install ).


## 💻 Dependências

|Versão                                                                        |           
|------------------------------------------------------------------------------|
|Flutter 3.13.9 • channel stable • https://github.com/flutter/flutter.git      |
|Framework • revision d211f42860 (2 weeks ago) • (2023-10-25-13:42:25)         |
|Dart 3.1.5 • DevTools 2.25.0                                                  |	

|Dependências           | Dev Dependências       |   
|-----------------------|------------------------|
|cupertino_icons: ^1.0.2| flutter_lints: ^2.0.0  |
|flutter_modular: ^5.0.3| mobx_codegen: ^2.4.0   |
|mobx: ^2.2.1           | modular_test: 2.0.0    |
|flutter_mobx: ^2.1.1   | build_runner:          |
|google_fonts:          |                        |
|validatorless:         |                        |
|http:                  |                        |
|url_launcher: ^6.2.1   |                        |
|shared_preferences:    |                        |	

## 💻 ARQUITETURA
|                   |	                                                         |	
|-------------------|------------------------------------------------------------|
|MOBX               |	MobX é uma biblioteca de gerenciamento de estado.        | 
|MODULAR            |	Rotas modularizadas e Injeção de dependência modularizada|


## 🚀 MOCKAPI
MockAPI é uma ferramenta simples que permite simular APIs facilmente, gerar dados personalizados e pré-formar operações usando a interface RESTful.
- Foi criada uma conta no site ( https://mockapi.io/projects ), para buscas os dados de uma lista já criada na Api e listar na tela no primeiro acesso, como demonstração de acesso a uma APIRESTful.


Para obter ajuda para começar a desenvolver o Flutter, consulte o
[documentação online](https://docs.flutter.dev/), que oferece tutoriais,
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

# app_target
