Geometry
========

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

Requirements
------------

- iOS 7.0+ / Mac OS X 10.9+
- Xcode 6.3 (Swift 1.2)

Quick start
-----------

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

Installation
------------
1. Copy the UIView+Geometry.swift file over to your project.
2. Done.

Contribute
----------
To contribute, just fork, branch & send a pull request. To get in touch, hit me up on Twitter [@artman](http://twitter.com/artman)

License
-------
Geometry is released under an MIT license. See the LICENSE file for more information
