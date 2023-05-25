import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Verification",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 15),
        alignment: Alignment.center,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.purple.shade200,
            width: 2,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple.shade700,
          ),
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple.shade100.withOpacity(0.2),
                  width: 2,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(37),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.purple.shade100.withOpacity(0.3),
                    width: 2,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.purple.shade100.withOpacity(0.4),
                      width: 2,
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.purple.shade100.withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.purple.shade100.withOpacity(0.6),
                          width: 2,
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple.shade100,
                            width: 2,
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          height: 80,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.purple.shade200,
                                blurRadius: 30,
                                spreadRadius: 10,
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Colors.purple.shade700,
                          ),
                          child: const Icon(
                            Icons.fingerprint,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "Touch ID sensor to \n  verify transaction",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Please verify your Identify Using Touch Id and proceed transaction",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
