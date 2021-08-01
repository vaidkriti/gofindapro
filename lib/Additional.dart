import 'package:flutter/material.dart';

class Additional extends StatefulWidget {
  const Additional({Key? key}) : super(key: key);

  @override
  _AdditionalState createState() => _AdditionalState();
}

class _AdditionalState extends State<Additional> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 42.0, top: 40.0),
            child: Text(
              "Additional Information",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42.0),
                child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.grey.shade100,
                    ),
                    child: Icon(
                      Icons.add,
                      size: 50.0,
                      color: Colors.grey,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "Upload Profile Picture",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "DOB",
              style: TextStyle(fontSize: 15.0, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right:40.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "Phone Number",
              style: TextStyle(fontSize: 15.0, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right:40.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "Address Line 1",
              style: TextStyle(fontSize: 15.0, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right:40.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "Please choose your account category.",
              style: TextStyle(fontSize: 13.0, color: Colors.grey.shade600),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "Category",
              style: TextStyle(fontSize: 13.0, color: Colors.black87),
            ),
          ),
         SizedBox(
           height:10.0
         ),
         Padding(
           padding: const EdgeInsets.only(left:40.0,right:60.0),
           child: Container(
               height:60.0,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25.0),
                 color: Colors.grey.shade300,
               ),
               child: Padding(
                 padding: const EdgeInsets.only(top:18.0,left:18.0,right:20.0),
                 child: Text("Health & Life Style",style:TextStyle(fontSize:15.0)),
               )
           ),
         ),
          SizedBox(
              height:10.0
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.0),
            child: Text(
              "Sub Category",
              style: TextStyle(fontSize: 13.0, color: Colors.black87),
            ),
          ),
          SizedBox(
              height:10.0
          ),
          Padding(
            padding: const EdgeInsets.only(left:40.0,right:60.0),
            child: Container(
                height:60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:18.0,left:18.0,right:20.0),
                  child: Text("Yoga",style:TextStyle(fontSize:15.0)),
                )
            ),
          ),
          SizedBox(
            height:20.0,
          ),
          Row(
            children: [
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: Container(
                    height:70.0,
                    width:70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color:  Color(0xffBE2EDD).withOpacity(0.31),
                    ),
                    child: Icon(Icons.navigate_before,size: 30.0,),
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(left:170.0),
                  child: Container(
                    height:70.0,
                    width:70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color:  Color(0xff22A6B3).withOpacity(0.31),
                    ),
                    child: Icon(Icons.navigate_next,size: 30.0,),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
