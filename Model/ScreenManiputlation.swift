//
//  ScreenManiputlation.swift
//  RandomScriptures
//
//  Created by Max Evans on 7/23/22.
//

import Foundation
import SwiftUI

enum Screens {
  
}

struct ScreenManipulation {
  var screenMainPercentage = 0.7
  func getFrameWidth() -> CGFloat {
    var frameWidth = UIScreen.main.nativeBounds.width
    let name = UIDevice.current.name
    var screenPercentage: Double
    if name == "iPhone 11" || name == "iPhone 8" {
      screenPercentage = 0.55
    } else {
      screenPercentage = 0.7
    }
    frameWidth = frameWidth - (frameWidth * screenPercentage)//7
    let version = UIDevice.current.systemVersion
    let modelName = UIDevice.current.model
    print("name: \(name)")
    print("version: \(version)")
    print("modelName: \(modelName)")
    print("Frame width: \(UIScreen.main.nativeBounds.width)")
    return frameWidth
    }
  
  func getFrameHeight() -> CGFloat {
    var frameHeight = UIScreen.main.nativeBounds.height
    let name = UIDevice.current.name
    var screenPercentage: Double
    if name == "iPhone 11" || name == "iPhone 8" {
      screenPercentage = 0.75
    } else {
      screenPercentage = 0.85
    }
    frameHeight = frameHeight - (frameHeight * screenPercentage)//85
    print("Frame height: \(UIScreen.main.nativeBounds.height)")
    return frameHeight
  }
  
  func getRectangelSide() -> CGFloat {
    UIScreen.main.nativeBounds.width / 2
  }
}
