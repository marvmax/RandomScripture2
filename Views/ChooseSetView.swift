//
//  ChooseSetView.swift
//  RandomScriptures
//
//  Created by Max Evans on 8/2/22.
//

import SwiftUI

struct ChooseSetView: View {
  @Binding var selectedTab: Int
  @Binding var chooseAgainTab: Int
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
        Spacer()
        Text("Choose to use Standard\nChristian Scriptures\nor Christian Restoration\nScriptures")
          .font(.title)
          .multilineTextAlignment(.center)
          .offset(x: 0, y: -50)
        MoveButton(buttonText: "Bible", colorBackground: "yellow") {
          selectedTab = 5
          chooseAgainTab = 5
        }
        .accessibilityIdentifier("bible")
        .offset(x: 0, y: -50
        )
        MoveButton(buttonText: "Standard Works", colorBackground: "red") {
          selectedTab = 0
          chooseAgainTab = 0
        }
        .padding(.top)
        .accessibilityIdentifier("standardWorks")
        .offset(x: 0, y: -50
        )
        Spacer()
      }
      .offset(x: 0, y: -60)
    }
  }
}


struct ChooseSetView_Previews: PreviewProvider {
    static var previews: some View {
      ChooseSetView(selectedTab: .constant(3), chooseAgainTab: .constant(0))
        .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
    }
}
