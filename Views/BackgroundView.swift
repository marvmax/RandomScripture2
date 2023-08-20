//
//  'BackgroundVies.swift
//  RandomScriptures
//
//  Created by Max Evans on 2/5/22.
//

import SwiftUI

struct BackgroundView: View {
  var body: some View {
    ZStack {
      Group {
        VStack {
          GeometryReader { geometry in
            Rectangle()
              .frame(width: geometry.size.width, height: geometry.size.height / 2 + 100)
              .ignoresSafeArea(.all)
              .foregroundColor(Color("dark-blue"))
            Rectangle()
              .frame(width: geometry.size.width, height: geometry.size.height / 2 + 100)
              .ignoresSafeArea(.all)
              .foregroundColor(Color("light-blue"))
              .offset(x: 0, y: geometry.size.height/2)
          }
        }
      }
      Image("cropped-christus-blue-background")
        .resizable()
      .imageScale(.medium)
        .aspectRatio(contentMode: .fit)
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView()
  }
}
