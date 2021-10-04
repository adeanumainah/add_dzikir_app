import 'package:add_dzikir_app/model/dzikir_setelah_sholat.dart';
import 'package:add_dzikir_app/theme.dart';
import 'package:flutter/material.dart';

class DzikirSetelahSholat extends StatelessWidget {
  const DzikirSetelahSholat({Key? key}) : super(key: key);

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
                        'Dzikir Setelah Sholat',
                        style: purplePoppins.copyWith(fontSize: 18),
                      ))
              ],
              ),
              Expanded(
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listDzikirAfterPray.length,
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
                                Text(listDzikirAfterPray[index].title,
                                    style:
                                    orangesPoppins.copyWith(fontSize: 20),
                                    textAlign: TextAlign.center),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  listDzikirAfterPray[index].arabic,
                                  style:
                                  orangesPoppins.copyWith(fontSize: 20),
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  listDzikirAfterPray[index].latin,
                                  style:
                                  orangesPoppins.copyWith(fontSize: 20),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  listDzikirAfterPray[index].translate,
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
