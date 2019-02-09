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
    let percent = 73.0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(backgroundShape)
        view.layer.addSublayer(progressShape)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateIndicator(with percent: Double, isAnimated: Bool = false){
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = progressShape.strokeStart
        animation.toValue = percent / 100.0
        animation.duration = 2.5
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut);
        
        let shortestSide = min(view.frame.size.width - 90, view.frame.size.height - 90)
        let strokeWidth: CGFloat = 60.0
        let frame = CGRect(x: 0, y: -135, width: shortestSide - strokeWidth, height: shortestSide - strokeWidth)
        
        backgroundShape.frame = frame
        backgroundShape.position = view.center
        backgroundShape.path = UIBezierPath(ovalIn: frame).cgPath
        backgroundShape.strokeColor = UIColor.black.cgColor
        backgroundShape.lineWidth = strokeWidth
        backgroundShape.fillColor = UIColor.clear.cgColor
        
        progressShape.frame = frame
        progressShape.path = backgroundShape.path
        progressShape.position = backgroundShape.position
        progressShape.strokeColor = UIColor.red.cgColor
        progressShape.lineWidth = backgroundShape.lineWidth
        progressShape.fillColor = UIColor.clear.cgColor
        progressShape.strokeEnd = CGFloat(percent/100.0)
        
        if isAnimated {
            progressShape.add(animation, forKey: nil)
        }
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        updateIndicator(with: percent, isAnimated: true)
    }
        
}




