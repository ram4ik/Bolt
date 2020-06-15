//
//  BoltUITests.swift
//  BoltUITests
//
//  Created by ramil on 15.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import XCTest

class BoltUITests: XCTestCase {

    let boltApp = XCUIApplication(bundleIdentifier: "ee.mtakso.client")

    override func setUp() {
        boltApp.launch()
    }
    
    override func tearDown() {
        boltApp.terminate()
    }
    
    func testBoltAppMenuButton() throws {
        
        boltApp.description
        boltApp.buttons["NavigationView.menuButton"].tap()
    }
    
    func testBoltAppSccoterButton() throws {
        
        boltApp.buttons["NavigationView.scooterButton"].tap()
        boltApp.buttons["unlock.scooter.button"].tap()
        
        // turn on flash light
        boltApp.buttons["UnlockScooter.flashButton"].tap()
        // turn off flash light
        boltApp.buttons["UnlockScooter.flashButton"].tap()
    }
    
    func testBoltAppFoodButton() throws {
        
        boltApp.buttons["NavigationView.foodButton"].tap()
    }
    
    func testBoltAppWhereToAddressButton() throws {
        
        boltApp.buttons["WhereTo.addressBar"].tap()
    }
    
    func testBoltAppNavigationButtons() throws {
        
        boltApp.buttons["nav.back.button"].tap()
        boltApp.buttons["nav.right.button"].tap()
    }
}
