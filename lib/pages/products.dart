import 'package:flutter/material.dart';

import '../product_manager.dart';
import 'package:shopping_mall/pages/userprofile.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Manage Products'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/admin');
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(title: Text('Shopping Mall'), actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),
                  );
                }),
            IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            )
          ]),
          body: ProductManager(products),
        ));
  }
}
