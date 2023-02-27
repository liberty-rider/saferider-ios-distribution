Pod::Spec.new do |s|
    s.name         = "SafeRider"
    s.version      = "0.7.1"
    s.summary      = "Liberty Rider Protection SDK binary"
    s.description  = <<-DESC
    Falls detection in motorcycle or bike rides and automatic call for help if necessary
    DESC
    s.homepage     = "https://liberty-rider.com/"
    s.license = { :type => 'Commercial', :text => 'Copyright 2023 Liberty Rider' }
    s.authors      = { "Liberty Rider" => "contact@liberty-rider.com" }
    s.source       = { :http => "https://github.com/liberty-rider/saferider-ios-distribution/releases/download/#{s.version}/#{s.name}.zip" }

    s.vendored_frameworks = "#{s.name}.xcframework"
    s.platform = :ios
    s.swift_version = "5.3"
    s.ios.deployment_target = '13.0'
    s.cocoapods_version = '>= 1.4.0'

    s.dependency 'BigInt', '~> 5.2.0'
    s.dependency 'CombineExt', '~> 1.8.0'
    s.dependency 'CryptoSwift', '~> 1.6.0'
    s.dependency 'DataCompression', '~> 3.7.0'
    s.dependency 'Surge', '~> 2.3.2'
    s.dependency 'Swinject', '~> 2.8.2'

    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64' }
end