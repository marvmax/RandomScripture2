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

class Opacity: ObservableObject {
  @Published var opacity = 0.7
}

enum PickBookError: Error {
  case jsonError
  case decoderError
  case versesError
  case verseStringError
  case noArrayError
}

