import 'package:chat_client_flutter/gui/pages/clients/widgets/clients_list_item_widget.dart';
import 'package:flutter/material.dart';

class ClientsListWidget extends StatefulWidget {
  const ClientsListWidget({Key? key}) : super(key: key);

  @override
  State<ClientsListWidget> createState() => _ClientsListWidgetState();
}

class _ClientsListWidgetState extends State<ClientsListWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> msgs = [
      "osama",
      "esmaell",
      "ragad",
      "sad",
      "osama",
      "esmaell",
      "ragad",
      "sad",
      "osama",
      "esmaell",
      "ragad",
      "sad",
      "osama",
      "esmaell",
      "ragad",
      "sad",
    ];
    return Container(
      // color: Colors.green,
      padding: EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
      ),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ClientsListItemWidget(msgs[index]);
        },
        itemCount: msgs.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
