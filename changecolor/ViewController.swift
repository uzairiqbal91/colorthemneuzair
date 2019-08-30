//
//  ViewController.swift
//  changecolor
//
//  Created by Basit on 8/30/19.
//  Copyright © 2019 Uzair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = ColorView(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)
        // Do any additional setup after loading the view.
    }


}

