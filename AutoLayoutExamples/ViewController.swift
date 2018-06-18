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
        //centerWithFrame()
        centerWithConstraints()
    }


    func centerWithFrame() {
        let btnWidth = myBtn.frame.width + 200
        if let superview = myBtn.superview {
            let x = (superview.frame.width / 2) - (btnWidth / 2)
            let y = (superview.frame.height / 2) - (myBtn.frame.height / 2)
            let position = CGRect(x: x, y: y, width: btnWidth, height: myBtn.frame.height)
            myBtn.frame = position
            //myBtn.setTitle("x:\(x), y:\(y)", for: .normal)
        }
    }

    func centerWithConstraints() {
        let btnWidth = myBtn.frame.width + 200
        myBtn.translatesAutoresizingMaskIntoConstraints = false
        if let superview = myBtn.superview {
            myBtn.widthAnchor.constraint(equalToConstant: btnWidth).isActive = true
            myBtn.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
            myBtn.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
            //myBtn.setTitle("x: \(myBtn.frame.origin.x), y:\(myBtn.frame.origin.y)", for: .normal)
        }
    }
}

