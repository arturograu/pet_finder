import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const _kCardHeight = 100.0;
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
            _Image(imageUrl: imageUrl)
          else
            const SizedBox(
              height: _kCardHeight,
              width: _kImageWidth,
              child: Icon(Icons.image),
            ),
          const SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: _kCardHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      name,
                      style: theme.textTheme.titleLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Flexible(
                    child: Text(
                      status,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
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

class _Image extends StatelessWidget {
  const _Image({required this.imageUrl});

  final String imageUrl;

  static const _kProgressIndicatorSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(_kImageRadius),
      child: CachedNetworkImage(
        height: _kCardHeight,
        width: _kImageWidth,
        fit: BoxFit.contain,
        imageUrl: imageUrl,
        progressIndicatorBuilder:
            (_, __, ___) => const Center(
              child: SizedBox(
                height: _kProgressIndicatorSize,
                width: _kProgressIndicatorSize,
                child: CircularProgressIndicator(),
              ),
            ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
