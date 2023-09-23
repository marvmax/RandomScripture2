//
//  BookView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ChapterView: View {
  @Binding var selectedTab: Int
  @Binding var returnTab: Int
  @Binding var chooseAgainTab: Int
  @EnvironmentObject var scriptures: Scriptures
  @EnvironmentObject var screenSettings: ScreenSettings
  //@EnvironmentObject var opacity: Opacity
  var count = 0
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        VStack {
          Text("Verse in Chapter")
            .font(.largeTitle)
            .foregroundColor(.black)
            .offset(CGSize(width: 0, height: 40))
            .accessibilityLabel("chapter")
          Text(scriptures.pickBook.label)
            .font(.largeTitle)
            .foregroundColor(.black)
            .offset(CGSize(width: 0, height: 40))
            .accessibilityLabel("verseInChapter")
        }
        ColoredLetterView()
        //.padding([.leading, .trailing])
        MoveButton(buttonText: "Verse in Context", colorBackground: "blue") {
          selectedTab = 4
        }
        MoveButton(buttonText: "Verse", colorBackground: "purple") {
          selectedTab = 1
        }
        .padding(.top)
        MoveButton(buttonText: "Choose Again", colorBackground: "yellow") {
          selectedTab = chooseAgainTab
        }
        .accessibilityLabel("chooseAgain")
        .accessibilityLabel("home")
        .padding(.top)
        MoveButton(buttonText: "Home", colorBackground: "red") {
          selectedTab = 3
        }
        .padding(.top)
      }
      .offset(x: 0, y: -30)
    }
  }
}


struct ChapterView_Previews: PreviewProvider {
  static var previews: some View {
    ChapterView(selectedTab: .constant(2), returnTab: .constant(3), chooseAgainTab: .constant(5))
      .environmentObject(Scriptures())
      .environmentObject(ScreenSettings())
      .previewDevice("iPhone 14 Plus Max")
    ChapterView(selectedTab: .constant(2), returnTab: .constant(3), chooseAgainTab: .constant(5))
      .environmentObject(Scriptures())
      .environmentObject(ScreenSettings())
      .previewDevice("iPhone 11")
  }
}
