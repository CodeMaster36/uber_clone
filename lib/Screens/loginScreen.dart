import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone/Screens/mainScreen.dart';
import 'package:uber_clone/main.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 35.0,),
          Image(
            image: AssetImage("images/logo.png"),
            height: 350.0,
            width: 450.0,
            alignment: Alignment.center,
          ),

          SizedBox(height: 1.0,),
          Text(
            "Please Enter your Phone Number",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, fontFamily: "Brand Bold"),
          ),

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 1.0,),
                CountryCodePicker(
                  initialSelection: '+91',
                  favorite: ['+91','IN'],
                ),

                SizedBox(height: 12.0,),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0
                    ),
                  ),
                  style: TextStyle(fontSize: 20.0),
                ),

                SizedBox(height: 15.0,),
                ElevatedButton(
                  child: Text("NEXT"),
                  onPressed: ()
                  {
                    print("Button Pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black87,
                    onPrimary: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 20.0,
                    )
                  )
                ) ,


              ],
            ),
          ),
        ],
      )
    );
  }
}
