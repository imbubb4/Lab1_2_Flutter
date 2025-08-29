class Drone {
  String id;
  double capacidadCargaKg;
  int autonomiaMin;

  Drone({
    required this.id,
    required this.capacidadCargaKg,
    required this.autonomiaMin,
  });

  void mostrarFicha() {
    print('Drone $id | Carga: ${capacidadCargaKg}kg | Autonomía: ${autonomiaMin}min');
  }
}

class DroneMaritimo extends Drone {
  String resistenciaCorrosion;

  DroneMaritimo({
    required String id,
    required double capacidadCargaKg,
    required int autonomiaMin,
    required this.resistenciaCorrosion,
  }) : super(id: id, capacidadCargaKg: capacidadCargaKg, autonomiaMin: autonomiaMin);

  @override
  void mostrarFicha() {
    print('Drone Marítimo $id | Carga: ${capacidadCargaKg}kg | Autonomía: ${autonomiaMin}min | Resistencia: $resistenciaCorrosion');
  }
}

void main() {
  final drone1 = Drone(id: 'D001', capacidadCargaKg: 5.0, autonomiaMin: 30);
  drone1.mostrarFicha();

  final droneMaritimo1 = DroneMaritimo(
    id: 'DM001',
    capacidadCargaKg: 8.5,
    autonomiaMin: 45,
    resistenciaCorrosion: 'Alta',
  );
  droneMaritimo1.mostrarFicha();
}
