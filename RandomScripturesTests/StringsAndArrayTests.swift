//
//  RandomScripturesTests.swift
//  RandomScripturesTests
//
//  Created by Max Evans on 1/25/22.
//

import XCTest
@testable import RandomScriptures

class ChapterArrayTests: XCTestCase {
  var sut: StringsAndArrays!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = StringsAndArrays()
  }
  
  override func tearDownWithError() throws {
    sut = nil
    try super.tearDownWithError()
  }
  
  func testArray_thatFindsTheEndOfTheArraySlice_WithSliceInMiddle() {
    // given
    let middleIndex =  7
    let end = middleIndex + 2
    
    // when
    let someEnd = sut.findTheEndOfTheSlice(verses: sut.coloredLettersArray, index: middleIndex)
    
    // then
    XCTAssertEqual(someEnd, end)
  }
  
  func testArray_thatFindsTheEndOfTheArraySlice_WithSliceTowardsEnd() {
    // given
    let middleIndex = 9
    let end = middleIndex + 1
    
    // when
    let someEnd = sut.findTheEndOfTheSlice(verses: sut.coloredLettersArray, index: middleIndex)
    
    // then
    XCTAssertEqual(end, someEnd)
  }
  
  func testArray_thatFindsTheEndOfTheArraySlice_withVerseAtEnd() {
    let endIndex = 10
    let someEnd = sut.findTheEndOfTheSlice(verses: sut.coloredLettersArray, index: endIndex)
    
    let end = 10
    XCTAssertEqual(end, someEnd)
  }
  
  func testArray_thatFindsTheStartOfTheArraySlice_withVerseInMiddle() {
    let middleIndex = 6
    let someStart = sut.findTheStartOfTheSlice(verses: sut.coloredLettersArray, index: middleIndex)
    
    let start = middleIndex - 2
    XCTAssertEqual(someStart, start)
  }
  
  func testArray_thatFindsTheStartOfTheArraySlice_withVerseNearStart() {
    let middleIndex = 1
    let someStart = sut.findTheStartOfTheSlice(verses: sut.coloredLettersArray, index: middleIndex)
    
    let start = middleIndex
    XCTAssertEqual(someStart, start)
  }
  
  func testArray_thatFindsTheStartOfTheArraySlice_withVerseAtStart() {
    let middleIndex = 0
    let someStart = sut.findTheStartOfTheSlice(verses: sut.coloredLettersArray, index: middleIndex)
    
    let start = middleIndex
    XCTAssertEqual(someStart, start)
  }
  
  func testArray_arraySlice_fromTheMiddle(){
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArray, index: 5)
    let isRed = slice[2].changeColor
    
    XCTAssert(isRed)
  }
  
  func testArray_arraySlice_fromNearTheEnd() {
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArrayNearEnd, index: 9)
    let isRed = slice[2].changeColor
    
    XCTAssert(isRed)
  }
  
  func testArray_arraySlice_fromAtTheEnd() {
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArrayAtEnd, index: 10)
    let isRed = slice[2].changeColor
    
    XCTAssert(isRed)
  }
  
  func testArray_arraySlice_nearTheBeginning() {
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArrayNearBeginning, index: 1)
    let isRed = slice[1].changeColor
    
    XCTAssert(isRed)
  }
  
  func testArray_arraySlice_nearAtBeginning() {
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArrayAtBeginning, index: 0)
    let isRed = slice[0].changeColor
    
    XCTAssert(isRed)
  }
  
  func testArray_arraySlice_twoFromTheBeginning() {
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArray2FromBeginning, index: 2)
    let isRed = slice[2].changeColor
    
    XCTAssert(isRed)
  }
  
  func testArray_arraySlice_twoFromTheEnd() {
    let slice = sut.getTheContextSlice(verses: sut.coloredLettersArray2FromEnd, index: 8)
    let isRed = slice[2].changeColor
    
    XCTAssert(isRed)
  }
}
