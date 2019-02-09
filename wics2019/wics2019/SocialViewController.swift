//
//  SocialViewController.swift
//  wics2019
//
//  Created by Anna on 2/9/19.
//  Copyright © 2019 Simran Sohal. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController {
 
    @IBOutlet weak var topBarTextCommunity: UILabel!
    @IBOutlet weak var CommunityScroll: UIScrollView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    var fgBool = false
    
    var simran: UIImage = UIImage(named: "Simran")!
    var isha: UIImage = UIImage(named: "Isha")!
    var jared: UIImage = UIImage(named: "Jared")!
    var firstGroup: UIImage = UIImage(named: "firstGroup")!
    var secondGroup: UIImage = UIImage(named: "secondGroup")!
    var thirdGroup: UIImage = UIImage(named: "Group")!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstImage.image = simran
        secondImage.image = isha
        thirdImage.image = jared
        // Do any additional setup after loading the view.
    }
    @IBAction func commSwitch(_ sender: Any) {
        
        if(fgBool == true){
            firstImage.image = simran
            secondImage.image = isha
            thirdImage.image = jared
            topBarTextCommunity.text = "Check out what your friends are up to!"
        } else {
            firstImage.image = firstGroup
            secondImage.image = secondGroup
            thirdImage.image = thirdGroup
            topBarTextCommunity.text = "Simran's Work Group"
        }
        
        fgBool = !fgBool

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
