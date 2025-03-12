import 'package:flutter/material.dart';

const _kImageHeight = 100.0;
const _kImageWidth = 100.0;
const _kImageRadius = 12.0;

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Ensure the card has a radius
      ),
      child: Row(
        children: [
          if (imageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(_kImageRadius),
              child: Image.network(
                imageUrl,
                height: _kImageHeight,
                width: _kImageWidth,
                fit: BoxFit.contain,
              ),
            )
          else
            const SizedBox(
              height: _kImageHeight,
              width: _kImageWidth,
              child: Icon(Icons.image),
            ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              Text(status, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
