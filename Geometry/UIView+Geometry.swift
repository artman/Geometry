//
//  UIView+Geometry.swift
//  Geometry
//
//  Created by Tuomas Artman on 7.9.2014.
//  Copyright (c) 2014 Tuomas Artman. All rights reserved.
//

import Foundation
import UIKit

/// Extends CGRect with helper properties for positioning and setting dimensions
extension CGRect: StringLiteralConvertible {
    
    /// The top coordinate of the rect.
    public var top: CGFloat {
        get {
            return origin.y
        }
        set(value) {
            origin.y = value
        }
    }
    
    // The left-side coordinate of the rect.
    public var left: CGFloat {
        get {
            return origin.x
        }
        set(value) {
            origin.x = value
        }
    }
    
    // The bottom coordinate of the rect. Setting this will change origin.y of the rect according to
    /// the height of the rect.
    public var bottom: CGFloat {
        get {
            return origin.y + size.height
        }
        set(value) {
            origin.y = value - size.height
        }
    }
    
    // The right-side coordinate of the rect. Setting this will change origin.x of the rect according to
    /// the width of the rect.
    public var right: CGFloat {
        get {
            return origin.x + size.width
        }
        set(value) {
            origin.x = value - size.width
        }
    }
    
    // The width of the rect.
    public var width: CGFloat {
        get {
            return size.width
        }
        set(value) {
            size.width = value
        }
    }
    
    // The height of the rect.
    public var height: CGFloat {
        get {
            return size.height
        }
        set(value) {
            size.height = value
        }
    }
    
    // The center x coordinate of the rect.
    public var centerX: CGFloat {
        get {
            return origin.x + size.width / 2
        }
        set (value) {
            origin.x = value - size.width / 2
        }
    }
    
    // The center y coordinate of the rect.
    public var centerY: CGFloat {
        get {
            return origin.y + size.height / 2
        }
        set (value) {
            origin.y = value - size.height / 2
        }
    }
    
    // The center of the rect.
    public var center: CGPoint {
        get {
            return CGPoint(x: centerX, y: centerY)
        }
        set (value) {
            centerX = value.x
            centerY = value.y
        }
    }
    
    public typealias ExtendedGraphemeClusterLiteralType = StringLiteralType
    
    public static func convertFromExtendedGraphemeClusterLiteral(value: ExtendedGraphemeClusterLiteralType) -> CGRect {
        return convertFromStringLiteral(value)
    }
    
    public static func convertFromStringLiteral(value: StringLiteralType) -> CGRect {
        if value[value.startIndex] != "{" {
            let comp = value.componentsSeparatedByString(",")
            if comp.count != 4 {
                return CGRectZero
            }
            return CGRectFromString("{{\(comp[0]),\(comp[1])}, {\(comp[2]), \(comp[3])}}")
        }
        return CGRectFromString(value)
    }
}

extension CGPoint: StringLiteralConvertible {
    public typealias ExtendedGraphemeClusterLiteralType = StringLiteralType
    
    public static func convertFromExtendedGraphemeClusterLiteral(value: ExtendedGraphemeClusterLiteralType) -> CGPoint {
        return convertFromStringLiteral(value);
    }
    
    public static func convertFromStringLiteral(value: StringLiteralType) -> CGPoint {
        if value[value.startIndex] != "{" {
            return CGPointFromString("{\(value)}")
        }
        return CGPointFromString(value)
    }
}

extension UIView {
    public var top: CGFloat {
        get {
            return frame.left
        }
        set(value) {
            var frame = self.frame
            frame.top = value
            self.frame = frame
        }
    }
    
    public var left: CGFloat {
        get {
            return frame.right
        }
        set(value) {
            var frame = self.frame
            frame.left = value
            self.frame = frame
        }
    }
    
    public var bottom: CGFloat {
        get {
            return frame.bottom
        }
        set(value) {
            var frame = self.frame
            frame.bottom = value
            self.frame = frame
        }
    }
    
    public var right: CGFloat {
        get {
            return frame.right
        }
        set(value) {
            var frame = self.frame
            frame.right = value
            self.frame = frame
        }
    }
    
    public var centerX: CGFloat {
        get {
            return frame.centerX
        }
        set(value) {
            var frame = self.frame
            frame.centerX = value
            self.frame = frame
        }
    }
    
    public var centerY: CGFloat {
        get {
            return frame.centerY
        }
        set(value) {
            var frame = self.frame
            frame.centerY = value
            self.frame = frame
        }
    }
    
    public var center: CGPoint {
        get {
            return frame.center
        }
        set(value) {
            var frame = self.frame
            frame.center = value
            self.frame = frame
        }
    }
}
