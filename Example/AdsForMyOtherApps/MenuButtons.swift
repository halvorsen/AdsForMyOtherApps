//
//  PurchaseButton.swift
//
//  Created by Aaron Halvorsen on 6/26/17.
//  Copyright © 2017 Aaron Halvorsen. All rights reserved.
//

import UIKit


class SubscribeToPremiumButton: UIButton, BrothersUIAutoLayout {
 
    init() {super.init(frame: .zero)}
    init(color: UIColor, origin: CGPoint) {
        super.init(frame: .zero)
        self.setTitle("REMOVE ADS", for: .normal)
        
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 19*fontSizeMultiplier)
        self.backgroundColor = color
        self.frame.size = CGSize(width: 176*sw, height: 42*sh)
        self.frame.origin = origin
        self.addTextSpacing(spacing: 1.46*fontSizeMultiplier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PlayButton: UIButton, BrothersUIAutoLayout {
  
    init() {super.init(frame: .zero)}
    init(color: UIColor, origin: CGPoint) {
        super.init(frame: .zero)
        self.setTitle("PLAY", for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 19*fontSizeMultiplier)
        self.backgroundColor = color
        self.frame.size = CGSize(width: 72*sw, height: 42*sh)
        self.frame.origin = origin
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ReplayButton: UIButton, BrothersUIAutoLayout {
    
    init() {super.init(frame: .zero)}
    init(color: UIColor, origin: CGPoint) {
        super.init(frame: .zero)
        self.setTitle("PLAY PLINKER", for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 19*fontSizeMultiplier)
        self.backgroundColor = color
        self.frame.size = CGSize(width: 194*sw, height: 42*sh)
        self.frame.origin = origin
        self.addTextSpacing(spacing: 1.46*fontSizeMultiplier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class GameCenterButton: UIButton, BrothersUIAutoLayout {
    
    init() {super.init(frame: .zero)}
    init(color: UIColor, origin: CGPoint) {
        super.init(frame: .zero)
        self.setTitle("GAME CENTER", for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 19*fontSizeMultiplier)
        self.backgroundColor = color
        self.frame.size = CGSize(width: 194*sw, height: 42*sh)
        self.frame.origin = origin
        self.addTextSpacing(spacing: 1.46*fontSizeMultiplier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class MenuButton: UIButton, BrothersUIAutoLayout {
    
    init() {super.init(frame: .zero)}
    init(color: UIColor, origin: CGPoint) {
        super.init(frame: .zero)
        self.setTitle("MENU", for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 19*fontSizeMultiplier)
        self.backgroundColor = color
        self.frame.size = CGSize(width: 77*sw, height: 42*sh)
        self.frame.origin = origin
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class OneMoreLife: UIButton, BrothersUIAutoLayout {
    
    init() {super.init(frame: .zero)}
    init(color: UIColor, origin: CGPoint) {
        super.init(frame: .zero)
        self.setTitle("ONE MORE LIFE  5", for: .normal)
        self.setTitleColor(color, for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 18*fontSizeMultiplier)
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 2
        self.backgroundColor = .clear
        self.frame.size = CGSize(width: 185*sw, height: 42*sh)
        self.frame.origin = origin
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

