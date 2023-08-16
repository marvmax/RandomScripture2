//
//  BibleView.swift
//  RandomScriptures
//
//  Created by Max Evans on 8/2/22.
//

import SwiftUI

struct BibleView: View {
  @Binding var selectedTab: Int
  @Binding var returnTab: Int
  @EnvironmentObject var scriptures: Scriptures
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        MoveButton(buttonText: "Bible", colorBackground: "red") {
          selectedTab = 1
          returnTab = 5
          scriptures.pickBook = PickBook(work: "Bible")
        }
        MoveButton(buttonText: "Old Testament", colorBackground: "blue") {
          selectedTab = 1
          returnTab = 5
          scriptures.pickBook = PickBook(work: "Old Testament")
        }
          .padding()
        MoveButton(buttonText: "New Testament", colorBackground: "green"){
          selectedTab = 1
          returnTab = 5
          scriptures.pickBook = PickBook(work: "New Testament")
        }
        .padding()
        MoveButton(buttonText: "Home", colorBackground: "green") {
          selectedTab = 3
        }
      }
      .offset(x: 0, y: -35)
    }
  }
}

struct BibleView_Previews: PreviewProvider {
  static var previews: some View {
    BibleView(selectedTab: .constant(2), returnTab: .constant(2))
  }
}
