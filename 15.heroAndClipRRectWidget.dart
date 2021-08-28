import "package:flutter/material.dart";

void main() {
  runApp(allone());
}

class allone extends StatelessWidget {
  const allone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hero Animation", style: TextStyle(color: Colors.white)),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return secondPage();
            }),
          );
        },
        child: Hero(
          tag: 'jennie',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hero Animation", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Hero(
          tag: "jennie",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://inikpop.com/wp-content/uploads/2018/12/jennie.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
