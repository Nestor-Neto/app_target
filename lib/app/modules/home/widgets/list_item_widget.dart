import 'package:flutter/material.dart';
import 'package:app_target/app/shared/theme/theme.dart';

class ListItemWidget extends StatelessWidget {
  final VoidCallback _edit;
  final VoidCallback _delete;
  final String _text;

  const ListItemWidget({
    super.key,
    required String text,
    required VoidCallback edit,
    required VoidCallback delete,
  })  : _text = text,
        _edit = edit,
        _delete = delete;

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
                      _text,
                      style: theme.styleTextItemBoxWidget,
                    ),
                  ),
                ),
              ),
              IntrinsicWidth(
                child: IconButton(
                  onPressed: _edit,
                  iconSize: 40,
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.edit, // .pencil_alt,
                    size: 34,
                  ),
                ),
              ),
              IntrinsicWidth(
                child: IconButton(
                  onPressed: _delete,
                  iconSize: 40,
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
