//
//  SplashView.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/22/22.
//

import SwiftUI

struct SplashView: View {
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

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}
