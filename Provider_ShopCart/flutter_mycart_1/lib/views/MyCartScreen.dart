// import 'package:flutter/material.dart';
// import 'package:flutter_mycart_1/controllers/ProductController.dart';
// import 'package:provider/provider.dart';

// class MyCartScreen extends StatefulWidget {
//   const MyCartScreen({super.key});

//   @override
//   State<MyCartScreen> createState() => _MyCartScreenState();
// }

// class _MyCartScreenState extends State<MyCartScreen> {
//   dynamic providerObj = Provider.of<ProductController>(context, listen: false);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "Appbar",
//           ),
//           centerTitle: true,
//         ),
//         body: ListView.builder(
//             itemCount: providerObj.productmodelObj.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(5),

//                  decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 16,
//                     spreadRadius: -4,
//                     offset: Offset(0, 4))
//               ],
//               color: Colors.white,
//             ),


//             child : Row (  
//                children : [  
//                      Image.asset(
//                   providerObj.productmodelObj[index].imagePath,
//                   height: 80,
//                 ),


//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       providerObj.productmodelObj[index].productName,
                    
//                     ),
//                     Text(
//                       providerObj.productmodelObj[index].productPrice,
                     
//                     ),

                    
//                   ],
//                 ),
                     
//                ]

               
//             ), 

            

            


//               );
//             }));
//   }
// }
