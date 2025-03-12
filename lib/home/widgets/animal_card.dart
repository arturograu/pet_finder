import 'package:flutter/material.dart';

const _kImageHeight = 100.0;
const _kImageWidth = 100.0;
const _kImageRadius = 12.0;

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    required this.name,
    required this.status,
    required this.onTap,
    this.primaryImage,
    super.key,
  });

  final String? primaryImage;
  final String name;
  final String status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = primaryImage;
    final theme = Theme.of(context);
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
              Text(name, style: theme.textTheme.titleLarge),
              Text(status, style: theme.textTheme.bodyMedium),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: onTap,
            style: IconButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
