//
//  Functions.swift
//  LocAL
//
//  Created by Irakli Nozadze on 09.06.23.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
  DispatchQueue.main.asyncAfter(
    deadline: .now() + seconds,
    execute: run)
}
