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
  @EnvironmentObject var scriptures: Scriptures
  
  
  //var work: String
  var body: some View {
    
    ZStack {
      BackgroundView()
      VStack {
        Text(scriptures.pickBook.label)
          .font(.largeTitle)
        Text(scriptures.pickBook.verse)
          .padding([.leading, .trailing])
        MoveButton(buttonText: "Chapter", colorBackground: "blue") {
          selectedTab = 2
        }
        .padding(.top)
        MoveButton(buttonText: "Context", colorBackground: "purple") {
          selectedTab = 4
        }
        .padding(.top)
        MoveButton(buttonText: "Home", colorBackground: "red") {
          selectedTab = 3
        }
        .padding(.top)
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
    VerseView(selectedTab: .constant(1), returnTab: .constant(2))
      .environmentObject(Scriptures())
  }
}
