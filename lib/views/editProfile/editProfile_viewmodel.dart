import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class EditprofileViewmodel extends BaseViewModel{


Future<void> pickImage()async{
  final ImagePicker imagePicker = ImagePicker();
  final XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
  if(file == null )return;

  final storageRef = FirebaseStorage.instance.ref();
  final imageRef = storageRef.child("user1.jpg");
  final imageBytes = await file.readAsBytes();
  await imageRef.putData(imageBytes);
  rebuildUi();
}
}