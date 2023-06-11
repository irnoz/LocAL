//
//  UIImage+Resize.swift..swift
//  LocAL
//
//  Created by Irakli Nozadze on 11.06.23.
//

import UIKit
extension UIImage {
  func resized(withBounds bounds: CGSize) -> UIImage {
    let horizontalRatio = bounds.width / size.width
    let verticalRatio = bounds.height / size.height
    let ratio = max(horizontalRatio, verticalRatio)
    let newSize = CGSize(
      width: size.width * ratio,
      height: size.height * ratio)
    UIGraphicsBeginImageContextWithOptions(newSize, true, 0)
    draw(in: CGRect(origin: CGPoint.zero, size: newSize))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage!
  }
}
