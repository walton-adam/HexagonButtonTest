//
//  FirstViewController.swift
//  Button Test
//
//  Created by Adam David Walton on 9/29/17.
//  Copyright © 2017 Adam David Walton. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onCustomClick(_ sender: CustomBtn) {
        sender.fillcolor = UIColor.red
        sender.setNeedsDisplay()
        debugPrint("Customly Clicked")
    }
    @IBAction func Btn2Click(_ sender: CustomBtn2) {
       
        debugPrint("Customly Clicked The Other")
    }
    
}

