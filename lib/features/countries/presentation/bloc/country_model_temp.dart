class Country {
  final String name;
  final String continent;
  final String imagePath;
  final String flagPath; // For now using emoji or icon logic if asset missing

  const Country({
    required this.name,
    required this.continent,
    required this.imagePath,
    required this.flagPath,
  });
}
