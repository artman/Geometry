//
//  Copyright (c) 2014-2017 Tuomas Artman. All rights reserved.
//

import UIKit
import XCTest
import Geometry

class GeometryTests: XCTestCase {
    
    func testRect() {
        var rect = CGRect(x: 10, y: 10, width: 20, height: 20)
        rect.top += 5
        XCTAssertEqual(rect, CGRect(x: 10, y: 15, width: 20, height: 20), "Should modified rect correctly")
        
        rect.left += 5
        XCTAssertEqual(rect, CGRect(x: 15, y: 15, width: 20, height: 20), "Should modified rect correctly")
        
        rect.bottom -= 10
        XCTAssertEqual(rect, CGRect(x: 15, y: 5, width: 20, height: 20), "Should modified rect correctly")
        
        rect.right -= 10
        XCTAssertEqual(rect, CGRect(x: 5, y: 5, width: 20, height: 20), "Should modified rect correctly")
    
        rect.size.width = 30
        rect.size.height = 40
        
        XCTAssertEqual(rect.center, CGPoint(x: 20, y: 25), "Should modified rect correctly")
        XCTAssertEqual(rect.centerX, 20, "Should modified rect correctly")
        XCTAssertEqual(rect.centerY, 25, "Should modified rect correctly")
        
        rect.centerX = 100
        XCTAssertEqual(rect, CGRect(x: 85, y: 5, width: 30, height: 40), "Should modified rect correctly")
        
        rect.centerY = 100
        XCTAssertEqual(rect, CGRect(x: 85, y: 80, width: 30, height: 40), "Should modified rect correctly")
        
        rect.center = CGPoint(x: 10, y:10)
        XCTAssertEqual(rect, CGRect(x: -5, y: -10, width: 30, height: 40), "Should modified rect correctly")
    }
    
    func testUIView() {
        let view = UIView(frame: "10, 10, 20, 20")
  
        view.top += 5
        XCTAssertEqual(view.frame, CGRect(x: 10, y: 15, width: 20, height: 20), "Should modified rect correctly")
        
        view.left += 5
        XCTAssertEqual(view.frame, CGRect(x: 15, y: 15, width: 20, height: 20), "Should modified rect correctly")
        
        view.bottom -= 10
        XCTAssertEqual(view.frame, CGRect(x: 15, y: 5, width: 20, height: 20), "Should modified rect correctly")
        
        view.right -= 10
        XCTAssertEqual(view.frame, CGRect(x: 5, y: 5, width: 20, height: 20), "Should modified rect correctly")
        
        view.width += 10
        XCTAssertEqual(view.frame, CGRect(x: 5, y: 5, width: 30, height: 20), "Should modified rect correctly")
        
        view.height += 20
        XCTAssertEqual(view.frame, CGRect(x: 5, y: 5, width: 30, height: 40), "Should modified rect correctly")
        
        XCTAssertEqual(view.center, CGPoint(x: 20, y: 25), "Should modified rect correctly")
        XCTAssertEqual(view.centerX, 20, "Should modified rect correctly")
        XCTAssertEqual(view.centerY, 25, "Should modified rect correctly")
        
        
        view.centerX = 100
        XCTAssertEqual(view.frame, CGRect(x: 85, y: 5, width: 30, height: 40), "Should modified rect correctly")
        
        view.centerY = 100
        XCTAssertEqual(view.frame, CGRect(x: 85, y: 80, width: 30, height: 40), "Should modified rect correctly")
        
        view.center = CGPoint(x: 10, y:10)
        XCTAssertEqual(view.frame, CGRect(x: -5, y: -10, width: 30, height: 40), "Should modified rect correctly")
    }
    
    func testRectStringConversion() {
        let rect: CGRect = "10, 20, 50, 60"
        XCTAssertEqual(rect, CGRect(x: 10, y: 20, width: 50, height: 60), "Should have create from string")
        
        let view = UIView(frame: "{{10, 20}, {50, 60}}")
        XCTAssertEqual(view.frame, CGRect(x: 10, y: 20, width: 50, height: 60), "Should have create from string")
    }
    
    func testPointStringConversion() {
        let point: CGPoint = "10, 20"
        XCTAssertEqual(point, CGPoint(x: 10, y: 20), "Should have create from string")
        
        let view = UIView(frame: "0, 0, 10, 10");
        view.center = "10, 10"
        XCTAssertEqual(view.frame, CGRect(x: 5, y: 5, width: 10, height: 10), "Should have create from string")
    }
}
