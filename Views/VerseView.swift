//
//  VerseView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/28/22.
//

import SwiftUI
import Combine

struct VerseView: View {
  @Binding var selectedTab: Int
  @Binding var returnTab: Int
  @Binding var chooseAgainTab: Int
  @EnvironmentObject var scriptures: Scriptures
  @EnvironmentObject var opacity: Opacity
  
  //var work: String
  var body: some View {
    
    ZStack {
      BackgroundView()
      VStack {
        Text(scriptures.pickBook.label)
          .font(.largeTitle)
          .accessibilityLabel("verseLable")
        Text(scriptures.pickBook.verse)
          .background(Color.white.opacity(opacity.opacity))
          .padding([.leading, .trailing])
          .accessibilityLabel("verse")
        MoveButton(buttonText: "Verse in Chapter", colorBackground: "blue") {
          selectedTab = 2
        }
        .accessibilityLabel("chapter")
        .padding(.top)
        MoveButton(buttonText: "Verse in Context", colorBackground: "purple") {
          selectedTab = 4
        }
        .accessibilityLabel("context")
        .padding(.top)
        MoveButton(buttonText: "Choose Again", colorBackground: "yellow") {
          selectedTab = chooseAgainTab
        }
        .accessibilityLabel("chooseAgain")
        .padding()
        MoveButton(buttonText: "Home", colorBackground: "red") {
          selectedTab = 3
        }
        .accessibilityLabel("home")
        //.padding(.top)
      }
      .offset(x: 0, y: -50)
    }
    .alert(isPresented: $scriptures.pickBook.dataIsNotGood) { () -> Alert in
      let button = Alert.Button.default(Text("OK")) {
        selectedTab = returnTab
      }
      return Alert(title: Text("Warning"), message: Text("Something went wrong. Please try again."), dismissButton: button)
    }
  }
}


struct VerseView_Previews: PreviewProvider {
  static var previews: some View {
    VerseView(selectedTab: .constant(1), returnTab: .constant(2), chooseAgainTab: .constant(5))
      .environmentObject(Scriptures())
      .environmentObject(Opacity())
  }
}
