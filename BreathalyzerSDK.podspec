breathalyzer_sdk_version = "0.0.1"
Pod::Spec.new do |s|
    s.name         = "BreathalyzerSDK"
    s.version      = breathalyzer_sdk_version
    s.summary  = "The BreathalyzerSDK can be used to interface with the BACtrack line of breathalyzers."
    s.homepage     = "https://developer.bactrack.com"
    s.license = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "BACtrack Engineering" => "engineering@bactrack.com" }
    s.source       = { :git => "https://github.com/BACtrack/breathalyzer-sdk-ios.git", :tag => "#{s.version}" }
    s.vendored_frameworks = "BreathalyzerSDK.xcframework"
    s.platform = :ios
    s.ios.deployment_target  = '13.0'
end
