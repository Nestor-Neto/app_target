import 'package:app_target/app/modules/home/widgets/custom_text_Field_widget.dart';
import 'package:app_target/app/modules/home/widgets/list_item_widget.dart';
import 'package:app_target/app/shared/utils/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_store.dart';
import 'package:app_target/app/shared/theme/theme.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode focusNode = FocusNode();
  final textEditing = TextEditingController();
  HomeStore store = Modular.get<HomeStore>();
  @override
  void initState() {
    super.initState();

    WidgetsFlutterBinding.ensureInitialized()
        .addPostFrameCallback((timeStamp) async {
      focusNode.requestFocus();
      focusNode.addListener(() {
        if (!focusNode.hasFocus) {
          focusNode.unfocus();
          focusNode.requestFocus();
        }
      });
    });
    store.loadComments();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  // @override
  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final width = mediaQuery.width;
    final height = mediaQuery.height;

    final paddingRightText = width * 0.10;
    final paddingBottomText = height * 0.009;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: theme.backGroundSystemDesign,
          width: width,
          height: height,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Container(
                  height: height * 0.5,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Observer(builder: (_) {
                    return ListView.builder(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      itemCount: store.listDto.length,
                      itemBuilder: (context, index) => ListItemWidget(
                        text: store.listDto[index],
                        delete: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 10,
                              child: Container(
                                decoration:
                                    theme.backGroundSystemDesign.copyWith(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: height * 0.2,
                                width: width * 0.4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Excluir o Item?",
                                      style: theme.styleText,
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: width * 0.1,
                                        right: width * 0.1,
                                      ),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: width * 0.1,
                                            right: width * 0.1,
                                          ),
                                          child: Text(
                                            store.listDto[index],
                                            style: theme.styleText,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: width * 0.1,
                                        right: width * 0.1,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              store.delete(nr: index);
                                              store.unEditStatus();
                                              store.inputClean(
                                                  descritionEditing:
                                                      textEditing);
                                              Navigator.of(context).pop();
                                            },
                                            style: theme.buttonStyle,
                                            child: const Text("Confirmar"),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: theme.buttonStyle,
                                            child: const Text("Cancelar"),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        edit: () {
                          textEditing.text = store.listDto[index];
                          store.editStatus(nr: index);
                        },
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: paddingRightText,
                    bottom: paddingBottomText,
                    left: 40,
                  ),
                  child: Text(
                    "Digite seu Texto",
                    style: theme.styleTextItemBoxWidget,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: width * 0.7,
                  child: CustomTextFieldWidget(
                    obscureText: false,
                    focusNode: focusNode,
                    textEditingController: textEditing,
                    onCompleted: () async {
                      if (store.index != -1) {
                        if (textEditing.text.isNotEmpty ||
                            textEditing.text != "") {
                          await store.editItem(
                              item: textEditing.text, nr: store.index);
                          store.unEditStatus();
                          store.inputClean(descritionEditing: textEditing);
                        } else {
                          Messages.of(context).showInfo(
                              "O preenchimento do campo é obrigatório!");
                        }
                      } else {
                        if (textEditing.text.isNotEmpty ||
                            textEditing.text != "") {
                          await store.insert(item: textEditing.text);
                          store.inputClean(descritionEditing: textEditing);
                        } else {
                          Messages.of(context).showInfo(
                              "O preenchimento do campo é obrigatório!");
                        }
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.19,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
