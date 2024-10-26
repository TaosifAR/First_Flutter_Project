import 'package:basic_app/home.dart';
import 'package:flutter/material.dart';

void main ()
{
  return runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    int i=0;
    return MaterialApp(

home: Home(),
    );
  }
}
