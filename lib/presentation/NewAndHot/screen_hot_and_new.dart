import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/hotandnew/hotandnew_bloc/hotandnew_bloc.dart';
import 'package:netflix_project/presentation/NewAndHot/widgets/tabbar.dart';
import 'package:netflix_project/presentation/main_page/widgets/appbar_widget.dart';

class ScreenHotAndNew extends StatefulWidget {
  const ScreenHotAndNew({Key? key}) : super(key: key);





  @override
  State<ScreenHotAndNew> createState() => _ScreenHotAndNewState();
}



class _ScreenHotAndNewState extends State<ScreenHotAndNew> {

  @override
  void initState() {

       WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HotandnewBloc>(context)
          .add(const HotandnewEvent.loadDataInComing());
          print("event called");
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "New & Hot",
            ),
          ),
          body: TabBarWidget(),
        ),
      ),
    );
  }
}
