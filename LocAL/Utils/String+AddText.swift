//
//  String+AddText.swift
//  LocAL
//
//  Created by Irakli Nozadze on 12.06.23.
//

import Foundation

extension String {
  mutating func add(
    text: String?,
    separatedBy separator: String = ""
  ) {
      if let text = text {
        if !isEmpty {
          self += separator
        }
        self += text
      }
    }
}
