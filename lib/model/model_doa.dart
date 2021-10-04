import 'package:flutter/material.dart';

class ModelDoa {
// var untuk tampilan luar dulu, image sama judul
  String imageCover, titleCover;

//var untuk data yang didalam yang data 1 dulu yang sebelum
  String arabic, title, translate, latin;

//var untuk data yang kedua yaitu doa yang sesudah
  String? arabic2, title2, translate2, latin2;

//buat constructor dari class
  ModelDoa({
    required this.imageCover,
    required this.titleCover,
    required this.arabic,
    required this.title,
    required this.translate,
    required this.latin,

    //kita buata constructor untuk data yang nullable
    this.arabic2,
    this.title2,
    this.translate2,
    this.latin2,
  });
}

var dataListDoa = [
  ModelDoa(
      imageCover: 'assets/doa_pakaian.png',
      titleCover: 'Berpakaian',
      arabic: 'الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي ولا قوةٍ',
      title: 'Doa Sebelum Berpakaian',
      translate: 'Segala puji bagi Allah yang telah memberikan pakaian ini dan menganugerahkannya kepadaku tapa daya dan kekuatan dariku, pakaian yang dengannya aku menutup auratku dan dengannya aku memperindah diriku dalam hidupku.',
      latin: 'Alhamdu lillaahil ladzii kasaanii haadzaa wa rozaqoniihi min ghoiri hawlim minni wa laa quwwatin.',

      //sesudah
      arabic2: 'بِسْمِ اللهِ الَّذِيْ لاَ إِلَهَ إِلَّا هُوَ',
      latin2: 'Bismillaahilladzii laa ilaaha illaa huwa.',
      translate2: 'Dengan nama Allah yang tiada Tuhan selain-Nya',
      title2: 'Doa Melepas Pakaian'
  ),

  ModelDoa(
      imageCover: 'assets/doa_makan.png',
      titleCover: 'Makan',
      arabic: 'الَّلهُمَّ بَارِكْ لَنَا فِيمَا رَزَقْتَنَا، وَقِنَا عَذَابَ النَّارٍِ',
      title: 'Doa Sebelum Makan',
      translate: 'Ya Allah, berkahilah kami dalam rezeki yang telah Engkau berikan kepada kami dan peliharalah kami dari siksa api neraka.',
      latin: 'Allahumma baarik lanaa fiimaa rozaqtanaa wa qinaa adzaa bannar.',

      //sesudah
      arabic2: 'اَلْحَمْدُ ِللهِ الَّذِيْنَ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مِنَ الْمُسْلِمِيْنَ',
      latin2: 'Alhamdulillahilladzi ath-amanaa wa saqoona wa ja alanaa minal muslimiin.',
      translate2: 'Segala puji bagi Allah yang telah memberi kami makan dan minum serta menjadikan kami termasuk dari kaum muslimin.',
      title2: 'Doa Sesudah Makan'
  ),

  ModelDoa(
      imageCover: 'assets/doa_kamar_mandi.png',
      titleCover: 'Kamar Mandi',
      arabic: 'اللَّهُمَّ إِنِّى أَعُوذُ بِكَ مِنَ الْخُبُثِ وَالْخَبَائِثٍِ',
      title: 'Doa Sebelum Masuk Kamar Mandi',
      translate: 'Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Ya Allah, sesungguhnya aku berlindung kepada-Mu dari setan-setan lelaki dan setan-setan perempuan.',
      latin: 'Allahumma inni ‘audzu bika minal khubutsi wal khobaits',

      //sesudah
      arabic2: 'غُفْرَانَكََ',
      latin2: 'Ghufronaka.',
      translate2: 'Ya Allah, aku mengharap ampunan-Mu.',
      title2: 'Doa Keluar Kamar Mandi'
  ),

  ModelDoa(
      imageCover: 'assets/doa_tidur.png',
      titleCover: 'Tidur',
      arabic: 'بِسْمِكَ االلّٰهُمَّ اَحْيَا وَبِاسْمِكَ اَمُوْتُ',
      title: 'Doa Sebelum Tidur',
      translate: 'Dengan menyebut nama-Mu, Ya Allah, aku hidup dan dengan menyebut nama-Mu aku mati',
      latin: 'Bismikallaahuma ahyaa wa bismika amuutu',

      //sesudah
      arabic2: 'اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرُ',
      latin2: 'Alhamdu lillahil ladzii ahyaanaa ba da maa amaa tanaa wa ilahin nusyuur.',
      translate2: 'Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan',
      title2: 'Doa Bangun Tidur'
  ),

  ModelDoa(
      imageCover: 'assets/doa_rumah.png',
      titleCover: 'Rumah',
      arabic: 'بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبّنَا تَوَكَّلْنَا',
      title: 'Doa Masuk Rumah',
      translate: 'Dengan menyebut nama-Mu, Ya Allah, aku hidup dan dengan menyebut nama-Mu aku mati',
      latin: 'Bismillahi wa lajnaa wa bismillahi khorojna wa ‘alallohi rabbinaa tawakkalnaa.',

      //sesudah
      arabic2: 'بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِاللهُِ',
      latin2: 'Bimillahi tawakkaltu ‘alallohi laa hawlaa walaa quwwata illaa billahi',
      translate2: 'Dengan menyebut nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan Allah',
      title2: 'Doa Keluar Rumah'
  ),

  ModelDoa(
      imageCover: 'assets/doa_belajar.png',
      titleCover: 'Belajar',
      arabic: 'رَضِتُ بِااللهِ رَبَا وَبِالْاِسْلاَمِ دِيْنَا وَبِمُحَمَّدٍ نَبِيَا وَرَسُوْلاَ رَبِّ زِدْ نِيْ عِلْمًـاوَرْزُقْنِـيْ فَهْمًـا',
      title: 'Doa Sebelum Belajar',
      translate: 'Aku ridho Allah SWT sebagai Tuhanku, Islam sebagai agamaku, dan Nabi Muhammad SAW sebagai Nabi dan Rasul. Ya Allah, tambahkanlah kepadaku ilmu dan berikanlah aku pengertian yang baik',
      latin: 'Rodhitu billahirobba, wabil islaamidina, wabi-muhammadin nabiyyaw warosula. Robbi zidnii ilmaa warzuqnii fahmaa',

      //sesudah
      arabic2: 'اَللّٰهُمَّ اِنِّى اِسْتَوْدِعُكَ مَاعَلَّمْتَنِيْهِ فَارْدُدْهُ اِلَىَّ عِنْدَ حَاجَتِىْ وَلاَ تَنْسَنِيْهِ يَارَبَّ الْعَالَمِيْنَ',
      latin2: 'Allaahumma innii istaudi uka maa allamtaniihi fardud-hu ilayya inda haajatii wa laa tansaniihi yaa robbal alamiin',
      translate2: 'Ya Allah, sesungguhnya ku titipkan kepada-Mu apa yang telah Engkau ajarkan kepadaku, maka kembalikanlah dia kepadaku disaat aku membutuhkan-nya. Janganlah Engkau buat aku lupa kepadanya. wahai Tuhan pemelihara alam.',
      title2: 'Doa Sesudah Belajar'
  ),

  ModelDoa(
      imageCover: 'assets/doa_wudhu.png',
      titleCover: 'Wudhu',
      arabic: 'نَوَيْتُ الْوُضُوْءَ لِرَفْعِ الْحَدَثِ اْلاَصْغَرِ فَرْضًا ِللهِ تَعَالَى',
      title: 'Doa Sebelum Wudhu',
      translate: 'Saya niat berwudhu untuk menghilangkan hadast kecil fardu (wajib) karena Allah ta’ala',
      latin: 'Nawaitul whudu-a lirof’il hadatsii ashghori fardhon lillaahi ta’aalaa',

      //sesudah
      arabic2: 'اَشْهَدُاَنْ لَااِلٰهَ اِلَّا اللّٰهُ وَحْدَهُ لَاشَرِيْكَ لَهُ. وَاَشْهَدُ اَنَّ مُحَمَّدًاعَبْدُهُ وَرَسُوْلُهُ. اَللّٰهُمَّ اجْعَلْنِىْ مِنَاالتَّوَّابِيْنَ، وَجْعَلْنِيْ مِنَ الْمُتَطَهِّرِيْنَ، وَجْعَلْنِىْ مِنْ عِبَادِكَ الصَّالِحِيْنََ',
      latin2: 'Asyhadu allaa ilaaha illallah wahdahu laa syariikalahu . Wa asyhadu anna Muhammadan’abduhu wa rasuuluhu Allahumma-j alnii minattabinna waj alnii minal mutathohiirina waj alnii min ‘ibadatishalihin.',
      translate2: 'Saya bersaksi tiada Tuhan melainkan Allah yang esa , tiada sekutu bagi-Nya . Dan saya bersaksi bahwa nabi Muhammad adalah hamba-Nya dan utusan-Nya . Ya Allah jadikanlah saya orang yang ahli taubat , dan jadikanlah saya orang yang suci , dan jadikanlah saya dari golongan hamba-hamba Mu yang shaleh.',
      title2: 'Doa Sesudah Wudhu'
  ),

  //data untuk yang bercermin
  ModelDoa(
      imageCover: 'assets/doa_bercermin.png',
      titleCover: 'Bercermin',
      latin: 'Allohumma kamaa hassanta kholqii fahassin khuluqii',
      translate: 'Ya Allah sebagaimana Engkau telah ciptakan aku dengan baik, maka perbaikilah akhlakku.',
      title: 'Doa Bercermin',
      arabic: 'اَللّٰهُمَّ كَمَا حَسَّـنْتَ خَلْقِـيْ فَحَسِّـنْ خُلُقِـيْ'),
];
