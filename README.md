# AdsForMyOtherApps

[![CI Status](http://img.shields.io/travis/halvorsen/AdsForMyOtherApps.svg?style=flat)](https://travis-ci.org/halvorsen/AdsForMyOtherApps)
[![Version](https://img.shields.io/cocoapods/v/AdsForMyOtherApps.svg?style=flat)](http://cocoapods.org/pods/AdsForMyOtherApps)
[![License](https://img.shields.io/cocoapods/l/AdsForMyOtherApps.svg?style=flat)](http://cocoapods.org/pods/AdsForMyOtherApps)
[![Platform](https://img.shields.io/cocoapods/p/AdsForMyOtherApps.svg?style=flat)](http://cocoapods.org/pods/AdsForMyOtherApps)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

AdsForMyOtherApps calls a view to overlay your current view by initializing class `Advertisement(images: [UIImage], seconds: Int?, url: String, target: UIViewController)`. 

One or more images will play like a slide show over the amount of seconds specified. 

Amount of seconds (optional) will not allow user to exit until countdown reaches zero and "x" appears. 

If seconds is set to "nil", an "x" will appear immediately and there will be no countdown. Target is the current ViewController.

For Example:

```swift
let adView = Advertisement(images: [#imageLiteral(resourceName: "RansomAd"),#imageLiteral(resourceName: "RansomAd2"),#imageLiteral(resourceName: "RansomAd3")], seconds: 10, url: "itms-apps://itunes.apple.com/app/id1192831637", target: self)
```

## Requirements

## Installation

AdsForMyOtherApps is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AdsForMyOtherApps"
```

## Author

halvorsen, “aaron.halvorsen@gmail.com
git config --global user.name  “halvorsen

## License

AdsForMyOtherApps is available under the MIT license. See the LICENSE file for more info.
