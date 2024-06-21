import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_app/model/data_model.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());
  static DataCubit get(context) => BlocProvider.of(context);

  List<BestSelling> itemsBest = [];
  List<NewArrival> itemsArrival = [];
  List<RecommendedForYou> itemsRecommended = [];

  Future<void> readJson() async {
      emit(LoadingGetDataState());
    try {
      final String response =
          await rootBundle.loadString('assets/dummyData.json');
      // print(response);
      final data = await json.decode(response);
      // print(data);
      for (var element in data['bestSelling']) {
        itemsBest.add(BestSelling.fromJson(element));
      }
      for (var element in data['newArrival']) {
        itemsArrival.add(NewArrival.fromJson(element));
      }
      for (var element in data['recommendedForYou']) {
        itemsRecommended.add(RecommendedForYou.fromJson(element));
      }
      emit(SuccessGetDataState());
    } catch (e) {
      emit(ErrorGetDataState());
    }
  }
}


// import 'dart:convert';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';
// import 'data_state.dart';

// class DataCubit extends Cubit<DataState> {
//   DataCubit() : super(DataInitial());

//   List items = [];

//   static DataCubit get(context) => BlocProvider.of(context);

//   Future<void> readJson() async {
//     try {
//       emit(LoadingGetDataState());
//       final String response = await rootBundle.loadString('assets/dummyData.json');
//       final data = json.decode(response);

//       // Combine all items into a single list
//       items = [
//         ...data['bestSelling'],
//         ...data['newArrival'],
//         ...data['recommendedForYou'],
//       ];

//       emit(SuccessGetDataState());
//     } catch (e) {
//       emit(ErrorGetDataState(e.toString()));
//     }
//   }
// }
