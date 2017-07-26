

Pod::Spec.new do |s|
  s.name             = 'AdsForMyOtherApps'
  s.version          = '0.1.0'
  s.summary          = 'Advertisement views to generate traffic to your other iOS apps.'

  s.description      = <<-DESC
An alternative to Google Ads, this pod allows you to create advertisement views to generate traffic to your other iOS apps. Version 0.1.0 includes a full screen iPhone portrait advertisement that animates in from the side and covers the current view. An "X" appears in the top right corner for the user to exit this view, otherwise a tap anywhere on the screen will open URL. An optional countdown timer replaces the "X" for a specified time. Simply provide one or more images, for example your target app preview slides and enter the amount of time the ad will be shown.
                       DESC

  s.homepage         = 'https://github.com/halvorsen/AdsForMyOtherApps'
  s.screenshots     = 'http://aaronhalvorsen.com/resources/adExample.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'halvorsen' => '“aaron.halvorsen@gmail.com
git config --global user.name  “halvorsen' }
  s.source           = { :git => 'https://github.com/halvorsen/AdsForMyOtherApps.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/halvoh'

  s.ios.deployment_target = '8.0'
  s.source_files = 'AdsForMyOtherApps/Classes/**/*'
  s.frameworks = 'UIKit'

end
