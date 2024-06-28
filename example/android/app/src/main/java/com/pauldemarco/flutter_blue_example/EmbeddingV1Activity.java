package com.jaswinda.flutter_bluetooth_plus_example;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import com.jaswinda.flutter_bluetooth_plus_upgraded.FlutterBluePlugin;

public class EmbeddingV1Activity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    FlutterBluePlugin.registerWith(registrarFor("com.jaswinda.flutter_bluetooth_plus_upgraded.FlutterBluePlugin"));
  }
}
