//
//  FirstViewController.swift
//  wics2019
//
//  Created by Simran Sohal on 2/9/19.
//  Copyright © 2019 Simran Sohal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let progressShape = CAShapeLayer()
    let backgroundShape = CAShapeLayer()
    
    let progressShape1 = CAShapeLayer()
    let backgroundShape1 = CAShapeLayer()
    
    let progressShape2 = CAShapeLayer()
    let backgroundShape2 = CAShapeLayer()
    
    let progressShape3 = CAShapeLayer()
    let backgroundShape3 = CAShapeLayer()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(backgroundShape)
        view.layer.addSublayer(progressShape)
        
        view.layer.addSublayer(backgroundShape1)
        view.layer.addSublayer(progressShape1)
        
        view.layer.addSublayer(backgroundShape2)
        view.layer.addSublayer(progressShape2)
        
        view.layer.addSublayer(backgroundShape3)
        view.layer.addSublayer(progressShape3)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateIndicator(with progressShape: CAShapeLayer, backgroundShape: CAShapeLayer, percent: Double, isAnimated: Bool = false, strokewidth: CGFloat, size: CGFloat, xval: CGFloat, yval: CGFloat, red : CGFloat, green : CGFloat, blue : CGFloat, alpha: CGFloat){
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = progressShape.strokeStart
        animation.toValue = percent / 100.0
        animation.duration = 2.5
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut);
        
        let shortestSide = min(view.frame.size.width - size, view.frame.size.height - size)
        let strokeWidth: CGFloat = strokewidth
        let frame = CGRect(x: xval, y: yval, width: shortestSide - size, height: shortestSide - size)
        
        backgroundShape.frame = frame
        backgroundShape.position = view.center
        backgroundShape.path = UIBezierPath(ovalIn: frame).cgPath
        backgroundShape.strokeColor = UIColor.black.cgColor
        backgroundShape.lineWidth = strokeWidth
        backgroundShape.fillColor = UIColor.clear.cgColor
        
        progressShape.frame = frame
        progressShape.path = backgroundShape.path
        progressShape.position = backgroundShape.position
        
        progressShape.strokeColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [red, green, blue, alpha])
        progressShape.lineWidth = backgroundShape.lineWidth
        progressShape.fillColor = UIColor.clear.cgColor
        progressShape.strokeEnd = CGFloat(percent/100.0)
        
        
        
        if isAnimated {
            progressShape.add(animation, forKey: nil)
        }
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        updateIndicator(with: progressShape, backgroundShape: backgroundShape, percent: 73.0, isAnimated: true, strokewidth: 60.0, size: 90.0, xval: 0.0, yval: -135.0, red: 0.48, green: 0.61, blue: 0.29, alpha: 1.0)
        
        updateIndicator(with: progressShape1, backgroundShape: backgroundShape1, percent: 20.0, isAnimated: true, strokewidth: 25.0, size: 180.0, xval: -90, yval: 170, red: 0.71, green: 0.78, blue: 0.54, alpha: 1.0)
        
        updateIndicator(with: progressShape2, backgroundShape: backgroundShape2, percent: 45.0, isAnimated: true, strokewidth: 25.0, size: 180.0, xval: 90, yval: 170, red: 0.71, green: 0.78, blue: 0.54, alpha: 1.0)
        
        updateIndicator(with: progressShape3, backgroundShape: backgroundShape3, percent: 85.0, isAnimated: true, strokewidth: 25.0, size: 180.0, xval: 0, yval: 280, red: 0.71, green: 0.78, blue: 0.54, alpha: 1.0)
        
    }
    
    
        
}




