part of profilepicture;

class DpGetter extends ChangeNotifier {
  Uint8List? _image;

  checkDp() {
    if (_image != null) {
      return true;
    } else {
      return false;
    }
  }

  getImage() {
    return _image;
  }

  selectImageFromGallery() async {
    _image = await pickImage(ImageSource.gallery);
    notifyListeners();
  }

  selectImageFromCamera() async {
    _image = await pickImage(ImageSource.camera);
    notifyListeners();
  }

  pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: source);

    if (file != null) {
      return await file.readAsBytes();
    }
    notifyListeners();
  }
}
