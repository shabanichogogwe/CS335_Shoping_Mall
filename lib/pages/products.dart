import 'package:flutter/material.dart';
import 'package:shopping_mall/pages/products_admin.dart';

import 'product_create.dart';
import 'product_list.dart';

class ProductsPage extends StatelessWidget {
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
                    title: Text('Manage Products'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/admin');
                    },
                  )
                ],
              ),
            ),
            appBar: AppBar(
              title: Text('Shopping Mall'),
            ),
            body: Center(child: Text('Manage your Products'))));
  }
}
