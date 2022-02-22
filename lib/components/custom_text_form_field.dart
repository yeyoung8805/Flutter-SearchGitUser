import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {

  @override
  _DefaultSearchField createState() => _DefaultSearchField();
}

class _DefaultSearchField extends State<DefaultSearchField>{

  FocusNode _focusNode = FocusNode();
  bool isFocus = false;

  @override
  void initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    _focusNode.addListener(() {
      _onFocusChange();
    });
  }

  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }

  void _unFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Expanded(
                child: TextField(
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "Enter in your keyword",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )
                  ),
                ),
              ),
              Container(
                width: isFocus? 50  : 0,
                child: isFocus
                  ? Center(
                  child: GestureDetector(
                    onTap: _unFocus,
                    child: Text(
                      "cancel",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
                    :SizedBox(),
              )
            ],
    );
  }
}
