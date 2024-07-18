import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class EditprofileViewmodel extends BaseViewModel{

  Uint8List? image;

Future<void> pickImage()async{
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
  if(file == null )return;
  rebuildUi();
}
}