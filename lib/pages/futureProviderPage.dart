import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/models/suggestion_model.dart';

import '../services/api_service.dart';

//use this when there is no need to pass a parameter
// final futureProvider = FutureProvider<Suggestion>((ref){
//   final apiService = ref.watch(apiServiceProvider);
//   return apiService.getSuggestion();
// });

final futureProvider = FutureProvider.family.autoDispose<Suggestion, String>((ref, id){
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getSuggestion(id);
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sugRef = ref.watch(futureProvider('1'));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Provider'),
          centerTitle: true,
          actions: const [
            Icon(Icons.refresh),
            SizedBox(width: 20,)
          ],
        ),
        body: RefreshIndicator(
          onRefresh: ()=> ref.refresh(futureProvider('1').future),
          child: ListView(
              children: [sugRef.when(data: (data){
                return Text(
                    data.activity
                );
              }, error: (error, _){
                return Text(error.toString());
              }, loading: (){
                return const CircularProgressIndicator();
              }),]

          ),
        )
    );
  }
}
