//
//  ContextView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/29/22.
//

import SwiftUI

struct ContextView: View {
  @EnvironmentObject var scriptures: Scriptures
  @EnvironmentObject var screenSettings: ScreenSettings
  @Binding var selectedTab: Int
  @Binding var returnTab: Int
  @Binding var chooseAgainTab: Int
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        Text("Verse In Context")
          .font(.largeTitle)
          .foregroundColor(.black)
          .accessibilityLabel("context")
          .offset(CGSize(width: 0, height: 40))
        Text(scriptures.pickBook.label)
          .font(.largeTitle)
          .foregroundColor(.black)
          .accessibilityLabel("verseInContext")
          .offset(CGSize(width: 0, height: 40))
        ContextScrollView()
        MoveButton(buttonText: "Verse in Chapter", colorBackground: "blue") {
          selectedTab = 2
        }
        .accessibilityLabel("chapter")
        .padding(.top)
        MoveButton(buttonText: "Read Verse", colorBackground: "purple") {
          selectedTab = 1
        }
        .accessibilityLabel("verse")
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
  
struct ContextView_Previews: PreviewProvider {
  static var previews: some View {
    ContextView(selectedTab: .constant(4), returnTab: .constant(5), chooseAgainTab: .constant(5))
      .environmentObject(Scriptures())
      .environmentObject(ScreenSettings())
    ContextView(selectedTab: .constant(4), returnTab: .constant(5), chooseAgainTab: .constant(5))
      .environmentObject(Scriptures())
      .environmentObject(ScreenSettings())
      .previewDevice("iPhone 11")
  }
}
