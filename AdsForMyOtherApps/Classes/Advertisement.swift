//
//  Advertisement.swift
//  Pods
//
//  Created by Aaron Halvorsen on 7/25/17.
//
//

import UIKit

public class Advertisement: UIView {
    
    var countLabel = UILabel()
    var yOrigin = CGFloat()
    var escape = x()
    let sw = UIScreen.main.bounds.width/375
    let sh = UIScreen.main.bounds.width/667
    var imageAmount = Int()
    var timerCount = Int()
    var count = 1
    var myURL = String()
    var myImageView = UIImageView()
    var myImages = [UIImage]()
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    private func touchDown(atPoint pos : CGPoint) {
        if countLabel.text! == "" && pos.x > 250*sw && pos.y < 150*sh {
            UIView.animate(withDuration: 0.4) {
                self.frame.origin.x = 375*self.sw
            }
            delay(0.6) {
                self.removeFromSuperview()
            }
            escape.removeFromSuperview()
        } else {
            
            url(string: myURL)
            escape.removeFromSuperview()
            countLabel.removeFromSuperview()
            delay(0.6) {
                self.removeFromSuperview()
            }
        }

        countLabel.text = String(timerCount)
    }
    
    private func url(string: String) {
        if let url = URL(string: string), UIApplication.shared.canOpenURL(url) {
            
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        } else {
            print("url is nil")
        }
    }
    
    public init(images: [UIImage], seconds: Int?, url: String, target: UIViewController) {
        super.init(frame: .zero)
        myImages = images
        myURL = url
        imageAmount = images.count
        yOrigin = (667*sh - 667*sw)/2
        
        self.frame = CGRect(x: 0, y: 0, width: 375*sw, height: 667*sh)
        self.frame.origin.x = 375*sw
        self.backgroundColor = UIColor(colorLiteralRed: 121/255, green: 121/255, blue: 121/255, alpha: 1.0)
        
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 375*sw, height: 667*sw))
        myImageView.image = images[0]
        self.addSubview(myImageView)
        
        let myBez = UIBezierPath(arcCenter: CGPoint(x: 332*sw,y: 74*sh), radius: 19*sw, startAngle: 0, endAngle: .pi*2, clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = myBez.cgPath
        shapeLayer.fillColor = UIColor.white.cgColor
        self.layer.addSublayer(shapeLayer)
        
        countLabel = UILabel(frame: CGRect(x: 313*sw, y: 40*sh, width: 38*sw, height: 38*sw))
        countLabel.text = String(timerCount)
        countLabel.textAlignment = .center
        countLabel.font = UIFont(name: "HelveticaNeue", size: 14*sw)
        self.addSubview(countLabel)
        
        if let time = seconds {
            for i in 1..<imageAmount {
                Timer.scheduledTimer(timeInterval: Double(time*i/imageAmount), target: self,selector: #selector(Advertisement.changeImage), userInfo: nil, repeats: false)
            }
        } else {
            countLabel.text = ""
            self.addSubview(escape)
        }
        
        if let time = seconds {
            for i in 0...time {
                delay(1.0*Double(i)) {
                    if i == time {
                        self.countLabel.text = ""
                        self.countLabel.removeFromSuperview()
                        self.addSubview(self.escape)
                    } else {
                        self.countLabel.text = String(time - i)
                    }
                }
            }
        } else {
            countLabel.text = ""
            self.addSubview(escape)
        }
        
        target.view.addSubview(self)
        
        UIView.animate(withDuration: 0.4) {
            self.frame.origin.x = 0
        }
        
    }
    
    @objc private func changeImage() {
        
        myImageView.image = myImages[count]
        count += 1
    }
    
    
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func delay(_ seconds:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + seconds
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
    
}



