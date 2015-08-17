# Geometry
[![Build Status](https://travis-ci.org/artman/Geometry.svg?branch=master)](https://travis-ci.org/artman/Geometry)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/Geometry.svg)](https://cocoapods.org/pods/Geometry)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![License](https://img.shields.io/cocoapods/l/Geometry.svg?style=flat&color=gray)
![Platform](https://img.shields.io/cocoapods/p/Geometry.svg?style=flat)
[![Twitter](https://img.shields.io/badge/twitter-@artman-blue.svg?style=flat)](http://twitter.com/artman)

Geometry is a UIView and CGRect extension that lets you work with view and rect geometry easier.
values. It adds the following properties to both UIView and CGRect:

* top
* left
* bottom
* right
* width
* height
* centerX
* centerY

And it lets you define CGRectangles and CGPoints as strings.

## Requirements

- iOS 7.0+ / Mac OS X 10.9+
- Xcode 6.3 (Swift 1.2)

## Installation

> **CocoaPods uses embedded frameworks that require a minimum deployment target of iOS 8 or OS X Mavericks.**
>
> To use Signals with a project targeting iOS 7, simply copy `Geometry.swift` into your project.

### CocoaPods

CocoaPods 0.36 adds supports for Swift and embedded frameworks. To integrate Geometry into your project add the following to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'Geometry', '~> 1.0'
```

### Carthage

To integrate Geometry into your project using Carthage add the following to your `Cartfile`:

```ruby
github "artman/Geometry" ~> 1.0
```


## Quick start

```
myView.frame = CGRectMake(10, 10, 20, 20)
myView.left = 20 // Frame is now {{20, 10}, {20, 20}}
myView.width = 100 // Frame is now {{20, 10}, {100, 20}}
myView.right = 150 // Frame is now {{50, 10}, {100, 20}}
```

This extension also provides StringLiteralConverters for both CGRect and CGPoint, so you can use Strings to initialize a CGRect:

```
myView.frame = "10, 10, 20, 20"
myView.center = "50, 50"
var rect: CGRect = "20, 25, 100, 100"
```

## Contribute

To contribute, just fork, branch & send a pull request. To get in touch, hit me up on Twitter [@artman](http://twitter.com/artman)

## License

Geometry is released under an MIT license. See the LICENSE file for more information
