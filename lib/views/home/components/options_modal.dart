import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_user_view.dart';

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
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddUserView(),
                        ),
                      );
                    
          },
          child: Text('Agregar usuario'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            // Acción 2
            Navigator.pop(context);
          },
          child: Text('Cerrar sesión'),
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