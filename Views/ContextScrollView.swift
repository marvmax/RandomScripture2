//
//  ContextView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/23/22.
//

import SwiftUI

struct ContextScrollView: View {
  @EnvironmentObject var scriptures: Scriptures
  var staa = StringsAndArrays()
  var manip = ScreenManipulation()
  var body: some View {
    let verses = staa.getTheContextSlice(verses: scriptures.pickBook.redLetterChapter, index: scriptures.pickBook.randomScriptureInt)
    ZStack {
      Rectangle()
        .frame(width: manip.getFrameWidth(), height: manip.getFrameHeight())
        .foregroundColor(.white)
        .opacity(0.7)
      ScrollView {
        ForEach(verses, id: \.self) { verse in
          Text(verse.verse)
            .foregroundColor(verse.changeColor ? .red : .black)
        }
      }
      .frame(width: manip.getFrameWidth(), height: manip.getFrameHeight())
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
  }
}
