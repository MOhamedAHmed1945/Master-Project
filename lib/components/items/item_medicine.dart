import 'package:flutter/material.dart';

import '../../models/data_product_model.dart';
import '../../screens/products_screen_details/products_screen_details.dart';
class ItemMedicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 30.0,
          crossAxisSpacing: 35.0,
          crossAxisCount: 2,
        ),
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index){
          return
            GestureDetector(
              onTap: () {
                /*Navigator.pushNamedAndRemoveUntil(
                    context, ProductsScreenDetails(detailsProduct: items[index],) as String, (route) => false);
              */
                    Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => ProductsScreenDetails(
                detailsProduct: items[index],
                ), //ItemModel[index]
                ),
                );
                },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
//color: Colors.deepPurple[50],
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.black54,
                    ),
                  ],
                ),
                child: Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        top: -5,
                        child: Padding(
                          padding:  EdgeInsets.all(9),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 9,
                            child: Image.asset(
                                items[index].productImage,
                            ),//product!.productImage
                          ),
                        ),
                      ),
// SizedBox(height:MediaQuery.of(context).size.height/10),
                      Positioned(
                        bottom: 0,
                        child: Column(
                          children: [
                            Text(
                             // name,//product.productName,
                              items[index].productName,
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width / 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'price: ',
                                      style: TextStyle(
                                        fontSize:
                                        MediaQuery.of(context).size.width / 22.0,
                                        color: Colors.lightBlue[900]!,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                     // price,//product.productPrice as String,
                                      items[index].productPrice.toString(),
                                      style: TextStyle(
                                        fontSize:
                                        MediaQuery.of(context).size.width / 22.0,
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  //available,//product.productState,
                                  items[index].productState,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width / 23.0,
                                    color: Colors.indigo[400],
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
    }
    );
  }
}