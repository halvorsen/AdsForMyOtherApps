//
//  x.swift
//  Pods
//
//  Created by Aaron Halvorsen on 7/26/17.
//
//

import UIKit

class x: UIView {
    
    override init(frame: CGRect = CGRect.zero) {super.init(frame: frame)
        self.frame = CGRect(x: 313*UIScreen.main.bounds.width/375, y: 23*UIScreen.main.bounds.height/667, width: 38*UIScreen.main.bounds.width/375, height: 38*UIScreen.main.bounds.width/375)
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let aPath = UIBezierPath()
        aPath.move(to: CGPoint(x:12, y:12))
        aPath.addLine(to: CGPoint(x:26, y:26))
        UIColor.black.set()
        aPath.stroke()
        
        let bPath = UIBezierPath()
        bPath.move(to: CGPoint(x:12, y:26))
        bPath.addLine(to: CGPoint(x:26, y:12))
        UIColor.black.set()
        bPath.stroke()
        
    }
    
    
}
