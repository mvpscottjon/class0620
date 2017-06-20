//
//  ViewController.swift
//  MyApp04
//
//  Created by user on 2017/6/20.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //prepare only one
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("prepare")
        
        //判斷 去哪支
        if segue.identifier == "sg2page2" {
            
            //強制轉型
            let dvc:P2ViewController = segue.destination as! P2ViewController
            dvc.arg = "Brad"

        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

