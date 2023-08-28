//
//  ContextView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/29/22.
//

import SwiftUI

struct ContextView: View {
  @EnvironmentObject var scriptures: Scriptures
  @Binding var selectedTab: Int
  @Binding var returnTab: Int
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        Text("Verse In Context")
          .font(.largeTitle)
          .foregroundColor(.black)
          .accessibilityLabel("context")
        Text(scriptures.pickBook.label)
          .font(.largeTitle)
          .foregroundColor(.black)
          .accessibilityLabel("verseInContext")
        ContextScrollView()
        MoveButton(buttonText: "Chapter", colorBackground: "blue") {
          selectedTab = 2
        }
        .accessibilityLabel("chapter")
        .padding(.top)
        MoveButton(buttonText: "Verse", colorBackground: "purple") {
          selectedTab = 1
        }
        .accessibilityLabel("verse")
        .padding(.top)
        MoveButton(buttonText: "Home", colorBackground: "red") {
          selectedTab = 3
        }
        .accessibilityLabel("home")
        .padding(.top)
      }
      .offset(x: 0, y: -30)
    }
  }
}
  
struct ContextView_Previews: PreviewProvider {
  static var previews: some View {
    ContextView(selectedTab: .constant(4), returnTab: .constant(5))
      .environmentObject(Scriptures())
  }
}
