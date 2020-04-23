import 'package:flutter/material.dart';
import 'package:hardshop2/ui/ProductsListItem.dart';

class productPage extends StatelessWidget {
  productPage({Key key}) : super(key: key);
  BuildContext context;

  Widget build(BuildContext context) {
    this.context = context;
    final _ProductPages = <Widget>[
      Center(child: Text("Page one")),/*TODO: Pages will be gotten dynamically from firebase*/
      Center(child: Text("Page two")),
      Center(child: Text("Page three")),
    ];
    final _ProductTabs = <Tab>[
      Tab(child: Text("Construction")),
      Tab(child: Text("Electricity")),
      Tab(child: Text("Plombing")),
    ];
    return DefaultTabController(
        length: _ProductTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: Icon(Icons.menu),
            title: Text("Product"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {/*TODO*/},
              ),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text('Text 1')),
                  PopupMenuItem(child: Text('Text 2'))
                ];
              })
            ],
            bottom: TabBar(
              tabs: _ProductTabs,
            ),
          ),
          body: _buildProductsListPage(),
          )

        );
  }
  _buildProductsListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
           if (index == 4) {
            return SizedBox(
              height: 12.0,
            );
          } else {
            return _dummyProductsList()[index];
          }
        },
      ),
    );
  }

  _dummyProductsList() {
    return [
      ProductsListItem(
        name: "Hammer",
        price: 5000,
        location: "Quifuerou, Biyemassi",
        imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/crudapp-c15e7.appspot.com/o/Construction%2Fhammer.jpg?alt=media&token=cf6e65ed-bf29-4391-8ad5-34af24591443",
      ),
      ProductsListItem(
        name: "Iron Rod",
        price: 3000,
        location: "Cogeni, Bali",
        imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/crudapp-c15e7.appspot.com/o/Construction%2Ftoolbox.jpg?alt=media&token=9bd03a21-4018-47e6-b549-28918967ae53",
      ),
      ProductsListItem(
        name: "Cement",
        price: 249,
        location: "Dangot, Bonaberi",
        imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/crudapp-c15e7.appspot.com/o/Construction%2Fultratech-cement-500x500.jpg?alt=media&token=89b93c84-6685-44c3-a03f-726fe220aea9",
      ),
      ProductsListItem(
        name: "Sand",
        price: 120000,
        location: "Sanaga, Kribi",
        imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/crudapp-c15e7.appspot.com/o/Construction%2Ftoolbox.jpg?alt=media&token=9bd03a21-4018-47e6-b549-28918967ae53",
      ),
      ProductsListItem(
        name: "Plank",
        price: 4000,
        location: "Placam, Mendong",
        imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/crudapp-c15e7.appspot.com/o/Construction%2Ftoolbox.jpg?alt=media&token=9bd03a21-4018-47e6-b549-28918967ae53",
      ),
      ProductsListItem(
        name: "Construction Kit",
        price: 10000,
        location: "Cogeni, Bonanjo",
        imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/crudapp-c15e7.appspot.com/o/Construction%2Fhammer.jpg?alt=media&token=cf6e65ed-bf29-4391-8ad5-34af24591443",
      ),
    ];
  }
}
