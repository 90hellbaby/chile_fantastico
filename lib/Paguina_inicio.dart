import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaDeInicio extends StatefulWidget {
  const PaginaDeInicio({Key? key}) : super(key: key);
  @override
  State<PaginaDeInicio> createState() => _PaginaDeInicioState();
}

class _PaginaDeInicioState extends State<PaginaDeInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagen de inicio
              Icon(
                Icons.phone_android,
                size: 250,
              ),
              SizedBox(height: 50),

              // Texto de inicio
              Text(
                '¡Hola de nuevo!',
                style: GoogleFonts.pacifico(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hola de nuevo, esta es la página de inicio',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 50),

              // Botón de inicio de email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              //Contraseña de inicio
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contraseña',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //Botón de inicio de sesión
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),

              //No te registraste aun? Registrate ahora
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Aún no tienes cuenta? ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Registrate ahora',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
