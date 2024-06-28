#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_bluetooth_plus_upgraded.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_bluetooth_plus_upgraded'
  s.version          = '0.0.1'
  s.summary          = 'Bluetooth Low Energy plugin for Flutter.'
  s.description      = <<-DESC
Bluetooth Low Energy plugin for Flutter.
                       DESC
  s.homepage         = 'https://github.com/jaswinda/flutter_bluetooth_plus_upgraded'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jaswindar Singh' => 'singhjassi2624@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*', 'gen/**/*'
  s.public_header_files = 'Classes/**/*.h', 'gen/**/*.h'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.13'
  s.framework = 'CoreBluetooth'

  s.subspec "Protos" do |ss|
    ss.source_files = "gen/*.pbobjc.{h,m}", "gen/**/*.pbobjc.{h,m}"
    ss.header_mappings_dir = "gen"
    ss.requires_arc = false
    ss.dependency "Protobuf", '~> 3.11.4'
  end

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
  }
end