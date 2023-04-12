import "package:flutter/material.dart";
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormCard extends StatefulWidget {
  const FormCard({super.key});

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {

  var cardMask = MaskTextInputFormatter(
    mask: '####-####-####-####', 
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
  );

  var dateMask = MaskTextInputFormatter(
    mask: '##/##', 
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
  );

  var cvvMask = MaskTextInputFormatter(
    mask: '####', 
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Center(child: Image.network("https://usa.visa.com/dam/VCOM/regional/na/us/common-assets/cards/visa-traditional-card-800x450.jpg")),
          const SizedBox(height: 20,),
          const Text('Ingresa los datos de tu tarjeta'),
          inputName_(),
          const SizedBox(height: 20),
          inputCard_(),
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*0.5,
              child: inputDate_(),),
              
              SizedBox(width: MediaQuery.of(context).size.width*0.5,
              child: inputCVV_(),)
            ],
          )
        ],
      ),
    );
  }

  Container inputName_() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Nombre del titular de la tarjeta'
          ),
        ),
      );
  }

  Container inputCard_() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [cardMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Número de tarjeta'
          ),
        ),
      );
  }

  Container inputDate_() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [dateMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Fecha de la tarjeta'
          ),
        ),
      );
  }

  Container inputCVV_() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [cvvMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Codigo de seguridad'
          ),
        ),
      );
  }

}