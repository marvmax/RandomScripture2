//
//  ColoredLetterView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/22/22.
//

import SwiftUI
import Combine

struct ColoredLetter: Hashable {
  var verse: String
  var changeColor: Bool
}

struct ColoredLetterView: View {
  @EnvironmentObject var scriptures: Scriptures
  //@State private var chapter = [ColoredLetter]()
  let manip = ScreenManipulation()
  let StrAndArr = StringsAndArrays()
  var body: some View {
    let verses = scriptures.pickBook.verses
    let compare = scriptures.pickBook.randomScriptureInt
    let chapter = StrAndArr.createColoredLetters(verses: verses, compare: compare)
    ZStack {
      Rectangle()
        .frame(width: manip.getFrameWidth(), height: manip.getFrameHeight())
        .foregroundColor(.white)
        .opacity(0.7)
    ScrollView {
      ForEach(chapter, id: \.self) { verse in
        Text(verse.verse)
          .foregroundColor(verse.changeColor ? .red : .black)
      }
    }
    .frame(width: manip.getFrameWidth(), height: manip.getFrameHeight())
    }
  }
}

struct ColoredLetterView_Previews: PreviewProvider {
  static var previews: some View {
    ColoredLetterView()
      .environmentObject(Scriptures())
      .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    ColoredLetterView()
      .environmentObject(Scriptures())
      .previewDevice(PreviewDevice(rawValue: "iPhone 13 mini"))
  }
}
