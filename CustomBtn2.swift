//
//  CustomBtn2.swift
//  Button Test
//
//  Created by Adam David Walton on 10/3/17.
//  Copyright © 2017 Adam David Walton. All rights reserved.
//

import UIKit

class CustomBtn2: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    @IBInspectable var fillcolor: UIColor = UIColor.magenta
    @IBInspectable var cornerRadius:CGFloat = 0
    var path: UIBezierPath!
    override func awakeFromNib() {
        backgroundColor = fillcolor
        addTarget(self, action: #selector(touchdown), for: UIControlEvents.touchDown)
        
    }
    override func draw(_ rect: CGRect) {
        path = UIBezierPath()
        
        path.move(to: (CGPoint(x: 150+50, y: 13+300)))
        path.addLine(to: CGPoint(x: 150+50, y: 13+300))
        path.addLine(to: (CGPoint(x: 50+50, y: 13+300)))
        path.addLine(to: (CGPoint(x: 0+50, y: 100+300)))
        path.addLine(to: (CGPoint(x: 50+50, y: 187+300)))
        path.addLine(to: (CGPoint(x: 150+50, y: 187+300)))
        path.addLine(to: (CGPoint(x: 200+50, y: 100+300)))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor=UIColor.red.cgColor
        shapeLayer.fillColor=UIColor.blue.cgColor
        shapeLayer.path = path.cgPath
        layer.addSublayer(shapeLayer)
    }
    
    
    
    
    @objc func touchdown(button:CustomBtn, event:UIEvent){
        if let touch=event.touches(for: button)?.first{
            let location = touch.location(in: button)
            
            if path.contains(location)==false{
                button.cancelTracking(with: nil)
            }
        }
    }
}
