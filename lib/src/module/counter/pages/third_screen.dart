import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state.wasIncremented == true) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Incremented!'),
                  duration: Duration(milliseconds: 300),
                ));
              } else if (state.wasIncremented == false) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Decremented!'),
                  duration: Duration(milliseconds: 300),
                ));
              }
            },
            builder: (context, state) {
              if (state.counterValue < 0) {
                return Text(
                  '${state.counterValue}  : -VE Value',
                  style: Theme.of(context).textTheme.headline4,
                );
              } else {
                return Text(
                  '${state.counterValue} : +VE Value',
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            },
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: "3ndDecrement",
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                heroTag: "2ndIncrement",
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          MaterialButton(
            color: widget.color,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<CounterCubit>(context),
                    child: const SecondScreen(
                        title: '2nd Screen', color: Colors.blue),
                  ),
                ),
              );
            },
            child: const Text('Go To Next Screen'),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
