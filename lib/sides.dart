import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class SideMenuItem extends StatefulWidget {
  int selno;
  String word;
  int index;
  SideMenuItem(
      {Key? key, required this.selno, required this.word, required this.index})
      : super(key: key);

  @override
  State<SideMenuItem> createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem> {
  int? _selind;
  bool tapu = false;
  void CambioColor(int index) {
    setState(() {
      _selind = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .72,
      height: 50,
      decoration: BoxDecoration(
        color: _selind == widget.selno
            ? Theme.of(context).colorScheme.error
            : Theme.of(context).colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: widget.selno == 0
            ? Icon(Icons.favorite_rounded, color: Color(0xff985a56), size: 30)
            : Icon(Icons.favorite_outline_outlined,
            color: Color(0xff985a56), size: 25),
        title: Text(
          widget.word,
          style: TextStyle(
            fontSize: 23,
            wordSpacing: 16,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        // selectedTileColor: Color(0xffead4d3),
        onTap: () {
          CambioColor(widget.selno);
          setState(() {
            tapu = !tapu;
          });
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
