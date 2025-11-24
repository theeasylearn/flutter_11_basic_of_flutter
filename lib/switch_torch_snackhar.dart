import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
class SwitchTorchSnackhar extends StatefulWidget {
  @override
  State<SwitchTorchSnackhar> createState() => _SwitchTorchSnackharState();
}

class _SwitchTorchSnackharState extends State<SwitchTorchSnackhar> {
  bool isTourchOn = false;
  bool isSnackbarVisible = false;
  AnimationController? localAnimationController;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Switch Torch snackbar"),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.60,
            color: Colors.red.shade50,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Tourch on/off"),
                      SwitchListTile(
                        title: Text("off/on"),
                        value: isTourchOn,
                        onChanged: (bool value) async {
                          try {
                            if (value) {
                              await TorchLight.enableTorch();
                            } else {
                              await TorchLight.disableTorch();
                            }
                            setState(() {
                              isTourchOn = value;
                            });
                          } on EnableTorchException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Torch could not be enabled: $e')),
                            );

                          } on DisableTorchException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Torch could not be disabled: $e')),
                            );
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      Text("snackbar on/off"),
                      SizedBox(height: 20,),
                      SwitchListTile(
                        title: Text("off/on"),
                        value: isSnackbarVisible,
                        onChanged: (bool value) {
                          this.setState(() {
                            this.setState(() {
                              isSnackbarVisible = value;
                            });
                            if (value == true ) {
                              showTopSnackBar(
                                persistent: true,
                                snackBarPosition : SnackBarPosition.bottom,
                                Overlay.of(context),
                                onAnimationControllerInit: (controller) {
                                  localAnimationController = controller;  // Store for manual control
                                },
                                CustomSnackBar.success(
                                  message:
                                  'Hello, you have displayed snackbar',
                                ),
                              );
                            }
                            else
                              {
                                localAnimationController?.reverse();
                              }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}
