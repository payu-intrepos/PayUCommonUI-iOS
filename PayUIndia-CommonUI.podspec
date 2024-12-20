

Pod::Spec.new do |s|
  s.name                = "PayUIndia-CommonUI"
  s.version             = "2.0.2"
  s.license             = "MIT"
  s.homepage            = "https://github.com/payu-intrepos/PayUCommonUI-iOS"
  s.author              = { "PayUbiz" => "contact@payu.in"  }

  s.summary             = "CommonUI SDK"
  s.description         = "The CommonUI SDK contains common UI elements which are being used in other SDKs of PayU."

  s.source              = { :git => "https://github.com/payu-intrepos/PayUCommonUI-iOS.git",
    :tag => "#{s.version}"
  }
  s.documentation_url   = "https://devguide.payu.in/mobile-sdk-ios/introduction-to-payu-mobile-sdk/"
  s.platform            = :ios , "13.0"
  s.vendored_frameworks = 'PayUCommonUI.xcframework'
  s.dependency            'PayUIndia-Analytics', '~> 4.0'
  s.dependency            'PayUIndia-CrashReporter', '~> 4.0'

end
