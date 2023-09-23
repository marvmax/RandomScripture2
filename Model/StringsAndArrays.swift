//
//  StringsAndArrays.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/23/22.
//

import Foundation

struct StringsAndArrays {
  // Make the verse that has been chosen red lettered
  func createColoredLetters(verses: [Verse], compare: Int) -> [ColoredLetter] {
    var strings = [ColoredLetter]()
    var count = 0
    for verse in verses {
      let verse = "\(verse.verse) \(verse.text)"
      let isRed = compare == count
      let addingStruct = ColoredLetter(verse: verse, changeColor: isRed)
      strings.append(addingStruct)
      count += 1
    }
    return strings
  }
  
  func findTheEndOfTheSlice(verses: [ColoredLetter], index: Int) -> Int {
      switch (index + 1) - verses.count {
      case -2:
        return index + 2
      case -1:
        return index + 1
      case 0:
        return index
      default:
        return index + 2
      }
  }
  
  func findTheStartOfTheSlice(verses: [ColoredLetter], index: Int) -> Int {
    switch (index) {
    case 0:
      return 0
    case 1:
      return 0
    default:
      return index - 2
    }
  }
  
  func getTheContextSlice(verses: [ColoredLetter], index: Int) -> [ColoredLetter] {
    let start = findTheStartOfTheSlice(verses: verses, index: index)
    let end = findTheEndOfTheSlice(verses: verses, index: index)
    return Array(verses[start...end])
  }
}
