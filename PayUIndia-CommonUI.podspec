require 'httparty'
require 'colorize'

# Supress warning messages.
original_verbose, $VERBOSE = $VERBOSE, nil

# Make the API request
url = "https://api.github.com/repos/payu-intrepos/payu-params-iOS/contents/Version.txt"
response = HTTParty.get(url)

# Check if the request was successful
if response.code == 200
  # Extract the content from the response
  content = Base64.decode64(response['content'])
  # Evaluate the content of the file
  eval(content)
else
  puts "\n==> Failed to retrieve Version.txt file. HTTP status code: #{response.code}".red
end

# Activate warning messages again.
$VERBOSE = original_verbose

#Pod

Pod::Spec.new do |s|
  s.name                = "PayUIndia-CommonUI"
  s.version             = CommonUI_POD_VERSION
  s.license             = "MIT"
  s.homepage            = "https://github.com/payu-intrepos/PayUCommonUI-iOS"
  s.author              = { "PayUbiz" => "contact@payu.in"  }

  s.summary             = "CommonUI SDK"
  s.description         = "The CommonUI SDK contains common UI elements which are being used in other SDKs of PayU."

  s.source              = { :git => "https://github.com/payu-intrepos/PayUCommonUI-iOS.git",
    :tag => "#{s.version}"
  }
  s.platform            = :ios , "11.0"
  s.vendored_frameworks = 'PayUCommonUI.xcframework'

end
