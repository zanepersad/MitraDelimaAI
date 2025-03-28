import 'package:flutter/material.dart';
import 'package:mitra_delima_ai/cubit/counter_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CounterCubit counter = CounterCubit(initialData: 90);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // load
            StreamBuilder(
              builder: (contex, snapsot) {
                if (snapsot.data == null) {
                  return const Center(
                    child: Text(
                      "data is null",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
                return Center(
                  child: Text(
                    "${snapsot.data}",
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              initialData: counter.initialData,
              stream: counter.stream,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: counter.tambahData,
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                      weight: 500,
                    )),
                IconButton(
                    onPressed: counter.resetData,
                    icon: Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 20,
                      weight: 500,
                    )),
                IconButton(
                    onPressed: counter.kurangiData,
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 20,
                      weight: 500,
                    )),
              ],
            ),
          ],
        ));
  }
}
