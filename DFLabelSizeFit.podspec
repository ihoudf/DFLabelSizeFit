#
#  Be sure to run `pod spec lint DFLabelSizeFit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "DFLabelSizeFit"
  s.version      = "1.0.0"
  s.summary      = "one line of code to fit label size."
  s.homepage     = "https://github.com/ihoudf/DFLabelSizeFit"
  s.license      = "MIT"
  s.author       = { "ihoudf" => "188816190@qq.com" }
  s.platform     = :ios
  s.ios.deployment_target = "6.0"
  s.source       = { :git => "https://github.com/ihoudf/DFLabelSizeFit.git", :tag => s.version }
  s.source_files = "DFLabelSizeFit/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true

end
