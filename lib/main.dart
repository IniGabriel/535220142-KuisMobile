import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: BackButton(
            onPressed: () {},
          ),
          title: Text(
            "Godrej",
            style: TextStyle(fontSize: 25),
          ),
          toolbarHeight: 100.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(45),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              padding: EdgeInsets.only(right: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket),
              padding: EdgeInsets.only(right: 40),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.all(30),
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'img/add-${index + 1}.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Belanja Berdasarkan Kategori",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Image.asset('img/gambarbawah.jpg'),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(right: 230),
                child: Text(
                  "Semua Produk",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                height: 180,
                child: Row(
                  children: [
                    Image.asset('img/alfa1.jpg'),
                    Image.asset('img/alfa2.jpg'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text("KRATINGDAENG 150ml          Paroti Roti Sisir Mentega 140 g")
                  ],
                ),
              ),
              
              Container(
                child: Row(
                  children: [
                    Text("Rp 7.300                                    Rp 11.000")
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: [
                    Container(
                      child:ElevatedButton(onPressed: (){}, child: Text("Keranjang")),
                      margin: EdgeInsets.only(left: 30),
                    ),
                    Container(
                      child:ElevatedButton(onPressed: (){}, child: Text("Keranjang")),
                      margin: EdgeInsets.only(left: 100),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),

              Container(
                height: 180,
                child: Row(
                  children: [
                    Image.asset('img/alfa3.jpg'),
                    Image.asset('img/alfa4.jpg'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text("Roma Sari Gandum               mentos Permen Rainbow Roll 37 g")
                  ],
                ),
              ),
              
              Container(
                child: Row(
                  children: [
                    Text("Rp 9.900                                  Rp 4.700")
                  ],
                ),
              ),

              Container(
                child: Row(
                  children: [
                    Container(
                      child:ElevatedButton(onPressed: (){}, child: Text("Keranjang")),
                      margin: EdgeInsets.only(left: 30),
                    ),
                    Container(
                      child:ElevatedButton(onPressed: (){}, child: Text("Keranjang")),
                      margin: EdgeInsets.only(left: 100),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
