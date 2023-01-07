import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:profilepicture/profilepicture.dart';

class AccessSelector extends StatelessWidget {
  const AccessSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Provider.of<DpGetter>(context, listen: false)
                    .selectImageFromCamera();
                Navigator.pop(context);
              },
              child: const Text('Camera'),
            ),
            const Divider(),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Provider.of<DpGetter>(context, listen: false)
                    .selectImageFromGallery();

                Navigator.pop(context);
              },
              child: const Text('Gallery'),
            ),
            const Divider(),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Disabled'),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
