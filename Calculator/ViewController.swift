//
//  ViewController.swift
//  Calculator
//
//  Created by Krasa on 01/12/2018.
//  Copyright © 2018 Ronte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerHeightLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerWidthLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func buttonTappedAction(_ sender: UIButton) {
        print(sender.tag)
        // on branch bug-1
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        containerWidthLayoutConstraint.constant =
//        let buttonWidth = Int(view.frame.width - 14) / 4
//        let containerWidth = CGFloat(buttonWidth * 4)
//        let paddings = (view.frame.width - containerWidth - 14) / 2
//        view.layoutIfNeeded()
        roundButtons()
    }
    
    private func roundButtons() {
        var baseCornerRadius: CGFloat?
        
        for i in 1...19 {
            guard let button = view.viewWithTag(i) as? UIButton else {
                continue
            }
            
            if baseCornerRadius == nil {
                baseCornerRadius = button.frame.width / 2
            }
            
            button.layer.cornerRadius = baseCornerRadius!
        }
    }
}
