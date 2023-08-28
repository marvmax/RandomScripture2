//
//  RandomScripturesSnapshotUITests.swift
//  RandomScripturesSnapshotUITests
//
//  Created by Max Evans on 8/18/23.
//

import XCTest

final class RandomScripturesSnapshotUITests: XCTestCase {
  let app = XCUIApplication()
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    setupSnapshot(app)
    app.launch()
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testLaunch() throws {
    
    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app
    let bible = app.buttons["bible"]
    let standardWorks = app.buttons["standardWorks"]
    
    XCTAssertEqual(bible.label, "Bible")
    XCTAssertEqual(standardWorks.label, "Standard Works")
    XCTAssert(bible.waitForExistence(timeout: 0.5))
    snapshot("Choose Set")
    
    /*let attachment = XCTAttachment(screenshot: app.screenshot())
    attachment.name = "Launch Screen"
    attachment.lifetime = .keepAlways
    add(attachment)*/
  }
  
  func testPickChristian() throws {
    app.buttons["bible"].tap()
    
    let bible = app.buttons["bible"]
    let oldTestament = app.buttons["oldTestament"]
    let newTestament = app.buttons["newTestament"]
    let home = app.buttons["home"]
    
    XCTAssertTrue(bible.exists)
    XCTAssertTrue(oldTestament.exists)
    XCTAssertTrue(newTestament.exists)
    XCTAssertTrue(home.exists)
    snapshot("Christian Scriptures")
  }
  
  func testRestorationPickScriptures() throws {
    app.buttons["standardWorks"].tap()
    
    let standardWorks = app.buttons["standardWorks"]
    let tripleCombination = app.buttons["tripleCombination"]
    let bookOfMormon = app.buttons["bookOfMormon"]
    let doctrineAndCovenants = app.buttons["doctrineAndCovenants"]
    let pearlOfGreatPrice = app.buttons["pearlOfGreatPrice"]
    
    XCTAssertTrue(standardWorks.exists)
    XCTAssertTrue(tripleCombination.exists)
    XCTAssertTrue(bookOfMormon.exists)
    XCTAssertTrue(doctrineAndCovenants.exists)
    XCTAssertTrue(pearlOfGreatPrice.exists)
    snapshot("Restoration Scripture")
  }
  
  func testVerseView() throws {
    app.buttons["standardWorks"].tap()
    app.buttons["tripleCombination"].tap()
    
    let verseLable = app.staticTexts["verseLable"]
    let verse = app.staticTexts["verse"]
  
    XCTAssertTrue(verseLable.exists)
    XCTAssertTrue(verse.exists)
    snapshot("Verse View")
  }
  
  func testContextView() throws {
    app.buttons["standardWorks"].tap()
    app.buttons["tripleCombination"].tap()
    app.buttons["context"].tap()
    
    let context = app.staticTexts["context"]
    let verseInContext = app.staticTexts["verseInContext"]
  
    XCTAssertTrue(context.exists)
    XCTAssertTrue(verseInContext.exists)
    snapshot("Context View")
  }
  
  func testChapterView() throws {
    app.buttons["standardWorks"].tap()
    app.buttons["tripleCombination"].tap()
    app.buttons["context"].tap()
    app.buttons["chapter"].tap()
    
    let chapter = app.staticTexts["chapter"]
    let verseInChapter = app.staticTexts["verseInChapter"]
    
    XCTAssertTrue(chapter.exists)
    XCTAssertTrue(verseInChapter.exists)
    snapshot("Chapter View")
  }
}
