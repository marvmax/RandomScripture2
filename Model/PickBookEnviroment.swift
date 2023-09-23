//
//  PickBookEnviroment.swift
//  RandomScriptures
//
//  Created by Max Evans on 6/29/22.
//

import Foundation
import SwiftUI
import Combine

class Scriptures: ObservableObject {
  @Published var pickBook = PickBook(work: "Standard Works")
  init(){
  }
}

class ScreenSettings: ObservableObject {
  @Published var opacity = 0.8
  @Published var screenPercentages = (width: 0.9, height: 0.9)
  init(){}
}

enum PickBookError: Error {
  case jsonError
  case decoderError
  case versesError
  case verseStringError
  case noArrayError
}

struct ColoredLetter: Hashable {
  var verse: String
  var changeColor: Bool
}

struct Verse: Codable, Hashable  {
  let reference: String
  let text: String
  let verse: Int
}

