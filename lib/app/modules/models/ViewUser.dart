import 'package:app_target/app/modules/models/user_model.dart';
import 'package:flutter/material.dart';

class ViewUser extends StatefulWidget {
  final UserModel user;

  const ViewUser({Key? key, required this.user}) : super(key: key);

  @override
  State<ViewUser> createState() => _ViewUserState();
}

class _ViewUserState extends State<ViewUser> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: LayoutBuilder(
        builder: (context, constraints) => Container(
          decoration: const BoxDecoration(
            border: BorderDirectional(
              bottom: BorderSide(
                color: Color.fromRGBO(0, 0, 0, 0.1),
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: constraints.maxWidth * 0.1),
                    child: Text(
                      widget.user.name,
                      //style: theme.styleTextItemBoxWidget,
                    ),
                  ),
                ),
              ),
              // IntrinsicWidth(
              //   child: IconButton(
              //     onPressed: _edit,
              //     iconSize: 40,
              //     padding: const EdgeInsets.all(0),
              //     icon: const Icon(
              //       Icons.edit, // .pencil_alt,
              //       size: 34,
              //     ),
              //   ),
              // ),
              // IntrinsicWidth(
              //   child: IconButton(
              //     onPressed: _delete,
              //     iconSize: 40,
              //     padding: const EdgeInsets.all(0),
              //     icon: const Icon(
              //       Icons.cancel,
              //       color: Colors.red,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
