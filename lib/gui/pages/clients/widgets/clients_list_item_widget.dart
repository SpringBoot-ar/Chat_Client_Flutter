import 'package:flutter/material.dart';

class ClientsListItemWidget extends StatelessWidget {
  ClientsListItemWidget(this.msg,{Key? key}) : super(key: key);
  String msg;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(msg,textAlign: TextAlign.center,),
      leading: IconButton(
        icon: Icon(Icons.delete,color: Colors.red),
        onPressed: () {  },
      ),
    );
  }
}
