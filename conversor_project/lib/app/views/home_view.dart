import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 150,
                width: 150,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: DropdownButton(
                          items: [
                            DropdownMenuItem(
                              value: 'real',
                              child: Text('Real'),
                            ),
                            DropdownMenuItem(
                              value: 'dolar',
                              child: Text('Dolar'),
                            ),
                          ],
                          onChanged: (value) {},
                        )),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              RaisedButton(
                onPressed: () {},
                child: Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
