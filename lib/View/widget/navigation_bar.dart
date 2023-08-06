import 'package:flutter/material.dart';

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _Navigations();
}

class _Navigations extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: NavigationBar(
       backgroundColor: Colors.white,
       
        destinations: const <Widget>[
          NavigationDestination(
            
            icon: Icon(Icons.home , color: Colors.blueGrey,), label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search,color:Colors.blueGrey,),
            label: '',
            
          ),
          NavigationDestination(
            icon: Icon(Icons.food_bank_outlined , color:Colors.blueGrey,),
            label: '',
          ),
            NavigationDestination(
          
            icon: Icon(Icons.notifications_active,color:Colors.blueGrey,),
            label: '',
          ),
            NavigationDestination(
            
            icon: Icon(Icons.person , color:Colors.blueGrey,),
            label: '',
          ),
        ],
      ),
    
    );
  }
}
