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
  
  let verses = MockArray().verseArray
  
  func testStringsAndArrays_createColoredArray() {
    let index = 5
    let verse = verses[index]
    print(verse.reference)
    XCTAssertFalse(verse.reference.isEmpty )
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let coloredVerse = coloredVerses[index]
    XCTAssertTrue(coloredVerse.changeColor)
  }
  
  func testStringsAndArrays_getEndOfSlice_IndexInTheMiddle(){
    // The mock chapter has 1-12 verses
    // Looking for index in middle of verse
    let index = 5
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceEnd = sut.findTheEndOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceEnd == index + 2)
  }
  
  func testStringsAndArrays_getEndOfSlice_IndexTwoFromEnd(){
    // The mock chapter has 1-12 verses
    // Check the array from two from the end
    let index = 9
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceEnd = sut.findTheEndOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceEnd == index + 2)
  }
  
  func testStringsAndArrays_getEndOfSlice_IndexOneFromEnd(){
    // The mock chapter has 1-12 verses
    // Check the array from two from the end
    let index = 10
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceEnd = sut.findTheEndOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceEnd == index + 1)
  }
  
  func testStringsAndArrays_getEndOfSlice_AtTheEnd(){
    // The mock chapter has 1-12 verses
    // Check the array from two from the end
    let index = 11
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceEnd = sut.findTheEndOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceEnd == index)
  }
  
  func testStringsAndArrays_findStartOfSlice_IndexInTheMiddle(){
    // The mock chapter has 1-12 verses
    // Check the array in the middle
    let index = 5
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceStart = sut.findTheStartOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceStart == index - 2)
  }
  
  func testStringsAndArrays_findStartOfSlice_IndexAtTheStart(){
    // The mock chapter has 1-12 verses
    // Check the array at the first
    let index = 0
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceStart = sut.findTheStartOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceStart == 0)
  }
  
  func testStringsAndArrays_findStartOfSlice_IndexSecondStart(){
    // The mock chapter has 1-12 verses
    // Check the array second in the array
    let index = 1
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceStart = sut.findTheStartOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceStart == 0)
  }
  
  func testStringsAndArrays_findStartOfSlice_IndexThirdStart(){
    // The mock chapter has 1-12 verses
    // Check the array third in the array
    let index = 2
    
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let sliceStart = sut.findTheStartOfTheSlice(verses: coloredVerses, index: index)
    XCTAssertTrue(sliceStart == 0)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceInMiddle() {
    // The mock chapter has 1-12 verses
    // Check the array two from the end
    let index = 5

    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[4].verse)
    XCTAssert(slice[2].changeColor)
    XCTAssert(slice.count == 5)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceTwoFromEnd() {
    // The mock chapter has 1-12 verses
    // Check the array two from the end
    let index = 9
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[4].verse)
    XCTAssert(slice[2].changeColor)
    XCTAssert(slice.count == 5)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceOneFromEnd() {
    // The mock chapter has 1-12 verses
    // Check the array two from the end
    let index = 10
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[3].verse)
    XCTAssert(slice[2].changeColor)
    XCTAssert(slice.count == 4)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceTheEnd() {
    // The mock chapter has 1-12 verses
    // Check the array two from the end
    let index = 11
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[2].verse)
    XCTAssert(slice[2].changeColor)
    XCTAssert(slice.count == 3)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceTheBeggining() {
    // The mock chapter has 1-12 verses
    // Check the array
    let index = 0
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[2].verse)
    XCTAssert(slice[0].changeColor)
    XCTAssert(slice.count == 3)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceTheSecond() {
    // The mock chapter has 1-12 verses
    // Check the array one from the beginning
    let index = 1
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[3].verse)
    XCTAssert(slice[1].changeColor)
    XCTAssert(slice.count == 4)
  }
  
  func testStringsAndArrays_getTheContextSlice_SliceTheThird() {
    // The mock chapter has 1-12 verses
    // Check the array two from the beginning
    let index = 2
    let coloredVerses = sut.createColoredLetters(verses: verses, compare: index)
    
    let slice = sut.getTheContextSlice(verses: coloredVerses, index: index)
    print(slice[4].verse)
    XCTAssert(slice[2].changeColor)
    XCTAssert(slice.count == 5)
  }
}
