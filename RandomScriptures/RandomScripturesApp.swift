//
//  RandomScripturesApp.swift
//  RandomScriptures
//
//  Created by Max Evans on 1/25/22.
//

import SwiftUI

@main
struct RandomScripturesApp: App {
  let scriptures = Scriptures()
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(scriptures)
    }
  }
}
