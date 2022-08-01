import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 23, 113),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                // logo & appName
                Column(
                  children: [
                    SizedBox(
                        width: 200,
                        child: Image.asset('assets/images/gsb_logo.PNG')),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "InvestCoach",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // input_form
                Expanded(
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // input fields and forget password
                        Column(
                          children: [
                            // username
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "บัญชีผู้ใช้",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: const Icon(Icons.person,
                                    color: Colors.pink),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            // password
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "รหัสผ่าน",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon:
                                    const Icon(Icons.lock, color: Colors.pink),
                              ),
                            ),
                            // forgot password
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text("ลืมรหัสผ่าน",
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            )
                          ],
                        ),
                        // login button & register link
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // login button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: const Color.fromARGB(255, 184, 121, 0),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: const Text(
                                "เข้าสู่ระบบ",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),

                            // register
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "ยังไม่มีบัญชีผู้ใช้งาน?",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "สมัครบัญชี",
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
