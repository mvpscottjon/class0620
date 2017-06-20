//
//  P2ViewController.swift
//  MyApp04
//
//  Created by user on 2017/6/20.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class P2ViewController: UIViewController {
    var arg:String?
    
    //返回第一頁 用segue
//    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        print("back")
//    
//    
//    }
    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        <#code#>
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //判斷是不是nil
        if let strarg = arg {
        print("args = \(strarg)")
        } else { print("It's nil")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
