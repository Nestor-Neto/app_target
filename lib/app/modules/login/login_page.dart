import 'package:app_target/app/modules/login/widgets/custom_form_field_widget.dart';
import 'package:app_target/app/shared/utils/message.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_target/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:app_target/app/shared/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();
  final _keyForm = GlobalKey<FormState>();
  final _user = TextEditingController();
  final _password = TextEditingController();
  final _focusUser = FocusNode();

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      _focusUser.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final width = mediaQuery.width;
    final height = mediaQuery.height;
    final paddingRightText = width * 0.76;
    final paddingBottomText = height * 0.006;
    final paddingTextFormFieldLeft = width * 0.06;
    final paddingTextFormFieldRight = width * 0.06;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          decoration: theme.backGroundSystemDesign,
          child: Form(
            key: _keyForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: paddingRightText,
                    bottom: paddingBottomText,
                    left: 0,
                  ),
                  child: Text(
                    "Login",
                    style: theme.styleText,
                    textAlign: TextAlign.start,
                  ),
                ),
                CustomFormFieldWidget(
                  limitChar: 20,
                  obscureText: false,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.only(
                    left: paddingTextFormFieldLeft,
                    right: paddingTextFormFieldRight,
                  ),
                  focusNode: _focusUser,
                  textEditingController: _user,
                  formFieldValidator: Validatorless.multiple([
                    Validatorless.required('O Login é obrigatório!'),
                    Validatorless.min(
                        2, "O Login Deverá ter no mínimo 2 caracteres"),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.04,
                    right: paddingRightText,
                    bottom: paddingBottomText,
                    left: 0,
                  ),
                  child: Text(
                    "Senha",
                    style: theme.styleText,
                    textAlign: TextAlign.start,
                  ),
                ),
                CustomFormFieldWidget(
                  obscureText: true,
                  limitChar: 20,
                  prefixIcon: const Icon(
                    Icons.lock_sharp,
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.only(
                    left: paddingTextFormFieldLeft,
                    right: paddingTextFormFieldRight,
                  ),
                  textEditingController: _password,
                  formFieldValidator: Validatorless.multiple([
                    Validatorless.regex(RegExp(r'^[a-zA-Z0-9]+$'),
                        "Favor colocar apenas letras e números"),
                    Validatorless.required('A Senha é obrigatória!'),
                    Validatorless.min(2, "Deve conter no mínimo 2 caracteres"),
                  ]),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                ElevatedButton(
                  style: theme.buttonStyle.copyWith(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.only(
                        left: width * 0.15,
                        right: width * 0.15,
                        top: height * 0.02,
                        bottom: height * 0.02,
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (_user.text.isEmpty || _user.text.isEmpty) {
                      _focusUser.requestFocus();
                      Messages.of(context)
                          .showInfo("Favor preencher o login e senha!");
                    } else {
                      final valueform = _keyForm.currentState?.validate();
                      if (valueform ?? false) {
                        if (await store.authMockApi(
                                _user.text, _password.text) ==
                            true) {
                          Modular.to.navigate('/home');
                        } else if (await store.authLocal(
                                _user.text, _password.text) ==
                            true) {
                          Modular.to.navigate('/home');
                        }
                      }
                    }
                  },
                  child: Text(
                    "Entrar",
                    style: theme.styleText,
                  ),
                ),
                SizedBox(
                  height: height * 0.22,
                ),
                InkWell(
                  onTap: () async {
                    var address = Uri.parse("https://www.google.com/");

                    if (!await launchUrl(
                      address,
                      mode: LaunchMode.externalApplication,
                    )) {
                      throw Exception('Could not launch $address');
                    }
                  },
                  child: Text(
                    "Política de Privacidade",
                    style: theme.styleText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
