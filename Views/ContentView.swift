//
//  ContentView.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

struct ContentView: View {
  @State private var selectedTab = 3
  @State private var returnTab = 0
  @State private var chooseAgainTab = 0
  
  var body: some View {
    //BackgroundView()
    TabView(selection: $selectedTab) {
      ChooseView(selectedTab: $selectedTab, returnTab: $returnTab)
        .tag(0)
      VerseView(selectedTab: $selectedTab, returnTab: $returnTab, chooseAgainTab: $chooseAgainTab)
        .tag(1)
      ContextView(selectedTab: $selectedTab, returnTab: $returnTab, chooseAgainTab: $chooseAgainTab)
        .tag(4)
      ChooseSetView(selectedTab: $selectedTab, chooseAgainTab: $chooseAgainTab)
        .tag(3)
      BibleView(selectedTab: $selectedTab, returnTab: $returnTab)
        .tag(5)
      ChapterView(selectedTab: $selectedTab, returnTab: $returnTab, chooseAgainTab: $chooseAgainTab)
        .tag(2)
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Scriptures())
      .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
  }
}
