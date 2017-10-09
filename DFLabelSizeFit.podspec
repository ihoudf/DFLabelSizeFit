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
  s.source_files = "DFLabelSizeFit", "DFLabelSizeFit/**/*.{h,m}"
  s.requires_arc = true

end
