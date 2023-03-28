import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tiktok_clone/app/controllers/auth_controller.dart';
import 'package:tiktok_clone/app/views/screens/add_vidio_screen.dart';
import 'package:tiktok_clone/app/views/screens/profile_screen.dart';
import 'package:tiktok_clone/app/views/screens/search_screen.dart';
import 'package:tiktok_clone/app/views/screens/vidio_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  const Text('Message Screen'),
  ProfileScreen(uid: authContoller.user.uid),
];

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

var authContoller = AuthController.instance;
