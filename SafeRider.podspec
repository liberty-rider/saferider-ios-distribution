Pod::Spec.new do |s|
    s.name         = "SafeRider"
    s.version      = "0.6.3"
    s.summary      = "Liberty Rider Protection SDK binary"
    s.description  = <<-DESC
    Falls detection in motorcycle or bike rides and automatic call for help if necessary
    DESC
    s.homepage     = "https://liberty-rider.com/"
    s.license = { 
        :type => 'Commercial', 
        :text => 'Copyright 2022 Liberty Rider'
    }
    s.authors      = { "Liberty Rider" => "contact@liberty-rider.com" }
    s.source       = { 
        :git => "https://github.com/liberty-rider/saferider-ios-distribution.git", 
        :tag => "#{s.version}" 
    }

    s.vendored_frameworks = "SafeRider.zip"
    s.platform = :ios
    s.swift_version = "5.3"
    s.ios.deployment_target = '13.0'
    s.cocoapods_version = '>= 1.4.0'

    s.dependency 'BigInt', '5.3.0'
    s.dependency 'CombineExt', '1.8.0'
    s.dependency 'CryptoSwift', '1.6.0'
    s.dependency 'GZip', '5.2.0'
    s.dependency 'Surge', '2.3.2'
    s.dependency 'SwiftyBeaver', '1.9.6'
    s.dependency 'Swinject', '2.8.2'
end