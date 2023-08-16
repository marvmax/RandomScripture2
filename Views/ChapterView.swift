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
  @EnvironmentObject var scriptures: Scriptures
  var count = 0
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        VStack {
          Text("Chapter View")
            .font(.largeTitle)
            .foregroundColor(.black)
          Text(scriptures.pickBook.label)
            .font(.largeTitle)
            .foregroundColor(.black)
        ColoredLetterView()
        .padding([.bottom, .leading, .trailing])
        }
        MoveButton(buttonText: "Context", colorBackground: "blue") {
          selectedTab = 4
        }
        MoveButton(buttonText: "Verse", colorBackground: "purple") {
          selectedTab = 1
        }
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
    ChapterView(selectedTab: .constant(2), returnTab: .constant(3))
      .environmentObject(Scriptures())
  }
}
