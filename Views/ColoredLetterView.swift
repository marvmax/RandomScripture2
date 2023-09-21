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
  @EnvironmentObject var opacity: Opacity
  
  //@State private var chapter = [ColoredLetter]()
  let manip = ScreenManipulation()
  let StrAndArr = StringsAndArrays()
  let screenWidthPercentage = 0.9
  let screenHeightPercentage = 0.9
  var body: some View {
    let verses = scriptures.pickBook.verses
    let compare = scriptures.pickBook.randomScriptureInt
    let chapter = StrAndArr.createColoredLetters(verses: verses, compare: compare)
      ZStack {
        GeometryReader { geometry in
          let height = geometry.size.height - (geometry.size.height - (geometry.size.height * screenHeightPercentage))
          let heightOffset = (geometry.size.height - height) / 2
          let width = geometry.size.width - (geometry.size.width - (geometry.size.width * screenWidthPercentage))
          let widthOffset = (geometry.size.width - width) / 2
          Rectangle()
            .frame(width: width, height: height)
            .offset(CGSize(width: widthOffset, height: heightOffset))
            .foregroundColor(.white.opacity(opacity.opacity))
          ScrollView {
            ForEach(chapter, id: \.self) { verse in
              Text(verse.verse)
                .foregroundColor(verse.changeColor ? .red : .black)
            }
          }
          .padding([.trailing, .leading])
          .frame(width: width, height: height)
          .offset(CGSize(width: widthOffset, height: heightOffset))
        }
      }
  }
}

struct ColoredLetterView_Previews: PreviewProvider {
  static var previews: some View {
    ColoredLetterView()
      .environmentObject(Scriptures())
      .environmentObject(Opacity())
      .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    ColoredLetterView()
      .environmentObject(Scriptures())
      .environmentObject(Opacity())
      .previewDevice(PreviewDevice(rawValue: "iPhone 13 mini"))
  }
}
