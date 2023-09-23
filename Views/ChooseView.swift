//
//  ChooseView.swift
//  RandomScriptures
//
//  Created by Max Evans on 6/29/22.
//

import SwiftUI
import Combine

struct ChooseView: View {
  @Binding var selectedTab: Int
  @Binding var returnTab: Int
  @EnvironmentObject var scriptures: Scriptures
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        Text("Choose a book to generate\na verse from.")
          .font(.title)
          .multilineTextAlignment(.center
          )
        MoveButton(buttonText: "Standard Works", colorBackground: "pink") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Standard Works")
        }
        .accessibilityLabel("standardWorks")
        
        MoveButton(buttonText: "Bible", colorBackground: "yellow") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Bible")
        }
        .padding(.top)
        
        MoveButton(buttonText: "Triple Combination", colorBackground: "red") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Triple Combination")
        }
        .accessibilityLabel("tripleCombination")
        .padding(.top)
        
        MoveButton(buttonText: "Old Testament", colorBackground: "blue") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Old Testament")
        }
        .padding(.top)
        
        MoveButton(buttonText: "New Testament", colorBackground: "purple") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "New Testament")
        }
        .padding(.top)
        
        MoveButton(buttonText: "Book of Mormon", colorBackground: "green") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Book of Mormon")
        }
        .accessibilityLabel("bookOfMormon")
        .padding(.top)
        
        MoveButton(buttonText: "Doctrine and Covenants", colorBackground: "blue") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Doctrine and Covenants")
        }
        .accessibilityLabel("doctrineAndCovenants")
        .padding(.top)
        
        MoveButton(buttonText: "Pearl of Great Price", colorBackground: "pink") {
          selectedTab = 1
          returnTab = 0
          scriptures.pickBook = PickBook(work: "Pearl of Great Price")
        }
        .accessibilityLabel("pearlOfGreatPrice")
        .padding()
        MoveButton(buttonText: "Home", colorBackground: "green") {
          selectedTab = 3
        }
      }
      .offset(x: 0, y: -20)
    }
  }
}

struct ChooseView_Previews: PreviewProvider {
  static var previews: some View {
    ChooseView(selectedTab: .constant(0), returnTab: .constant(1))
  }
}
