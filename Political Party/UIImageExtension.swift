//
//  UIImageExtension.swift
//  Political Party
//
//  Created by Patrick Bruce on 3/15/18.
//  Copyright © 2018 Patrick Bruce. All rights reserved.
//

import UIKit

extension UIImage
{
    class func scaleImageToSize(img: UIImage, size: CGSize) -> UIImage
    {
        UIGraphicsBeginImageContext(size)
        
        img.draw(in: CGRect(origin: CGPoint.zero, size: size))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return scaledImage!
        
    }
}
