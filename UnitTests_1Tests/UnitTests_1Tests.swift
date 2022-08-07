//
//  UnitTests_1Tests.swift
//  UnitTests_1Tests
//
//  Created by test on 07.08.2022.
//

import XCTest
@testable import UnitTests_1 // is this really needed?

class UnitTests_1Tests: XCTestCase {

    var sut: ViewController!
    
    override func setUpWithError() throws {
        super.setUp()
        
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        super.tearDown()
    }
    
    func testLowestVolumeShouldBeZero() {
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest value should be equal to 0")
    }
    
    func testHighersVolumeShouldBe100() {
        sut.setVolume(value: 2200)
        
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest value should be equal to 100")
    }
    
    func testCharsInStringAreTheSame() {
        // given
        let string1 = "qwerty"
        let string2 = "ytrewq"
        
        // when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        
        // then
        XCTAssert(bool, "Characters should be the same in two strings \(string1), \(string2)")
    }
    
    func testCharsInStringAreDifferent() {
        // given
        let string1 = "qwerty"
        let string2 = "ytrewq228"
        
        // when
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        
        // then
        XCTAssert(!bool, "Characters should be different in two strings \(string1), \(string2)")
    }
}
