import 'package:animals_repository/animals_repository.dart';
import 'package:flutter/material.dart';
import 'package:pet_finder/animal_details/animal_details.dart';

class AnimalDetailsPage extends StatelessWidget {
  const AnimalDetailsPage(this.animal, {super.key});

  final Animal animal;

  static Route<void> route(Animal animal) {
    return MaterialPageRoute(builder: (context) => AnimalDetailsPage(animal));
  }

  @override
  Widget build(BuildContext context) {
    final primaryImage = animal.primaryImage;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(animal.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (primaryImage != null)
              Image.network(
                primaryImage,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            const SizedBox(height: 16),
            Text(animal.name, style: theme.textTheme.headlineMedium),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description:', style: theme.textTheme.titleMedium),
                Text(animal.description),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            InfoRow(label: 'Age:', value: animal.age),
            InfoRow(label: 'Gender:', value: animal.gender),
            InfoRow(label: 'Size:', value: animal.size),
            InfoRow(label: 'Status:', value: animal.status),
          ],
        ),
      ),
    );
  }
}
