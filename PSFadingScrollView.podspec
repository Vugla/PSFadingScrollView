#
# Be sure to run `pod lib lint PSFadingScrollView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PSFadingScrollView'
  s.version          = '0.1.0'
  s.summary          = 'Horizontal scroll view with fading edges'
  s.description      = <<-DESC
PSFadingScrollView is a swift UIScrollView subclass, which applies gradient to scrollview mask layer, making its content appear as faded at edges.
                       DESC

  s.homepage         = 'https://github.com/Vugla/PSFadingScrollView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vugla' => 'predragsamardzic@msn.com' }
  s.source           = { :git => 'https://github.com/Vugla/PSFadingScrollView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'PSFadingScrollView/Classes/**/*'

end
