import 'package:classified_app/pallets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Pallets.defaultPadding),
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        const AssetImage("assets/images/avater.jpg"),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 10,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                    hintText: "আপনার নাম অথবা ব্যাবসার নাম?",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                    hintText: "আপনার ফোন নম্বর?",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                    hintText: "আপনার হোয়াটস্যাপ নম্বর?",
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size.fromWidth(double.maxFinite),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.all(10),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.upload_file_rounded),
                label: const Text(
                  "আপডেট প্রোফাইল",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
