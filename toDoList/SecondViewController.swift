//
//  SecondViewController.swift
//  toDoList
//
//  Created by YILDIRAY HAZIR on 8/17/17.
//  Copyright © 2017 interview. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet weak var inputText: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        if (inputText.text != ""){
            toDoList.append(inputText.text!)
            inputText.text = ""
            
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

