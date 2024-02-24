breathalyzer_sdk_version = "2.5.0"
Pod::Spec.new do |s|
    s.name         = "BreathalyzerSDK"
    s.version      = breathalyzer_sdk_version
    s.summary  = "The BreathalyzerSDK can be used to interface with the BACtrack line of breathalyzers."
    s.homepage     = "https://developer.bactrack.com"
    s.license      = { :type => "MIT", :text => <<-LICENSE
        MIT License

        Copyright (c) 2024 KHN Solutions LLC. All rights reserved.
        
        Permission is hereby granted, free of charge, to any person obtaining a copy
        of this software and associated documentation files (the "Software"), to deal
        in the Software without restriction, including without limitation the rights
        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
        copies of the Software, and to permit persons to whom the Software is
        furnished to do so, subject to the following conditions:
        
        The above copyright notice and this permission notice shall be included in all
        copies or substantial portions of the Software.
        
        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
        SOFTWARE.
        LICENSE
      }
    s.author             = { "BACtrack Engineering" => "engineering@bactrack.com" }
    s.source       = { :http => "https://github.com/BACtrack/breathalyzer-sdk-ios/releases/download/#{breathalyzer_sdk_version}/BreathalyzerSDK.xcframework.zip" }
    s.vendored_frameworks = "BreathalyzerSDK.xcframework"
    s.platform = :ios
    s.ios.deployment_target  = '13.0'
end
