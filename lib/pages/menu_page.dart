import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:makeatwist/bloc/page_index_bloc.dart';
import 'package:makeatwist/helpers/option_type_helper.dart';
import 'package:makeatwist/inherited/first_textfield_provider.dart';
import 'package:makeatwist/inherited/page_index_provider.dart';
import 'package:makeatwist/inherited/second_textfield_provider.dart';
import 'package:makeatwist/inherited/tab_index_provider.dart';
import 'package:makeatwist/models/page_index_model.dart';
import 'package:makeatwist/models/tab_index_model.dart';
import 'package:makeatwist/pages/activity_page.dart';
import 'package:makeatwist/pages/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  PageIndexBloc _bloc;
  @override
  Widget build(BuildContext context) {
    //
    _bloc = Provider.of(context);
    //
    TabIndex _tabIndex = InheritedTabIndex.of(context);
    return FirstInheritedTextField(
      firstIdea: TextEditingController(),
      child: SecondInheritedTextField(
        secondIdea: TextEditingController(),
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            //TODO: dot indicator
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Center(
                child: Text('Make a Twist',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
              bottom: TabBar(
                onTap: (tabIndex) {
                  _tabIndex.index = tabIndex;
                  print('TabIndex: ${_tabIndex.index.toString()}');
                },
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                tabs: const <Widget>[
                  Tab(
                      icon: Icon(FontAwesomeIcons.compass),
                      child: Text('Content')),
                  Tab(
                      icon: Icon(FontAwesomeIcons.microscope),
                      child: Text('Process')),
                  Tab(
                      icon: Icon(FontAwesomeIcons.theaterMasks),
                      child: Text('Product')),
                  Tab(
                      icon: Icon(FontAwesomeIcons.graduationCap),
                      child: Text('Activity')),
                ],
              ),
            ),
            body: SafeArea(
              child: TabBarView(
                children: <Widget>[
                  HomePage(
                    option: OptionType.content,
                  ),
                  HomePage(
                    option: OptionType.process,
                  ),
                  HomePage(
                    option: OptionType.product,
                  ),
                  ActivityPage(),
                ],
              ),
            ),
            bottomNavigationBar: StreamBuilder<PageIndexModel>(
              stream: _bloc.pageModelStream,
              initialData: PageIndexModel(),
              builder: (BuildContext context,
                  AsyncSnapshot<PageIndexModel> snapshot) {
                return BottomAppBar(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DotsIndicator(
                        dotsCount: 7,
                        position: snapshot.data.index,
                        decorator: DotsDecorator(
                          color: Colors.black,
                          activeColor: Colors.pinkAccent,
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
