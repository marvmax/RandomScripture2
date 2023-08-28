//
//  SplashView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/22/22.
//

import SwiftUI

struct LaunchView: View {
  var body: some View {
    ZStack {
      BackgroundView()
      VStack {
      Text("Random")
      Text("Scriptures")
      }
      .font(.custom("System", size: 70))
    }
  }
}

struct LaunchView_Previews: PreviewProvider {
  static var previews: some View {
    LaunchView()
  }
}
