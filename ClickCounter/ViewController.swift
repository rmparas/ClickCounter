//
//  ViewController.swift
//  ClickCounter
//
//  Created by Rod Paras on 4/2/15.
//  Copyright (c) 2015 Rodacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var count = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.label = label
        
        self.view.addSubview(label)
        
        
        //Label2
        var label2 = UILabel()
        label2.frame = CGRectMake(150, 50, 60, 60)
        label2.text = "0"
        self.label2 = label2
        
        self.view.addSubview(label2)

        //Increment Button (150, 250, 60, 60)
        var button = UIButton()
        button.frame = CGRectMake(200, 250, 60, 60)
        button.setTitle("ADD", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Decrement Button
        var buttonDecr = UIButton()
        buttonDecr.frame = CGRectMake(50, 250, 60, 60)
        buttonDecr.setTitle("MINUS", forState: .Normal)
        buttonDecr.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonDecr)

        buttonDecr.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Change Color Button
        var buttonColor = UIButton()
        buttonColor.frame = CGRectMake(150, 350, 90, 60)
        
        buttonColor.setTitle("COLOR", forState: .Normal)
        buttonColor.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonColor)
        
        buttonColor.addTarget(self, action: "toggleColor", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    func decrementCount() {
        
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }

    func toggleColor() {
        if self.view.backgroundColor == UIColor.lightGrayColor() {
            self.view.backgroundColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.lightGrayColor()
        }    }
}
