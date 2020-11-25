//
//  UIImage+Extensions.swift
//  secretingrediants
//
//  Created by Sreekanth PS on 19/11/20.
//

import Foundation
import SwiftUI

extension UIImage {
    var topHalf: UIImage? {
        guard let image = cgImage?
            .cropping(to: CGRect(origin: .zero,
                    size: CGSize(width: size.width,
                                 height: size.height / 2 )))
        else { return nil }
        return UIImage(cgImage: image, scale: 1, orientation: imageOrientation)
    }
    var bottomHalf: UIImage? {
        guard let image = cgImage?
            .cropping(to: CGRect(origin: CGPoint(x: 0,
                                                 y: size.height - (size.height/2).rounded()),
                                 size: CGSize(width: size.width,
                                              height: size.height -
                                                      (size.height/2).rounded())))
        else { return nil }
        return UIImage(cgImage: image)
    }
    var leftHalf: UIImage? {
        guard let image = cgImage?
            .cropping(to: CGRect(origin: .zero,
                                 size: CGSize(width: size.width/2,
                                              height: size.height)))
        else { return nil }
        return UIImage(cgImage: image)
    }
    var rightHalf: UIImage? {
        guard let image = cgImage?
            .cropping(to: CGRect(origin: CGPoint(x: size.width - (size.width/2).rounded(), y: 0),
                                 size: CGSize(width: size.width - (size.width/2).rounded(),
                                              height: size.height)))
        else { return nil }
        return UIImage(cgImage: image)
    }
}
