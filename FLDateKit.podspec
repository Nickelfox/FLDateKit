
Pod::Spec.new do |spec|

  spec.name          = 'FLDateKit'
  s.name             = 'FLDateKit'
  s.version          = '0.0.1'
  s.summary          = 'Date Wrapper for iOS by Fox Labs.'
  s.description      = <<-DESC
                        Date Wrapper.
                      DESC
  s.homepage         = 'https://github.com/Nickelfox/FLDateKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ravindra Soni' => 'soni@nickelfox.com' }
  s.source           = { :git => 'https://github.com/Nickelfox/FLDateKit.git', :tag => s.version.to_s }

  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = "9.0"
  s.ios.deployment_target = '11.0'
  s.watchos.deployment_target = "2.0"
  
  s.source_files = 'Source/**/*' 

end
