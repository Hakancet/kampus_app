import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusapp/Firebase/AuthService.dart';
import 'package:kampusapp/Kullanici/Login.dart';

class Kayit extends StatefulWidget {
  const Kayit({Key? key}) : super(key: key);

  @override
  State<Kayit> createState() => _KayitState();
}

class _KayitState extends State<Kayit> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController sifreController = TextEditingController();
  final TextEditingController SifreTerarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6200EA),
                    Color(0xFF7E57C2),
                    Color(0xFFB388FF),
                    Color(0xFFB388FF),
                    Color(0xFF64a7ce),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 0.05 * screenHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.02 * screenWidth),
                          child: Image.asset('assets/images/kampus.png',
                            width: MediaQuery.of(context).size.width/2.1,
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0.02 * screenWidth),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                          },
                          child: Text(
                            'Giriş Yap',
                            style: GoogleFonts.poppins(
                              color: Colors.purple[100],
                              fontWeight: FontWeight.w600,
                              fontSize: 0.04 * screenWidth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Hesap Oluşturunuz',
                        style: GoogleFonts.poppins(
                          fontSize: 0.04 * screenWidth,
                          fontWeight: FontWeight.w400,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 0.5 * screenWidth,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0.02 * screenHeight,
                                horizontal: 0.05 * screenWidth,
                              ),
                              child: TextFormField(
                                controller: nameController,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  labelText: 'Ad',
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 0.9 * screenWidth,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 0.02 * screenHeight,
                                horizontal: 0.05 * screenWidth,
                              ),
                              child: TextFormField(
                                controller: surnameController,
                                keyboardType: TextInputType.text,
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  labelText: 'Soyad',
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * screenWidth,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.02 * screenHeight,
                        horizontal: 0.05 * screenWidth,
                      ),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'E-Mail',
                          hintText: 'örn. email@gmail.com',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * screenWidth,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.02 * screenHeight,
                        horizontal: 0.05 * screenWidth,
                      ),
                      child: TextFormField(
                        controller: sifreController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Şifre',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0.9 * screenWidth,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.02 * screenHeight,
                        horizontal: 0.05 * screenWidth,
                      ),
                      child: TextFormField(
                        controller: SifreTerarController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Tekrardan Şifre',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.02 * screenHeight,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0.02 * screenWidth,
                    ),
                    child: InkWell(
                      onTap: () => AuthServices().kullanicikayit(context,name: nameController.text, email: emailController.text, password: sifreController.text, againpassword: SifreTerarController.text, surname: surnameController.text),
                      child: Container(
                        height: 0.1 * screenHeight,
                        width: 0.9 * screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0.02 * screenHeight),
                          ),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0XFF1565C0),
                              Color(0XFF6A1B9A),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Kayıt Ol',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.04 * screenWidth,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.01 * screenHeight,
                        horizontal: 0.04 * screenWidth,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                        },
                        child: Text(
                          'Zaten Hesabın Var Mı',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.01 * screenHeight,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
