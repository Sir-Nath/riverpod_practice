//
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../services/stream_service.dart';
//
//
// final streamValueProvider = StreamProvider.autoDispose((ref) {
//   final streamService = ref.watch(streamServiceProvider);
//   return streamService.getStream();
// });
//
// class StreamProviderPage extends ConsumerWidget {
//   const StreamProviderPage({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final streamValue = ref.watch(streamValueProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stream Provider'),
//       ),
//       body: Center(
//         child: streamValue.when(data: (int data) {
//           return Text(
//             data.toString(),
//             style: const TextStyle(fontSize: 30),
//           );
//         }, error: (Object error, StackTrace stackTrace) {
//           return Text(error.toString());
//         }, loading: () {
//           return const CircularProgressIndicator();
//         }),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/stream_service.dart';

final streamProvider = StreamProvider.autoDispose((ref) {
  final streamProv = ref.watch(streamServiceProvider);
  return streamProv.getStream();
});

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamVal = ref.watch(streamProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text(' Stream Provider'),
          centerTitle: true,
          actions: const [
            Icon(Icons.refresh),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Center(
            child: streamVal.when(data: (int data) {
          return Text(
            '$data',
            style: Theme.of(context).textTheme.headline4,
          );
        }, error: (error, stacktrace) {
          return null;
        }, loading: () {
          return const CircularProgressIndicator();
        }))

        );
  }
}
