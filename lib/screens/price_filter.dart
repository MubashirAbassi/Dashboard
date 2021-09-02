import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  String dropdownValue = "Min";
  List<Product> products = [
    Product(name: 'Min', type: 'data'),
    Product(name: 'Max', type: 'data'),
    Product(name: 'sep2', type: 'sep'),
    Product(name: '100 to 200', type: 'data'),
    Product(name: '200 to 300', type: 'data'),
    Product(name: 'sep3', type: 'sep'),
    Product(name: 'Low', type: 'data'),
    Product(name: 'Medium', type: 'data'),
    Product(name: 'High', type: 'data'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 70.0,
        width: 200,
        child: Center(
          child: Column(
            children: [
              Text('Price Filter',style: TextStyle(fontSize: 25.0,color: Colors.green.shade900,fontWeight: FontWeight.bold),),
              Expanded(
                child: DropdownButton<String>(
                  value: dropdownValue,
                  items: products.map((value) {
                    return DropdownMenuItem(
                      value: value.name,
                      child: value.type == 'data'
                          ? Text(value.name)
                          : Divider(
                        color: Colors.grey.shade600,
                        thickness: 3,
                      ),
                    );
                  }).toList(),
                  style: TextStyle(color: Colors.green.shade900,fontSize: 20.0,fontWeight: FontWeight.bold),
                  onChanged: (newValue) {

                    setState(() {
                      dropdownValue = newValue;

                    });

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
class Product {
  String name;
  String type;

  Product({this.name, this.type});
}