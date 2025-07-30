import 'package:flutter/material.dart';
import 'widget/my_input_field.dart';

class RegisterPage extends StatefulWidget {
   const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final txtNama = TextEditingController();
  final txtEmail = TextEditingController();
  final txtPass = TextEditingController();

  String selectedGender = 'Laki-laki';
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: const Text("Halaman Registrasi")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            MyInputField(
              label: "Nama",
              hint: "Masukkan nama lengkap",
              controller: txtNama,
            ),
            MyInputField(
              label: "Email / Username",
              hint: "Masukkan email",
              controller: txtEmail,
            ),
            MyInputField(
              label: "Password",
              hint: "Masukkan password",
              controller: txtPass,
              isPassword: true,
            ),

             // Jenis Kelamin
            Container(margin: EdgeInsets.only(top: 10, bottom: 10,)),
            const Text("Jenis Kelamin"),
            Row(
              children: [
                Radio<String>(
                  value: 'Laki-laki',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                const Text('Laki-laki'),
                Radio<String>(
                  value: 'Perempuan',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                const Text('Perempuan'),
              ],
            ),

            // Tanggal Lahir
            const SizedBox(height: 10),
            const Text("Tanggal Lahir"),  
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate == null
                      ? 'Belum dipilih'
                      : '${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}',
                  style: const TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime(2006),
                      firstDate: DateTime(1990),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        selectedDate = picked;
                      });
                    }
                  },
                  child: const Text("Pilih Tanggal"),
                ),
              ],
            ),


           Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (txtNama.text.isEmpty ||
                      txtEmail.text.isEmpty ||
                      txtPass.text.isEmpty ||
                      selectedDate == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Semua field wajib diisi')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Registrasi Berhasil')),
                    );
                  }
                },
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                 backgroundColor: const Color.fromARGB(255, 115, 187, 249), // Boleh diganti sesuai tema
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}