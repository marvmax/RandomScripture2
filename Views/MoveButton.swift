//
//  MoveButton.swift
//  RandomScriptures
//
//  Created by Max Evans on 6/28/22.
//

import SwiftUI

struct MoveButton: View {
  let buttonText: String
  let colorBackground: String
  let action: () -> Void
  var body: some View {
    Button(action: {
      action()
    }, label: { Text(buttonText)
      .moveButtonTextStyle() }
    )
    .buttonStyle(MoveButtonStyle(foreColor: colorBackground))
    }
  }

extension Text {
  func moveButtonTextStyle() -> some View {
    self
      .font(.body)
      .fontWeight(.bold)
  }
}

struct MoveButtonStyle: ButtonStyle {
  let foreColor: String
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(maxWidth: 225, maxHeight: 25)
      .foregroundColor(Color.black)
      .background(
        Capsule()
          .foregroundColor(Color("\(foreColor)-background"))
          .shadow(color: Color("\(foreColor)-shadow"), radius: 2, x: 5, y: 6)
          //.shadow(color: Color("\(foreColor)-highlight"), radius: 4, x: -6, y: -6)
      )
  }
}

struct MoveButton_Previews: PreviewProvider {
  static var previews: some View {
    MoveButton(buttonText: "Pearl of Great Price", colorBackground: "blue", action: {print("whats up")})
      //.previewLayout(.sizeThatFits)
  }
}
