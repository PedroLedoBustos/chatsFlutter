import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget{
  const MessageFieldBox({super.key});


  
  @override
  Widget build(BuildContext context) {

    final textControler = TextEditingController();
    final FocusNode focusNode = FocusNode();


    final outlineInputBorder= UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40));
    
    final inputDecoration= InputDecoration(
        hintText: 'Termina tu mensaje con "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled:true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: (){
            final textValue= textControler.value.text;
            print('button: $textValue');
            textControler.clear();

          },)
      );



    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textControler,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textControler.clear();
        focusNode.requestFocus();
      },
      


    );
  }
  
}