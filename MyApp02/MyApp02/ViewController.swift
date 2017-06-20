//
//  ViewController.swift
//  MyApp02
//
//  Created by user on 2017/6/20.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgCup: UIImageView!

    private let cups:[UIImage] = [
        UIImage(named: "s01")!, UIImage(named: "s02")!, UIImage(named: "s01")!, UIImage(named: "s03")! ]
    
    
    
   
    
    @IBAction func pressBtn(_ sender: Any) {
//        print("down")
        imgCup.animationImages = cups
        imgCup.animationDuration = 0.2
        imgCup.animationRepeatCount = 5
        imgCup.startAnimating()
        
    }
    
    @IBAction func upBtn(_ sender: Any) {
        let rand = Int(arc4random_uniform(4))
                imgCup.image = cups[rand]
    }
    
    
//    @IBAction func click(_ sender: Any) {
//        let rand = Int(arc4random_uniform(4))
//        imgCup.image = cups[rand]
//    }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

