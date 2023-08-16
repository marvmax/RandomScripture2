//
//  StringsAndArrays.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/23/22.
//

import Foundation

struct StringsAndArrays {
  // Arrays for testing correct array access
  let coloredLettersArray = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: true),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
  ]
  
  let coloredLettersArrayNearEnd = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: false),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: true),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
  ]
  
  let coloredLettersArrayAtEnd = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: false),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: true)
  ]
  
  let coloredLettersArray2FromEnd = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: false),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: true),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
  ]
  
  let coloredLettersArrayNearBeginning = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: true),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: false),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
  ]
  
  let coloredLettersArrayAtBeginning = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: true),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: false),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
  ]
  
  let coloredLettersArray2FromBeginning = [
 ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
  ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
  ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: true),
 ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
 ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
 ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: false),
 ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
 ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
 ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
 ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
 ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
  ]
  
  func returnArray() -> [ColoredLetter] {
    let coloredLettersArray = [
   ColoredLetter(verse: "1 And it came to pass that they did go forth, and began to preach the word of God unto the people, entering into their synagogues, and into their houses; yea, and even they did preach the word in their streets.", changeColor: false),
    ColoredLetter(verse: "2 And it came to pass that after much labor among them, they began to have success among the apoor class of people; for behold, they were cast out of the synagogues because of the coarseness of their apparel", changeColor: false),
    ColoredLetter(verse: "3 Therefore they were not permitted to enter into their synagogues to worship God, being esteemed as filthiness; therefore they were poor; yea, they were esteemed by their brethren as adross; therefore they were bpoor as to things of the world; and also they were poor in heart.", changeColor: false),
   ColoredLetter(verse: "4 Now, as Alma was teaching and speaking unto the people upon the hill aOnidah, there came a great bmultitude unto him, who were those of whom we have been speaking, of whom were cpoor in heart, because of their poverty as to the things of the world.", changeColor: false),
   ColoredLetter(verse: "5 And they came unto Alma; and the one who was the foremost among them said unto him: Behold, awhat shall these my brethren do, for they are bdespised of all men because of their poverty, yea, and more especially by our priests; for they have ccast us out of our synagogues which we have labored abundantly to build with our own hands; and they have cast us out because of our exceeding poverty; and we have dno place to worship our God; and behold, ewhat shall we do?", changeColor: false),
   ColoredLetter(verse: "6 And now when Alma heard this, he turned him about, his face immediately towards him, and he beheld with great joy; for he beheld that their aafflictions had truly bhumbled them, and that they were in a cpreparation to hear the word.", changeColor: true),
   ColoredLetter(verse: "7 Therefore he did say no more to the other multitude; but he stretched forth his hand, and cried unto those whom he beheld, who were truly penitent, and said unto them:", changeColor: false),
   ColoredLetter(verse: "8 I behold that ye are alowly in heart; and if so, blessed are ye.", changeColor: false),
   ColoredLetter(verse: "9 Behold thy brother hath said, What shall we do?—for we are cast out of our synagogues, that we cannot worship our God.", changeColor: false),
   ColoredLetter(verse: "10 Behold I say unto you, do ye suppose that ye acannot worship God save it be in your synagogues only?", changeColor: false),
   ColoredLetter(verse: "11 And moreover, I would ask, do ye suppose that ye must not worship God only aonce in a week?", changeColor: false)
    ]
    return coloredLettersArray
  }
  
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
      switch (index + 2) - verses.count + 1 {
      case 2:
        return index
      case 1:
        return index + 1
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
