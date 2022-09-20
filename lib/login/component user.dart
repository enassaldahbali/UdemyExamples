import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  Color background=Colors.blue ,
  required  Function() function,
  bool isUpperCase=true,
  required String text,
  double radious=10.0}){

  return Container(
  width: width,
    height: 40.0,
decoration: BoxDecoration(

  borderRadius: BorderRadius.circular(10.0),
  color: background,
),

    child: MaterialButton(onPressed: function,

       child: Text(isUpperCase?text.toUpperCase():text,style:
         TextStyle(color: Colors.white)

         ,),
    ),
  );


}
Widget defaultFormText({
   required TextEditingController controller,
  required TextInputType type ,
  void Function(String)? onSubmit,
  Function(String)? onChange,
  required  String? Function(String?)? validate,
  String? lable,
 required IconData? prefex,
  bool isPassword=false,
  IconData? sufficient,
  Function()? onSufficientPressed,

}
    )=>  TextFormField(

    controller:controller ,
    keyboardType: TextInputType.visiblePassword,
    obscureText:isPassword,
    onFieldSubmitted:onSubmit,
    onChanged: onChange,
    validator:validate,


    decoration: InputDecoration(
      labelText: lable,

      prefixIcon: Icon(prefex),
      border: OutlineInputBorder(),
      suffixIcon: sufficient!=null? IconButton(  onPressed:onSufficientPressed, icon: Icon(sufficient),):null,

    ),


);
