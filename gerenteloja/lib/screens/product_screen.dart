import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gerenteloja/blocs/product_bloc.dart';

class ProductScreen extends StatelessWidget {

  final String categoryId;
  final DocumentSnapshot product;

  final ProductBloc _productBloc;
  final _formKey = GlobalKey<FormState>();

  ProductScreen({this.categoryId, this.product}) :
    _productBloc = ProductBloc(categoryId: categoryId, product: product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 0,
        title: Text("Criar Produto"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.save),
            onPressed: (){},
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
