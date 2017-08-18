//
//  FirstViewController.swift
//  toDoList
//
//  Created by YILDIRAY HAZIR on 8/17/17.
//  Copyright © 2017 interview. All rights reserved.
//

import UIKit

var toDoList = ["Go to Safeway","Buy Egg","Pay the Bill","Return to Cart", "Go to Home"]

class FirstViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (toDoList.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = toDoList[indexPath.row]
        cell.textLabel?.highlightedTextColor = UIColor.red
        return(cell)
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete {
            toDoList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
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

