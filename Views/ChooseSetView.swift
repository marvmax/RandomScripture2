//
//  ChooseSetView.swift
//  RandomScriptures
//
//  Created by Max Evans on 8/2/22.
//

import SwiftUI

struct ChooseSetView: View {
  @Binding var selectedTab: Int
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        Spacer()
        Text("Choose a set of Scriptures\n to select a random verse.")
          .font(.title)
          .multilineTextAlignment(.center)
        MoveButton(buttonText: "Bible", colorBackground: "yellow") {
          selectedTab = 5
        }
        .accessibilityIdentifier("bible")
        MoveButton(buttonText: "Standard Works", colorBackground: "red") {
          selectedTab = 0
        }
        .padding(.top)
        .accessibilityIdentifier("standardWorks")
        Spacer()
      }
      .offset(x: 0, y: -60)
    }
  }
}


struct ChooseSetView_Previews: PreviewProvider {
    static var previews: some View {
      ChooseSetView(selectedTab: .constant(3))
    }
}
