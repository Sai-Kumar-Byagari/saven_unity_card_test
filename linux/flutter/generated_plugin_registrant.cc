//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flutter_js/flutter_js_plugin.h>
#include <flutter_secure_storage_linux/flutter_secure_storage_linux_plugin.h>
#include <saven_unity_card_flutter_plugin/saven_unity_card_flutter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) flutter_js_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterJsPlugin");
  flutter_js_plugin_register_with_registrar(flutter_js_registrar);
  g_autoptr(FlPluginRegistrar) flutter_secure_storage_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterSecureStorageLinuxPlugin");
  flutter_secure_storage_linux_plugin_register_with_registrar(flutter_secure_storage_linux_registrar);
  g_autoptr(FlPluginRegistrar) saven_unity_card_flutter_plugin_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SavenUnityCardFlutterPlugin");
  saven_unity_card_flutter_plugin_register_with_registrar(saven_unity_card_flutter_plugin_registrar);
}
