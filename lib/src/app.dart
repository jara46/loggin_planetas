import 'package:flutter/material.dart';
class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  bool rememberMe=false;





  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 213, 222),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 40.0
        ),
        children:<Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.pink[100],
                backgroundImage: AssetImage("images/QnAYD6QT_400x400.jpg"),
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontFamily:"cursive",
                  fontSize: 50.0
                ),
              ),
              Text(
                "Zakurazaka46",
                style: TextStyle(
                  fontFamily:"cursive",
                  fontSize: 20.0
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 15.5,
                child: Divider(
                  color: Color.fromARGB(255, 233, 72, 131),
                  ),
              ),
               
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                 child:TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
              
                hintText: "user name",
                labelText: "user name",
                suffixIcon: Icon(
                  Icons.verified_user
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                ),
                onSubmitted: (valor){
                  String  nombre=valor;
                    print("su nombre es $nombre");
                },
              ),
             ),
              Divider(
                height: 18.0,
                
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                 child:TextField(
                decoration: InputDecoration(
                    hintText: "email",
                    labelText: "email",
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),        
                    ),
                ),
                onSubmitted: (valor){
                  String  email=valor;
                    print("su nombre es $email");
                },
              ), 
               ),
               Divider(
                  height: 15.0,
               ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                 child:TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                decoration: InputDecoration(
                    hintText: "password",
                    labelText: "passord",
                    suffixIcon: Icon(Icons.lock_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                ),
                onSubmitted: (valor){
                  String  password=valor;
                    print("su nombre es $password");
                },
              ),
               ),
                Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextButton(
          onPressed: () {
          print("Forgot the password");
        },
        child: Text(
          "Forgot the password",
          style: TextStyle(
            color: Colors.blue, // Puedes cambiar el color del texto según tus preferencias
          ),
        ),
      ),
                ),
              
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 30.0),
                   child: Row(
                    children: <Widget>[
                      Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.blue),
                        child: Checkbox(
                          value:rememberMe,
                          checkColor: Color.fromARGB(255, 224, 82, 224),
                          activeColor:Color.fromARGB(255, 36, 90, 141),
                             onChanged: (value){
                                 setState(() {
                                 rememberMe = value!;
                             }
                            );
                          } ,
                        ),
                      ),
                      Text(
                        "rememberme",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              Divider(
                height: 5.0,
              ),
             Positioned(
             child: ElevatedButton(
              onPressed: () {  
                
                        Navigator.pushNamed(context, '/dash');
                        },
                        style: ElevatedButton.styleFrom(
                  primary: Colors.pink[100],
                        ),
                       child: const Text(
                        "Iniciar sesion",
                         style: TextStyle(
                    color: Colors.black, // Color del texto
                  ),
                        ),
             ),
             ),
               Divider(
                  height: 5,
               ),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:Color.fromARGB(255, 243, 244, 252),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0,2),
                      blurRadius: 6.0,
                    ) 
                  ],
                ),
                 child: Center(
    child: Image.asset(
      'images/digimon.jpg', // Reemplaza con la ruta correcta de tu imagen
      height: 40.0, // Ajusta el tamaño de la imagen según sea necesario
      width: 40.0,
      fit: BoxFit.cover, // Ajusta el modo de ajuste de la imagen
    ),
  ),
              )
             //se continua aqui
            ]
          )
        ],
      ),
    );
  }
}
