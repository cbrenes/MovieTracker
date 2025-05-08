//
//  Secrets.swift
//  MovieTracker
//
//  Created by Cesar Brenes on 8/5/25.
//

import Foundation

enum Secrets {
  static var tmdbApiKey: String {
    guard let path = Bundle.main.path(forResource: "Secrets", ofType: "plist"),
          let dictionary = NSDictionary(contentsOfFile: path),
          let key = dictionary["TMDBApiKey"] as? String else {
      fatalError("TMDBApiKey not found in Secrets.plist this is ignored in git, you should ask for this file")
    }
    return key
  }
}
