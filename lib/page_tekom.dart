import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageTekom extends StatelessWidget {
  const PageTekom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Teknik Komputer',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,// Mengatur warna teks menjadi putih
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white), // Mengatur warna ikon menjadi putih
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Set ke atas
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Menambah jarak dari atas
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Menambah padding horizontal
              child: Text(
                'Deskripsi',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20), // Menambah jarak antara "Deskripsi" dan teks berikutnya
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Menambah padding horizontal
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Menambah margin
                child: Text(
                  'Program Studi di Luar Kampus Utama (PSDKU) adalah Program Studi yang diselenggarakan di kabupaten/kota/kota administratif yang tidak berbatasan langsung dengan Kampus Utama. ProgramStudi Teknik Komputer di Kabupaten Solok Selatan merupakan jenjang program studi Diploma 3 (D3) dengan Level KKNI (Level 5) berdiri tanggal 14 April 2021 sesuai dengan Surat Keputusan (SK) penyelenggaraan program studi nomor 062/D/OT/2021.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify, // Menjadikan teks rata kanan kiri
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: MaterialButton(
                onPressed: () {
                  //back ke page sebelumnya
                  Navigator.pop(context);
                },
                child: Text('Back'),
                color: Colors.orange,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
