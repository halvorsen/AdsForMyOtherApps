//
//  ViewController.swift
//  AdsForMyOtherApps
//
//  Created by halvorsen on 07/25/2017.
//  Copyright (c) 2017 halvorsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = ViewAdExampleCode(backgroundColor: .white, buttonsColor: CustomColor.shared.color1, target: self)
        view.addSubview(myView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

