import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m2_tp_flutter/screens/stations_screen.dart';

import '../cubit/pollution_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<PollutionCubit>();
      cubit.fetchPollution();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pollution in Corsica'),
        ),
        body: BlocBuilder<PollutionCubit, PollutionState>(
            builder: (context, state) {
              if (state is PollutionLoadingState || state is PollutionInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is PollutionLoadedState) {
                final pollutionList = state.pollutions;
                //print("Mes data");
                //print(pollutionList[0][""]);

                return ListView.builder(
                    itemCount: pollutionList.length,
                    itemBuilder: (context, index) {
                      //final pollution=pollutionList[index];
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context)=>StationScreen(
                                  e: pollutionList[index][1],
                                )
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.all(20.0),
                          child: Center(
                              child: Text(
                                pollutionList[index][0],
                                style: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white,),
                              )),
                        ),
                      );
                    });
              } else if (state is PollutionErrorState) {
                return Text(state.error);
              }
              return Center(
                child: Text(state.toString()),
              );
            }));
  }
}

