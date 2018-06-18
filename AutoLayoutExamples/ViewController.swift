//
//  ViewController.swift
//  AutoLayoutExamples
//
//  Created by andru on 6/18/18.
//  Copyright © 2018 El Comercio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerWithFrame()
    }


    func centerWithFrame() {
        let btnWidth = myBtn.frame.width + 50
        if let superview = myBtn.superview {
            let x = (superview.frame.width / 2) - (btnWidth / 2)
            let y = (superview.frame.height / 2) - (myBtn.frame.height / 2)
            let position = CGRect(x: x, y: y, width: btnWidth, height: myBtn.frame.height)
            myBtn.frame = position
            myBtn.setTitle("x:\(x), y:\(y)", for: .normal)
        }
    }

    func centerWithConstraints() {
        //
    }
}
