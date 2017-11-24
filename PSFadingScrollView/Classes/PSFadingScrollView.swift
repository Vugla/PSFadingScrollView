//
//  PSFadingScrollView.swift
//  PSFadingScrollView
//
//  Created by Predrag Samardzic on 12/24/15.
//  Copyright © 2015 Predrag Samardzic. All rights reserved.
//

import UIKit

class PSFadingScrollView: UIScrollView {
    
    @IBInspectable var gradientWidth: CGFloat = 100
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .clear
        let maskLayer = CAGradientLayer()
        maskLayer.anchorPoint = CGPoint.zero
        maskLayer.startPoint = CGPoint(x: 0, y: 0)
        maskLayer.endPoint = CGPoint(x: 1, y: 0)
        let outerColor = UIColor(white: 1.0, alpha: 0.0)
        let innerColor = UIColor(white: 1.0, alpha: 1.0)
        maskLayer.colors = [outerColor.cgColor, innerColor.cgColor, innerColor.cgColor, outerColor.cgColor]
        let firstValue = Double(gradientWidth/frame.size.width)
        let secondValue = Double((frame.size.width - gradientWidth)/frame.size.width)
        maskLayer.locations = [0, NSNumber(value: firstValue), NSNumber(value: secondValue), 1]
        maskLayer.frame = bounds
        layer.masksToBounds = true
        layer.mask = maskLayer
    }
    
}
