
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({
     super.key,
     this.onSaved,this.onChange,
     this.validator, this.prefixIcon,this.suffixIcon,
     this.obscureText =false,
     this.controller,
    this.hintText,
     this.keyboardType,
     this.labelText
   });


   final void Function(String?)? onSaved;
   final void Function(String?)? onChange;
   final String? Function(String?)? validator;
   final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText ;
  final TextEditingController? controller;
   final Widget? labelText;
   final Widget? hintText;
   final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {

      return TextFormField(
        
style: const TextStyle(color: Colors.white),
        keyboardType: keyboardType,
        controller: controller ,
        obscureText:obscureText,
        onSaved:onSaved ,
        onChanged: onChange,
        validator: validator,
          decoration:InputDecoration(
            filled: true,
            fillColor: Color(0xff233648),
            label:labelText ,
            hint:hintText ,

            prefixIcon:prefixIcon ,
            prefixIconColor: Colors.white,
            suffixIcon: suffixIcon,

              hintStyle: const TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w400,
                color:  Color(0xff929BAB)
              ),
      enabledBorder: buildBorder(),
           focusedBorder: buildBorder(),
            errorBorder: buildBorder(Colors.red),
            focusedErrorBorder: buildBorder(Colors.red),
            border:  buildBorder()

          )
      );

  }
   OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? const    Color(0xFF34506B),width: 1),
    );
   }
}

