import 'dart:async';

import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleSignInService{
static final  FirebaseAuth _auth=FirebaseAuth.instance;
static final GoogleSignIn _googleSignIn=GoogleSignIn.instance;
static final FirebaseFirestore _firebaseFirestore=FirebaseFirestore.instance;
static bool isInitialize=false;
static Future<void>initSignIn()async{
  if(!isInitialize){
    await _googleSignIn.initialize(serverClientId: '929588607054-fp9hlb8gllu2meqmudevboihhe787ler.apps.googleusercontent.com');
  }
  isInitialize=true;
}
//signin with google
static Future<UserCredential?>signInWithGoogle()async{
  try{
    initSignIn(); 
    
    final GoogleSignInAccount googleUser=await _googleSignIn.authenticate();
    final idtoken=googleUser.authentication.idToken;
    final authorizationClient=googleUser.authorizationClient;
    GoogleSignInClientAuthorization ? authorization=await authorizationClient.authorizationForScopes(['email','profile']);
    final accessToken=authorization?.accessToken;
    if(accessToken==null){
      final authorization2=await authorizationClient.authorizationForScopes(['email','profile']);
     if(authorization2?.accessToken==null){
  throw FirebaseAuthException(code: "error",message: "error");
    }
    authorization=authorization2;
    }
    
   final credential=GoogleAuthProvider.credential(accessToken: accessToken,idToken: idtoken);
   final UserCredential userCredential=await FirebaseAuth.instance.signInWithCredential(credential);
   final User? user=userCredential.user;
   if(user!=null){
   await _firebaseFirestore.collection("farmers").doc(user.uid).set({"name":user.displayName,"uid":user.uid,
   
    });
  
   }  
      }catch(e){
        log(e.toString());
      } 
    
}
static signOut()async{
  _auth.signOut();
  GoogleSignIn.instance.signOut();

}

}