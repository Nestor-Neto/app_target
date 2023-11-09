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
[!NOTE]
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
- Tela do esquema :shipit:
  ![MockApi](https://github.com/Nestor-Neto/app_target/assets/46816371/64360f75-58d6-4823-9e2d-80024d5463b1)
  


## TELAS
[!NOTE] :shipit:
![app1](https://github.com/Nestor-Neto/app_target/assets/46816371/dfff5027-d22f-4356-affb-0fe944c14fbd)
![app2](https://github.com/Nestor-Neto/app_target/assets/46816371/286c563c-117b-46e6-b7a1-9c09166634fd)
![app01](https://github.com/Nestor-Neto/app_target/assets/46816371/e33af923-0737-4fca-8dae-0bf135d7d8bc)
![app02](https://github.com/Nestor-Neto/app_target/assets/46816371/2b392f34-a257-4bf7-a498-ceaa832ef6cc)
![app03](https://github.com/Nestor-Neto/app_target/assets/46816371/cf4670cc-2d74-4ef3-9ca4-06be67b1dfc1)
![app04](https://github.com/Nestor-Neto/app_target/assets/46816371/f5b7ed4c-091c-4369-b7c9-59d5ff2b0472)
![app05](https://github.com/Nestor-Neto/app_target/assets/46816371/67e36498-70b8-4aa3-b03b-597f7afd2014)
![app06](https://github.com/Nestor-Neto/app_target/assets/46816371/a03d8bc2-2640-4393-93e4-3058043e1432)
![app07](https://github.com/Nestor-Neto/app_target/assets/46816371/36871f9e-8838-4709-af3d-5d045174466a)
![app08](https://github.com/Nestor-Neto/app_target/assets/46816371/c1a150e6-a17d-4f11-a69b-05aea5c855e1)
![app09](https://github.com/Nestor-Neto/app_target/assets/46816371/0ae5b02d-a0ca-413c-b601-f538a4c02d9b)
![app10](https://github.com/Nestor-Neto/app_target/assets/46816371/491888c0-83de-4149-8e4f-68c60875cc8b)


[!NOTE]
Para obter ajuda para começar a desenvolver o Flutter, consulte o
[documentação online](https://docs.flutter.dev/), que oferece tutoriais,
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

# app_target
