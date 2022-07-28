class Driver {
  const Driver({
    required this.name,
    required this.lastName,
    required this.image,
    required this.pts,
    required this.team,
  });
  final String name;
  final String lastName;
  final String image;
  final int pts;
  final String team;
}

const drivers = [
  Driver(
    name: 'Max',
    lastName: 'Verstappen',
    pts: 233,
    team: 'Red Bull Racing',
    image: 'assets/max.png',
  ),
  Driver(
    name: 'Charles',
    lastName: 'Leclerc',
    pts: 170,
    team: 'Ferrari',
    image: 'assets/charles.png',
  ),
  Driver(
    name: 'Segio',
    lastName: 'Perez',
    pts: 163,
    team: 'Red Bull Racing',
    image: 'assets/sergio.png',
  ),
  Driver(
    name: 'Carlos',
    lastName: 'Sainz',
    pts: 144,
    team: 'Ferrari',
    image: 'assets/carlos.png',
  ),
  Driver(
    name: 'George',
    lastName: 'Russell',
    pts: 143,
    team: 'Mercedes',
    image: 'assets/george.png',
  ),
];
