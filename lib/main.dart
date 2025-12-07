import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:travilo/home_layout.dart';

=======
import 'package:travilo/features/auth/presentation/views/sign_in_view.dart';

import 'core/helper_functions/on_generate_routes.dart';
>>>>>>> 68743e552a202bedd06e848dd1457211831679b0

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        
        scaffoldBackgroundColor: Color(0xff101922)
      ),
      home: const HomeLayout()
    );
  }
}
=======
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff101922)
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SignInView.routeName,
    );
  }
}

>>>>>>> 68743e552a202bedd06e848dd1457211831679b0
