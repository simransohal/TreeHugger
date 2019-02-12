//
//  EducationViewController.swift
//  wics2019
//
//  Created by Anna on 2/9/19.
//  Copyright © 2019 Simran Sohal. All rights reserved.
//

import UIKit

class EducationViewController: UIViewController {
    @IBOutlet weak var EducationTitleImage: UIImageView!
    
    @IBOutlet weak var EducationView: UIImageView!
    var facts: UIImage = UIImage(named: "funFacts")!
    var eduTitle: UIImage = UIImage(named: "eduTitle")!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.22, green:0.27, blue:0.02, alpha:1.0)
        EducationTitleImage.image = eduTitle
        EducationView.image = facts
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
