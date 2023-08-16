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

enum PickBookError: Error {
  case jsonError
  case decoderError
  case versesError
  case verseStringError
  case noArrayError
}

