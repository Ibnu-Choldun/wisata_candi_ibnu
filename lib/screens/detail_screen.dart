import 'package:wisata_candi/models/candi.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  Candi candi;
  DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Detail Header
          Stack(
            children: [
              //imageutama
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                      'images/borobudur.jpeg',
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                  ),
                ),
              ),

              //tombol back kustom
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100]?.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ),
              ],
          ),
          //DetailInfo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                //info atas nama candi dan tombol favorit
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border)
                    ),
                  ],
                ),
                //Info tengah (lokasi, dibangun, line)
                SizedBox(height: 16,),
                Row(children: [
                  Icon(Icons.place, color: Colors.red,),
                  SizedBox(width: 8,),
                  SizedBox(width: 78,
                      child: Text('Lokasi', style: TextStyle(
                        fontWeight: FontWeight.bold),),),
                  Text(': ${candi.location}',),
                ],),
                Row(children: [
                  Icon(Icons.calendar_month, color: Colors.blue,),
                  SizedBox(width: 8,),
                  SizedBox(width: 78,
                    child: Text('Dibangun', style: TextStyle(
                      fontWeight: FontWeight.bold),),),
                  Text(': ${candi.built}'),
                ],),
                Row(children: [
                  Icon(Icons.house, color: Colors.green,),
                  SizedBox(width: 8,),
                  SizedBox(width: 78,
                    child: Text('Type', style: TextStyle(
                      fontWeight: FontWeight.bold),),),
                  Text(': ${candi.type}'),
                ],),
                SizedBox(height: 16,),
                Divider(color: Colors.deepPurple.shade100,),
                SizedBox(height: 16,),
                //Info bawah (deskripsi)
              ],
            ),
          ),

          //Detail Gallery
              ],
            ),
  }
}