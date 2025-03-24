Pod::Spec.new do |s|
  s.name             = 'flutter_meta_sdk'
  s.version          = '1.0.0'
  s.summary          = 'Meta SDK for Flutter'
  s.description      = <<-DESC
  More information about Meta SDK for iOS you can refer to the official documentation https://developers.facebook.com/docs/ios
                       DESC
  s.homepage         = 'https://github.com/chandrabezzo/flutter_meta_sdk'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Solusi Bejo' => 'chandrashibezzo@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  
  s.dependency 'Flutter'
  # Replace the deprecated FBSDKCoreKit with the new unified Facebook-iOS-SDK
  s.dependency 'Facebook-iOS-SDK'
  # Retain FBAudienceNetwork if your package uses it; Meta's instructions don’t require its removal.
  # s.dependency 'FBAudienceNetwork'
  
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain an i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES',
                            'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'
end
