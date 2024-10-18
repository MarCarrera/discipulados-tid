import 'package:flutter/cupertino.dart';

class OptionsModal extends StatelessWidget {
  const OptionsModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text('Opciones'),
      message: Text('Selecciona una opción'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          onPressed: () {
            // Acción 1
            Navigator.pop(context);
          },
          child: Text('Opción 1'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            // Acción 2
            Navigator.pop(context);
          },
          child: Text('Opción 2'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Cancelar'),
      ),
    );
  }
}