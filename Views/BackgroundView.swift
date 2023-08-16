//
//  'BackgroundVies.swift
//  RandomScriptures
//
//  Created by Max Evans on 2/5/22.
//

import SwiftUI

struct BackgroundView: View {
  var manip = ScreenManipulation()
  var body: some View {
    ZStack {
      Group {
        VStack {
          Rectangle()
            .frame(width: .infinity, height: .infinity)
            .ignoresSafeArea(.all)
            .foregroundColor(Color("dark-blue"))
          Rectangle()
            .frame(width: .infinity, height: .infinity)
            .ignoresSafeArea(.all)
            .foregroundColor(Color("light-blue"))
        }
      }
      Image("cropped-christus-blue-background")
        .resizable()
      //.imageScale(.medium)
        .aspectRatio(contentMode: .fit)
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView()
  }
}
