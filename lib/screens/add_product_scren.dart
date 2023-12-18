import 'package:flutter/material.dart';
import 'package:inventory/components/text_field.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _buyPriceController = TextEditingController();
  final TextEditingController _sellpPriceController = TextEditingController();
  final TextEditingController _warehouAddressController =
      TextEditingController();

  Future<void> AddProduct() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text("Something Went Wrong. Try Again"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Products".toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Please Fill the form to add the new product",
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InputField(placeholder: "Name", controllers: _nameController),
            SizedBox(
              height: 20,
            ),
            InputField(
                placeholder: "Quantity", controllers: _quantityController),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: InputField(
                      placeholder: "Buy Price",
                      controllers: _buyPriceController),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.44,
                  child: InputField(
                      placeholder: "Sell Price",
                      controllers: _sellpPriceController),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InputField(
                placeholder: "WareHouse Address",
                controllers: _warehouAddressController),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 110, 173, 182),
              ),
              child: Center(
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: MaterialButton(
                onPressed: () {
                  AddProduct();
                },
                child: Text(
                  "Add Product",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
