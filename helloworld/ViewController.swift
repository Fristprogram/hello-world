//
//  ViewController.swift
//  helloworld
//
//  Created by 徐小鹏 on 2022/8/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    var intNum = 0
    var doubleNum :Double = 0.0
    var step = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let hello :String = "console hello world!!!!!"
        
        let score :Double? = 100
        
        if score == nil{
            print("socre is nil")
        }else{
            print("socre is \(score!)")
        }
        
        if let sss = score{
            print("socre is \(sss)")
        }else{
            print("no socre")
        }
        print(hello)
     updateUi()
    }

    var num = 0;
    
    @IBAction func clickBtn(_ sender: UIButton) {
        print("click btn")
        if intNum >=  10{
            step = -1
        }else if intNum <= 0 {
            step = 1
        }
       
        intNum += step
        doubleNum += Double(step)
        
        updateUi()
    }
    
    func updateUi(){
        label.text = "Int :\(intNum) \n Double:\(doubleNum)"
        let titel = step > 0 ? "+\(step)" : "\(step)"
        button.setTitle("\(titel)", for: .normal)
    }
}

