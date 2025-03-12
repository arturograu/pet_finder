import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    required this.name,
    required this.status,
    this.primaryImage,
    super.key,
  });

  final String? primaryImage;
  final String name;
  final String status;

  @override
  Widget build(BuildContext context) {
    final imageUrl = primaryImage;
    return Card(
      child: Column(
        children: [
          if (imageUrl != null)
            Image.network(imageUrl)
          else
            const SizedBox.shrink(),
          Text(name),
          Text(status),
        ],
      ),
    );
  }
}
