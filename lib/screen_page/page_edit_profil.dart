import 'package:coba/screen_page/page_profil_user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PageEditProfile extends StatefulWidget {
  final SessionLatihanManager session;

  const PageEditProfile({Key? key, required this.session}) : super(key: key);

  @override
  State<PageEditProfile> createState() => _PageEditProfileState();
}

class _PageEditProfileState extends State<PageEditProfile> {
  late TextEditingController txtNama;
  late TextEditingController txtEmail;
  late TextEditingController txtNoHP;

  @override
  void initState() {
    super.initState();
    // Inisialisasi controller dengan data saat ini dari sesi
    txtNama = TextEditingController(text: widget.session.Nama ?? '');
    txtEmail = TextEditingController(text: widget.session.email ?? '');
    txtNoHP = TextEditingController(text: widget.session.nohp ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profil',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: txtNama,
                decoration: InputDecoration(
                  labelText: 'Nama',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: txtEmail,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: txtNoHP,
                decoration: InputDecoration(
                  labelText: 'No. HP',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  updateDatabase(txtNama.text, txtEmail.text, txtNoHP.text);
                },
                child: Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    txtNama.dispose();
    txtEmail.dispose();
    txtNoHP.dispose();
    super.dispose();
  }

  void updateDatabase(String nama, String email, String nohp) async {
    // Implementasi logika untuk mengupdate data di database
    try {
      // Misalkan kita menggunakan HTTP request untuk mengirim data ke server
      final response = await http.post(
        Uri.parse('http://contoh-api.com/update_profile'),
        body: {
          'id': widget.session.idUser,
          'nama': nama,
          'email': email,
          'nohp': nohp,
        },
      );

      if (response.statusCode == 200) {
        // Jika update berhasil, kita juga perlu memperbarui data sesi lokal
        await widget.session.saveSession(
          widget.session.value ?? 0,
          widget.session.idUser ?? '',
          widget.session.userName ?? '',
          nama,
          email,
          nohp,
        );

        // Setelah itu, kembali ke halaman profil
        Navigator.pop(context, true);
      } else {
        // Jika update gagal, tampilkan pesan kesalahan
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Gagal menyimpan data. Silakan coba lagi.')),
        );
      }
    } catch (e) {
      // Tangani kesalahan jika terjadi
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Terjadi kesalahan. Silakan coba lagi.')),
      );
    }
  }
}
