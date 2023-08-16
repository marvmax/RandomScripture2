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
        Text("Context View")
          .font(.largeTitle)
          .foregroundColor(.black)
        Text(scriptures.pickBook.label)
          .font(.largeTitle)
          .foregroundColor(.black)
        ContextScrollView()
        MoveButton(buttonText: "Chapter", colorBackground: "blue") {
          selectedTab = 2
        }
        .padding(.top)
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
  
  struct ContextView_Previews: PreviewProvider {
    static var previews: some View {
      ContextView(selectedTab: .constant(4), returnTab: .constant(5))
        .environmentObject(Scriptures())
    }
  }
