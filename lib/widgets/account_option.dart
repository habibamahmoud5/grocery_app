import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final IconData icon;
  final String title;

  const AccountOption({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(icon, size: 22, color: Color(0xff181725)),

              const SizedBox(width: 20),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),

              const Spacer(),

              const Icon(
                Icons.chevron_right,
                size: 22,
                color: Color(0xff181725),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(color: Color(0xffE2E2E2), thickness: 1.20),
      ],
    );
  }
}
