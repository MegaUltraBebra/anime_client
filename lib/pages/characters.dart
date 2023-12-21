import 'package:anime_client/themes/styles.dart';
import 'package:anime_client/widgets/appbar.dart';
import 'package:anime_client/widgets/dropdownFilter.dart';
import 'package:anime_client/widgets/itemscatalog.dart';
import 'package:anime_client/widgets/yearpicker.dart';
import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  //static const String route = '/animes';

  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> list = <String>[
                                      'Новые', 
                                      'От А До Я', 
                                      'От Я до А', 
                                      'Сначала моложе', 
                                      'Сначала старше'];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppbar(context: context),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03, right: MediaQuery.of(context).size.width*0.03, top: MediaQuery.of(context).size.height*0.07),
          alignment: Alignment.bottomCenter,
          child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      //SearchBarState(),

                      //const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Сортировать по: ", style: uiTextStyle,),

                              const SizedBox(height: 10),

                              DropdownState(list: list)
                          ],
                        ),

                        const SizedBox(width: 50),
                      ],
                    )
                  ],
                ),
                const ItemsCatalogState()
              ]
            ),
          ),
        )
      );
  }
}