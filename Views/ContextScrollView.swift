//
//  ContextView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/23/22.
//

import SwiftUI

struct ContextScrollView: View {
  @EnvironmentObject var scriptures: Scriptures
  @EnvironmentObject var opacity: Opacity
  var staa = StringsAndArrays()
  var manip = ScreenManipulation()
  let screenHeightPercentage = 0.9
  let screenWidthPercentage = 0.9
  var body: some View {
    let verses = staa.getTheContextSlice(verses: scriptures.pickBook.redLetterChapter, index: scriptures.pickBook.randomScriptureInt)
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
          .opacity(opacity.opacity)
        ScrollView {
          ForEach(verses, id: \.self) { verse in
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

struct ContextScrollView_Previews: PreviewProvider {
  @State static private var chapter = [ColoredLetter]()
  //let aaa = StringsAndArrays().
  //@State var chapter: [ColoredLetter]
  
  //var saa = StringsAndArrays()
  
  static var previews: some View {
    ContextScrollView()
      .environmentObject(Scriptures())
      .environmentObject(Opacity())
  }
}
