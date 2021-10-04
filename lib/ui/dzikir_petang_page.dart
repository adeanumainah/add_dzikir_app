import 'package:add_dzikir_app/model/dzikir_petang.dart';
import 'package:add_dzikir_app/theme.dart';
import 'package:flutter/material.dart';

class DzikirPetangPage extends StatelessWidget {
  const DzikirPetangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: orangeColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  //widget yang menangani ketika kita overfload
                  Expanded(
                      child: Text(
                        'Dzikir Petang',
                        style: purplePoppins.copyWith(fontSize: 18),
                      ))
                ],
              ),
              Expanded(
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: dataDzikirPetang.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(edge),
                          padding: EdgeInsets.all(edge),
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(dataDzikirPetang[index].title2,
                                    style:
                                    orangesPoppins.copyWith(fontSize: 20),
                                    textAlign: TextAlign.center),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  dataDzikirPetang[index].arab2,
                                  style:
                                  orangesPoppins.copyWith(fontSize: 20),
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  dataDzikirPetang[index].latin2,
                                  style:
                                  orangesPoppins.copyWith(fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  dataDzikirPetang[index].arti2,
                                  style:
                                  orangesPoppins.copyWith(fontSize: 18),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
