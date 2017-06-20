//
//  ViewController.swift
//  MyApp03
//
//  Created by user on 2017/6/20.
//  Copyright © 2017年 seven. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textHistory: UITextView!
    
    private var stringAnswer:String?
    private var counter = 0
    
    @IBAction func clickGuess(_ sender: Any) {
        counter += 1
        let stringInput = textInput.text!
//        print(stringInput)
        let stringResult = BradAPI.checkAB(answer: stringAnswer!, guess: stringInput)
        labelResult.text = stringResult
        
        textHistory.text.append("\(counter).\(stringInput) => \(stringResult)\n")
        textInput.text = ""
        
        if stringResult == "3A0B" {
            showWinnerDialog()
        }else if counter == 10 {
            showLoserDialog()
        }

        textInput.resignFirstResponder()
        
//        labelResult.text = SevenAPI.
//        textHistory.text = "1. 123 => 1A2B"
    }

    func showWinnerDialog() {
        let alert:UIAlertController = UIAlertController(title: "Game Result", message: "Congraguation!!You win", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action:UIAlertAction) -> Void in print("OK")} )
        
            alert.addAction(okAction)
            
            //it was presentViewController(...) before
        self.present(alert, animated: true, completion: nil)   //self 可不寫
    }
    
    func showLoserDialog() {
        let alert:UIAlertController = UIAlertController(title: "Game Result", message: "Sorry /n Answer is: \(stringAnswer!)", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action:UIAlertAction) -> Void in self.initRound()} )//匿包內 呼叫要用self
            
            alert.addAction(okAction)
        
            //it was presentViewController(...) before
            self.present(alert, animated: true, completion: nil)   //self 可不寫
    
    }
    
    
    //初始化
    private func initRound() {
        textInput.text = ""
        labelResult.text = "Result"
        textHistory.text = ""
        stringAnswer = BradAPI.createAnswer(3)
        counter = 0
    textInput.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        clickGuess(self)
        return true
    }
    
    
    
    override func viewDidLoad() {  //畫面一開始
        super.viewDidLoad()
        textInput.delegate = self   //委託
//        stringAnswer = BradAPI.createAnswer(3)
//        print(stringAnswer!)
        initRound()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

