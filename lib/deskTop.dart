import 'package:flutter/material.dart';

class DeskTopScreen extends StatelessWidget {
  const DeskTopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body:Row(

        children: [
          Expanded(
            child: Container(
              height:double.infinity,
              color: Colors.teal,
            ),
          ),

          SizedBox(height: 40.0,),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login with your account",style: Theme.of(context).textTheme.headline4,),
                SizedBox(height: 10.0,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
             SizedBox(height: 40.0,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 40.0,),
                Row(children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      height: 45.0,
                      child: MaterialButton(onPressed: (){},
                      color: Colors.teal,
                        child: Text("login",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                  ,SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      height: 45.0,
                      child: MaterialButton(onPressed: (){},
                        color: Colors.blue,
                        child: Text("Register",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],)
              ],
            ),
          )
          )
        ],
      ),

    );
  }
}
