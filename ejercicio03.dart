abstract class Trabajador {
  String nombre;
  double salarioMensual;

  Trabajador({
    required this.nombre,
    required this.salarioMensual,
  });

  double calcularBonificacion();

  void mostrarDatos() {
    print('$nombre | Salario: $salarioMensual');
  }
}

class AdministradorSistemas extends Trabajador {
  AdministradorSistemas({required String nombre, required double salarioMensual})
      : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.18;
  }
}

class TecnicoSoporte extends Trabajador {
  TecnicoSoporte({required String nombre, required double salarioMensual})
      : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.10;
  }
}

void main() {
  List<Trabajador> empleados = [
    AdministradorSistemas(nombre: 'Carlos', salarioMensual: 4000),
    TecnicoSoporte(nombre: 'Ana', salarioMensual: 2500),
  ];

  for (var emp in empleados) {
    emp.mostrarDatos();
    print('Bonificación: ${emp.calcularBonificacion()}');
  }
}
