// import 'package:flutter/material.dart';
// import 'package:flutter_mycart_1/controllers/ProductController.dart';
// import 'package:flutter_mycart_1/model/ProductModel.dart/productmodel2.dart';
// import 'package:flutter_mycart_1/views/MyCartScreen.dart';
// import 'package:provider/provider.dart';

// class MyProductScreen extends StatefulWidget {
//   const MyProductScreen({super.key});

//   @override
//   State<MyProductScreen> createState() => _MyProductScreenState();
// }

// class _MyProductScreenState extends State<MyProductScreen> {
//   List<ProductModel> productmodelobj = [
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//     ProductModel(
//         imagePth: " ",
//         productName: "Banana",
//         productPrice: "Dozen \$40 ",
//         quantity: 2),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("My Product Screen"),
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) {
//                     return MyCartScreen();
//                   },
//                 ));
//               },
//               icon: Icon(Icons.shopping_bag_rounded),
//             )
//           ],
//         ),
//         body: ListView.builder(
//             itemCount: productmodelobj.length,
//             itemBuilder: (context, index) {
//               return Container(   
                    
//                      margin : EdgeInsets.all(10), 
//                      padding: EdgeInsets.all(5),

//                      decoration : BoxDecoration(  
//                        borderRadius: BorderRadius.circular(15), 
//                        boxShadow: const [
//                 BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 16,
//                     spreadRadius: -4,
//                     offset: Offset(0, 4))
//               ],
//               color: Colors.white,
//                      ), 




//                      child : Row (   
//                        children : [    

//                              Image.asset(productmodelobj[index].imagePth), 
//                              Column (  
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                children: [  
//                                         Text(productmodelobj[index].productName, 
                                          
//                                         ),



//                                          Text( productmodelobj[index].productPrice), 
                     
                     





//                                ],
//                              ), 

//                              const Spacer(), 

//                            GestureDetector(  
//                              onTap : () {   
//                                Provider.of<ProductController>(context, listen: false). addObjIncart(obj: productmodelobj[index]); 

//                                ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(  
//                                     duration: Duration(seconds : 1), 
//                                     content: Text("${productmodelobj[index].productName} successfully added in the cart")
//                                   )
//                                ); 
//                              }, 

//                              child : Container (  
//                                        decoration : BoxDecoration( 
//                                          color : Colors.green , 
//                                          borderRadius: BorderRadius.circular(10)
//                                        )
//                              )
//                            )

//                        ]
//                      )
//               );
//             }));
//   }
// }
