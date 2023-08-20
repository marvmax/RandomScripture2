//
//  PickB ookTests.swift
//  RandomScripturesTests
//
//  Created by Max Evans on 7/29/22.
//

import XCTest
@testable import RandomScriptures

class PickBookTests: XCTestCase {
  var sutGood: PickBook!
  var sutBad: PickBook!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sutGood = PickBook(work: "Standard Works")
    sutBad = PickBook(work: "Dog Breath")
  }
  
  override func tearDownWithError() throws {
    sutGood = nil
    sutBad = nil
    try super.tearDownWithError()
  }
  
  func testPickBook_getVerses() {
    
    // when
    let verses = sutGood.getVerses()
    XCTAssertFalse(verses.isEmpty)
  }
  
  // MARK - given
  
  func testPickBookk_badDataGetVerses() {
    // given
   // setBook()
    
    // when
    let verses = sutBad.getVerses()
    
    // then
    XCTAssert(verses.isEmpty)
  }
  
  func testPickBook_testIsGoodData() {
    // giver
    
    // when
    let isDataGood = sutGood.isDataGood()
    
    // then
    XCTAssert(isDataGood)
  }
  
  func testPickBook_testIsNotGoodData() {
    // given
    
    // when
    let isDataGood = sutBad.dataIsNotGood
    
    // then
    XCTAssertFalse(isDataGood)
  }
  
  func testPickBook_testGoodData () {
    
    // when
    let isDataGood = sutGood.dataIsNotGood
    
    // then
    XCTAssert(isDataGood)
  }
  
  func testPickBook_jsonDataIsNotEmpty() {
    // given
    
    // when
    let data = sutGood.jsonData
    
    XCTAssertFalse(data.isEmpty)
  }
  
  func testPickBook_jsonDataIsEmpty() {
    // given
    
    // when
    let data = sutBad.jsonData
    
    XCTAssertTrue(data.isEmpty)
  }
}
