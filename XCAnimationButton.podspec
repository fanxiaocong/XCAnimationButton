Pod::Spec.new do |s|

  s.name         = "XCAnimationButton"
  s.version      = "1.0.0"
  s.summary      = "XCAnimationButton"

  s.description  = "XCAnimationButton自定义带动画按钮"

  s.homepage     = "https://github.com/fanxiaocong/XCAnimationButton"

  s.license      = "MIT"


  s.author       = { "樊小聪" => "1016697223@qq.com" }


  s.source       = { :git => "https://github.com/fanxiaocong/XCAnimationButton.git", :tag => s.version }


  s.source_files = "XCAnimationButton"
  s.requires_arc = true
  s.platform     = :ios, "8.0"
  s.frameworks   =  'UIKit'

end

