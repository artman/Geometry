//
//  GeometryTests.swift
//  GeometryTests
//
//  Created by Tuomas Artman on 7.9.2014.
//  Copyright (c) 2014 Tuomas Artman. All rights reserved.
//

import UIKit
import XCTest

class GeometryTests: XCTestCase {
    
    func testRect() {
        var rect = CGRect(x: 10, y: 10, width: 20, height: 20)
        rect.top += 5
        XCTAssertEqual(rect, CGRect(x: 10, y: 15, width: 20, height: 20), "Top")
        
        rect.left += 5
        XCTAssertEqual(rect, CGRect(x: 15, y: 15, width: 20, height: 20), "Left")
        
        rect.bottom -= 10
        XCTAssertEqual(rect, CGRect(x: 15, y: 5, width: 20, height: 20), "Bottom")
        
        rect.right -= 10
        XCTAssertEqual(rect, CGRect(x: 5, y: 5, width: 20, height: 20), "Right")
        
        rect.width += 10
        XCTAssertEqual(rect, CGRect(x: 5, y: 5, width: 30, height: 20), "Width")
        
        rect.height += 20
        XCTAssertEqual(rect, CGRect(x: 5, y: 5, width: 30, height: 40), "Height")
        
        XCTAssertEqual(rect.center, CGPoint(x: 20, y: 25), "Center")
        XCTAssertEqual(rect.centerX, 20, "CenterX")
        XCTAssertEqual(rect.centerY, 25, "CenterY")
        
        
        rect.centerX = 100
        XCTAssertEqual(rect, CGRect(x: 85, y: 5, width: 30, height: 40), "CenterX")
        
        rect.centerY = 100
        XCTAssertEqual(rect, CGRect(x: 85, y: 80, width: 30, height: 40), "CenterY")
        
        rect.center = CGPoint(x: 10, y:10)
        XCTAssertEqual(rect, CGRect(x: -5, y: -10, width: 30, height: 40), "Center")
    }
    
    func testPointStringConversion() {
        var point: CGPoint = "10, 20"
        XCTAssertEqual(point, CGPoint(x: 10, y: 20), "Create from string")
        
        var view = UIView(frame: "0, 0, 10, 10");
        view.center = "10, 10"
        XCTAssertEqual(view.frame, CGRect(x: 5, y: 5, width: 10, height: 10), "Create from string")
    }
    
    func testRectStringConversion() {
        let rect: CGRect = "10, 20, 50, 60"
        XCTAssertEqual(rect, CGRect(x: 10, y: 20, width: 50, height: 60), "Create from string")
        
        let view = UIView(frame: "{{10, 20}, {50, 60}}")
        XCTAssertEqual(rect, CGRect(x: 10, y: 20, width: 50, height: 60), "Create from string")
    }
}
