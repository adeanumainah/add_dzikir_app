import 'package:add_dzikir_app/theme.dart';
import 'package:add_dzikir_app/ui/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DzikirSetiapSaat extends StatelessWidget {
  const DzikirSetiapSaat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //header
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: purpleColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 8
                        ),
                        child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back, size: 24, color: orangeColor,
                          )),
                      ),
                      Stack(children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(left: edge),
                          child: Text('Dzikir setiap saat',
                          style: orangesPoppins.copyWith(
                            fontSize: 28
                          ),
                          maxLines: 2,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                            child: Flexible(
                              child: Image.asset('assets/img_3.png',
                              width: 190,),
                            ),
                        )
                      ],)
                    ],
                  ),
                ),
              ),
              //body
              SizedBox(height: edge),
              ItemMenu(
                jumlah: '33X',
                arab: 'أَسْتَغْفِرُ اللهَ الْعَظِـيْم',
                  latin: 'Astaghfirullaahal-Adziim'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33X',
                  arab: 'سُبْحَانَ الله',
                  latin: 'Subhaanallah'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33X',
                  arab: 'اَلْحَمْدُلِلهِِِ',
                  latin: 'Alhamdulillah'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33X',
                  arab: 'اَللهُ اَكْبَرْ',
                  latin: 'Allahu Akbar'),
              SizedBox(height: 18,),
              ItemMenu(
                  jumlah: '33X',
                  arab: 'لاَ إِلَـهَ إِلاَّ الله',
                  latin: 'Laa ilaha illallah')

            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height);
    path.quadraticBezierTo(size.width - (size.width/4), size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

class ItemMenu extends StatelessWidget {
  const ItemMenu({Key? key,
    required this.jumlah,
    required this.arab,
    required this.latin

  }) : super(key: key);

  final String jumlah;
  final String arab;
  final String latin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: edge, right: edge
      ),
      decoration: BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.circular(15)
      ),
      height: 90,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              jumlah, style: whitePoppins.copyWith(fontSize: 20),
            ),
          ),
          Column(
            children: [
              Expanded(child: Text(arab, style: whiteNormal.copyWith(fontSize: 24),)),
              Expanded(child: Text(latin, style: whiteNormal.copyWith(fontSize: 14),)),
            ],
          )
        ],
      ),
    );
  }
}

