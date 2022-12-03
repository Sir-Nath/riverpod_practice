import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod_practice/pages/change_notifier_provider.dart';
import 'package:riverpod_practice/pages/futureProviderPage.dart';
import 'package:riverpod_practice/pages/provider_page.dart';
import 'package:riverpod_practice/pages/state_notifier_page.dart';
import 'package:riverpod_practice/pages/state_provider_page.dart';
import 'package:riverpod_practice/pages/stream_provider_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod Practice'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const ProviderPage();
                })
                );
              },
              child: Container(
                height: 40,
                color: Colors.yellow,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Provider',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const StateProviderPage();
                })
                );
              },
              child: Container(
                height: 40,
                color: Colors.red,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'State Provider',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const FutureProviderPage();
                })
                );
              },
              child: Container(
                height: 40,
                color: Colors.blue,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Future Provider',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const StreamProviderPage();
                })
                );
              },
              child: Container(
                height: 40,
                color: Colors.black,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    ' Stream Provider',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const ChangeNotifierProviderPage();
                })
                );
              },
              child: Container(
                height: 40,
                color: Colors.deepPurpleAccent,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Change Notifier Provider',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const StateNotifierProviderPage();
                })
                );
              },
              child: Container(
                height: 40,
                color: Colors.green,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'State Notifier Provider',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}