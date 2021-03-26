//
//  ViewController.swift
//  AppDojoTask1
//
//  Created by KOSUKE on 2021/03/25.
//  Copyright © 2021 Kosuke Nakao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet private var textFieldCollection: [UITextField]!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for textFd in textFieldCollection {
            textFd.delegate = self
        }
        
        // Do any additional setup after loading the view.
    }

    
    //ボタンを押すと各テキストフィールドの値を足し、resultLabelに表示させる
    @IBAction func calculateButton(_ sender: Any) {
        
        //合計値
        var total:Int = 0
    
        //textFieldを1つずつ取り出し、テキストがnilではない、テキストがIntの場合のみ計算される
        for textFd in textFieldCollection {
            if let stringText = textFd.text, let intText = Int(stringText) {
                total += intText
            }
        }
        
        //resultLabelに合計値を表示させる
        resultLabel.text = String(total)
    }

}

