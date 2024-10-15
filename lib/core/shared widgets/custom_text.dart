
import'package:flutter/material.dart';
Widget CustomText({
  TextEditingController? controller,
  required TextInputType type,//number or letter 
  Function(String)? onChange,
  FormFieldValidator? validate,//field not empty 
  String ? label,
  String ? hint,
  IconData ? prefix,//eye 
  bool  isObscure=false,//password hidden or not
    IconData ? suffix,
    Function()?pressed,//pressed on eye Icon 
    Function()?tap,
    bool ? enable,//on preesed convert border to green  
String? errorText,



})=> TextFormField(
  onTap:tap,
  enabled:enable,
  controller:controller,
  obscureText:isObscure,
  decoration: InputDecoration(errorText:errorText,
    labelText:label,
    hintText:hint,
    prefixIcon:Icon(prefix
    ),
    suffixIcon:suffix!=null ?IconButton(   
      onPressed:pressed,
      icon:Icon(suffix,)
    ):null,
    border:OutlineInputBorder(
      borderRadius:BorderRadius.circular(30.0),
    ),
    focusedBorder:OutlineInputBorder(borderSide:BorderSide(color:
    Colors.green ,
    //ColorApp.PrimaryColor,
    width:2.0),//تصير الحواف مربعة 

    ),
  ),
  style:TextStyle(fontSize:14),
  keyboardType:type,
  onChanged:onChange,
  validator:validate,

);