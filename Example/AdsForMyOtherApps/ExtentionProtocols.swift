//
//  Extention.swift
//  AdsForMyOtherApps
//
//  Created by Aaron Halvorsen on 7/26/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

extension UILabel {
    func addTextSpacing(spacing: CGFloat) {
        if let textString = text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSKernAttributeName, value: spacing, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}

extension UIButton{
    func addTextSpacing(spacing: CGFloat){
        let attributedString = NSMutableAttributedString(string: (self.titleLabel?.text!)!)
        attributedString.addAttribute(NSKernAttributeName, value: spacing, range: NSRange(location: 0, length: (self.titleLabel?.text!.characters.count)!))
        self.setAttributedTitle(attributedString, for: .normal)
    }
}

protocol BrothersUIAutoLayout {
    
    var sw: CGFloat {get}
    var sh: CGFloat {get}
    var fontSizeMultiplier: CGFloat {get}
    
}

extension BrothersUIAutoLayout {
    
    var sw: CGFloat {get{return UIScreen.main.bounds.width/375}}
    var sh: CGFloat {get{return UIScreen.main.bounds.height/667}}
    var fontSizeMultiplier: CGFloat {get{return UIScreen.main.bounds.width / 375}}
    
}
