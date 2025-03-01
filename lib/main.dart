
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wed_for_weddings/core/app/bloc_observer.dart';
import 'package:wed_for_weddings/core/app/env.variables.dart';
import 'package:wed_for_weddings/core/di/injection_container.dart';
import 'package:wed_for_weddings/core/service/shared_pref/shared_pref.dart';
import 'package:wed_for_weddings/wed_app.dart';

 Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
     await EnvVariable.instance.init(envType: EnvTypeEnum.dev);
  Platform.isAndroid
? await Firebase.initializeApp(
 options: const FirebaseOptions(
  apiKey:'AIzaSyAzim_OqwzhTrlVtV7TfLp6fFtDQcgQYTg',
  appId:'1:595935708915:android:96260646d70a78d13a5986',
  messagingSenderId:'595935708915',
  projectId:'wedweddings-bba88',
 )
 ,):  await Firebase.initializeApp();
 await SharedPref().instantiatePreferences();
 await setupInjector();
 Bloc.observer=AppBlocObserver();
//لايقاف تدوير الشاشة
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const Wed());
  });
 }
