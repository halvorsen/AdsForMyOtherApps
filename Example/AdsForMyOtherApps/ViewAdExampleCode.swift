//
//  GameOverView.swift
//
//  Created by Aaron Halvorsen on 6/26/17.
//  Copyright © 2017 Aaron Halvorsen. All rights reserved.
//

import UIKit
import AdsForMyOtherApps

class ViewAdExampleCode: UIView, BrothersUIAutoLayout {
    
    var (replay,menu,gameCenter,noAds,extraLife) = (ReplayButton(), MenuButton(), GameCenterButton(), SubscribeToPremiumButton(), OneMoreLife())
    var (bestScoreLabel, thisScoreLabel) = (UILabel(),UILabel())
    var viewC = UIViewController()
    
    
    init() {super.init(frame: .zero)}
    
    init(backgroundColor: UIColor, buttonsColor: UIColor, target viewcontroller: UIViewController) {
        super.init(frame: .zero)
        
        self.frame = CGRect(x: 0, y: 0, width: 375*sw, height: 667*sh)
        self.frame.origin.x = 375*sw
        self.backgroundColor = backgroundColor
        
        viewC = viewcontroller
        replay = ReplayButton(color: buttonsColor, origin: CGPoint(x: 42*sw, y: 158*sh))
        gameCenter = GameCenterButton(color: buttonsColor, origin: CGPoint(x: 42*sw, y: 211*sh))
        noAds = SubscribeToPremiumButton(color: buttonsColor, origin: CGPoint(x: 42*sw, y: 264*sh))
        extraLife = OneMoreLife(color: buttonsColor, origin: CGPoint(x: 42*sw, y: 317*sh))
        extraLife.addTarget(self, action: #selector(ViewAdExampleCode.showAdvertisement), for: .touchUpInside)
        
        self.addSubview(replay)
        self.addSubview(gameCenter)
        self.addSubview(noAds)
        self.addSubview(extraLife)
        
        bestScoreLabel.frame = CGRect(x: 43*sw, y: 106*sh, width: 200*sw, height: 31*sh)
        bestScoreLabel.text = "BEST 100"
        bestScoreLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 24*sw)
        bestScoreLabel.textColor = buttonsColor
        bestScoreLabel.addTextSpacing(spacing: 1.85*sw)
        self.addSubview(bestScoreLabel)
        
        thisScoreLabel.frame = CGRect(x: 43*sw, y: 29*sh, width: 200*sw, height: 84*sh)
        thisScoreLabel.text = "23"
        thisScoreLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 68*sw)
        thisScoreLabel.textColor = buttonsColor // or .white with black background
        thisScoreLabel.addTextSpacing(spacing: 5.23*sw)
        self.addSubview(thisScoreLabel)
        
        UIView.animate(withDuration: 0.4) {
            self.frame.origin.x = 0
        }
        
        delay(0.7) {
            self.extraLife.setTitle("ONE MORE LIFE  4", for: .normal)
            self.delay(0.7) {
                self.extraLife.setTitle("ONE MORE LIFE  3", for: .normal)
                self.delay(0.7) {
                    self.extraLife.setTitle("ONE MORE LIFE  2", for: .normal)
                    self.delay(0.7) {
                        self.extraLife.setTitle("ONE MORE LIFE  1", for: .normal)
                        self.delay(0.7) {
                            self.extraLife.removeFromSuperview()
                            
                        }
                    }
                }
            }
        }
    }
    
    @objc private func showAdvertisement() {
        
        let _ = Advertisement(images: [#imageLiteral(resourceName: "RansomAd"),#imageLiteral(resourceName: "RansomAd2"),#imageLiteral(resourceName: "RansomAd3")], seconds: 10, url: "itms-apps://itunes.apple.com/app/id1192831637", target: viewC)
        
    }
    
    func delay(_ seconds:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + seconds
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
