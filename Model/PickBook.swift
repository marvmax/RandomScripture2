//
//  PickBook.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//
import Foundation

/*struct Verse: Codable, Hashable  {
  let reference: String
  let text: String
  let verse: Int
}*/

/*
struct VerseData {
  var pickBook: PickBook
  var verseTupel = ("", "")
  var verseStrings: [String] = [String]()
  init(pickBook: PickBook) {
    self.pidkBook = pickBook
    verseTupel = pickBook.verseTuple
    self.verseStrings = pickBook.verseStrings
  }
}


struct RandomVerse {
  var work: String
  //var standardWorks: StandardWorks
  //var pickBook: PickBook
  init(work: String) {
    self.work = work
    var standardWorks = StandardWorks(work: work)
    var pickBook = PickBook()
  }
  }
 */
  

class PickBook: ObservableObject {
  var work:  String
  var bookInt = 0//standardWorks.getBook(standardWork: work)
  var book: String = ""///standardWorks.getChapter(arrayAcess: bookInt)
  @Published var randomScriptureInt = 0 //standardWorks.randomVerseInt(chapter: book, arrayAccess: bookInt) // { randomTextNumer(verses) }
  var verses = [Verse]()
  var labelComp: String { getVerseLabel(verses) }
  @Published var label: String = ""
  @Published var verse: String = ""//{  }
  @Published var verseStrings = [String]()// { getStringVerses() }
  @Published var redLetterChapter = [ColoredLetter]()
  @Published var dataIsNotGood = true
  static var jsonCallCount = 0
  static var getVerseCallCount = 0
  static var getVerseLableCallCount = 0
  var jsonData: Data = Data()
  
  
  public init(work: String) {
    self.work = work
    let standardWorks = StandardWorks(work: self.work)
    self.bookInt = standardWorks.getBookInt(standardWork: self.work)
    self.book = standardWorks.getChapter(arrayAcess: bookInt)
    self.randomScriptureInt = standardWorks.randomVerseInt(chapter: book, arrayAccess: bookInt)
    self.jsonData = getJsonData()
    self.verses = getVerses()
    self.verseStrings =  getStringVerses()
    self.label = String(getVerseLabel(verses))
    self.verse = String(getVerse())
    self.dataIsNotGood = !isDataGood()
    let staa = StringsAndArrays()
    self.redLetterChapter = staa.createColoredLetters(verses: verses, compare: randomScriptureInt)
  }
  
  public func getJsonData() -> Data {
    // Used for testing
    //PickBook.jsonCallCount += 1
    //print("Entering jsonData \(PickBook.jsonCallCount)")
    if let URL = Bundle.main.url(forResource: book, withExtension: "json") {
      do {
        return try Data(contentsOf: URL)
      } catch {
        // Used for testing
        //print("from jsonData: Throwing from jsonData catch.")
        return Data()
      }
    }
    // Used for testing
    //print("from jsonData: Throwing from jsondata if let")
    return Data()
  }
/*
  func goodData() -> Data {
    var gotData = false
    var data = Data()
    var count = 0
    while !gotData {
      do {
        data = try jsonData()
        gotData = !data.isEmpty
        print("Tried: \(count)")
        print("goodData Value: \(data)")
        count += 1
      } catch {
        print("Printing from goodData catch \(data)")
        gotData = data.isEmpty
      }
      return data
    }
  }
  */
  
  public func getVerses() -> [Verse] {
    var verses: [Verse] = []
    if !self.jsonData.isEmpty {
      do {
        verses = try JSONDecoder().decode([Verse].self, from: self.jsonData)
        return verses
      } catch {
        // Used for testing
        //print("print from getVerses catch \(self.jsonData)")
        return []
      }
    } else {
      // Used for testing
      //print("print from getVerses else statement can't create the array")
      return []
    }
  }
    // let returnVerse = Verse(reference: "The cat is best", text: "Tada", verse: 6)
    //return []
  
  
  func getStringVerses() -> [String] {
    var stringVerses: [String] = []
    var count = 1
    for verse in self.verses {
      var newString = "\(count). " + verse.text
      newString = newString.trimmingCharacters(in: .whitespaces)
      stringVerses.append(newString)
      count += 1
    }
    return stringVerses
  }
}

extension PickBook {
  func getVerseLabel(_ verses: [Verse] ) -> String {
    // Used for testing
    //PickBook.getVerseCallCount += 1
    //print("Entering getVerseLabel for \(PickBook.getVerseCallCount)")
    let count = verses.count
    if count != 0 {
      if count < randomScriptureInt {
        let rand = Int.random(in: 0..<count)
        self.randomScriptureInt = rand
        // Used for testing
        //print("printing from count is less than randomeScriptureInt getVerseLabel")
        //print("new randomScriptureInt = \(rand)")
        return verses[rand].reference
      } else {
        // Used for testing
        //print("printing from count is greater than randomScriptureInt in getVerseLabel")
        return verses[randomScriptureInt].reference
      }
    } else {
      // Used for testing
      //print("Verses array in getVerseLabel is 0")
      return ""
    }
  }
  
  func getVerse() -> String {
    // Used for testing
    //PickBook.getVerseCallCount += 1
    //print("entering getVerse for the \(PickBook.getVerseCallCount)")
    let count = self.verseStrings.count
    if count != 0 {
      if count > randomScriptureInt {
        // used for testing
        // print("printing from getVerse count is greater randomScriptureInt")
        return self.verseStrings[randomScriptureInt]
      } else {
        // Used for testing
        //print("Printing from randomScriptureInt greater than count")
        let rand = Int.random(in: 0..<count)
        return self.verseStrings[rand]
      }
    } else {
      // Used for testing
      //("Printing from getVerse getStringVerses.count is 0")
      return ""
    }
  }
  
  // This logic is used
  func isDataGood() -> Bool {
    //
    if self.verse.isEmpty || self.label.isEmpty {
      return false
    } else {
      return true
    }
  }
}



