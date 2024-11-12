import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String hint;
  String suffix;
  // String prefix;
  TextEditingController controller;
  CustomTextField({
    Key? key,
    required this.hint,
    required this.suffix,
    // required this.prefix,
    required this.controller,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateTextWithDollarSign);
  }

  void _updateTextWithDollarSign() {
    if (!widget.controller.text.endsWith(widget.suffix)) {
      widget.controller.text =
          "${widget.controller.text.replaceAll(widget.suffix, '')}${widget.suffix}";
      widget.controller.selection = TextSelection.fromPosition(
        TextPosition(offset: widget.controller.text.length - 1),
      );
    }
    //  if (!widget.controller.text.startsWith(widget.prefix)) {
    //   widget.controller.text =
    //       "${widget.prefix}${widget.controller.text.replaceAll(widget.prefix, '')}";
    //   // widget.controller.selection = TextSelection.fromPosition(
    //   //   TextPosition(offset: widget.controller.text.length - 1),
    //   // );
    // }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateTextWithDollarSign);
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: widget.controller,
      style: TextStyle(color: Color(0xff121212)),
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint,
          hintStyle: TextStyle(color: Color(0xff12121299).withOpacity(0.6))),
    );
  }
}
