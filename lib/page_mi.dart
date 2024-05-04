import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageMI extends StatelessWidget {
  const PageMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Manajemen Informatika',
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
                  'Program Studi D3 Manajemen Informatika didirikan pada tahun 2005, dan terakreditasi dengan peringkat B berdasarkan Surat Keputusan Badan Akreditasi nasional Perguruan Tinggi (BAN-PT) Departemen Pendidikan dan kebudayaan republik Indonesia Surat Keputusan Nomor :1196/SK/BAN- PT/Akred/Dpl-III/XII/2015 dengan nilai akreditasi 338.',
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
