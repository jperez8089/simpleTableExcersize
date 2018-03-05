//
//  ViewController.swift
//  TableCells
//
//  Created by Javier Perez Primary on 3/5/18.
//  Copyright © 2018 JavierPerez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView:UITableView!
    let computers = [
        ["name" : "MacBook Air", "Color" : "Silver" ],
        ["name" : "Macbook Pro", "Color" : "Silver"],
        ["name" : "iMac", "Color" : "Silver"],
        ["name" : "Mac Mini", "Color" : "Silver"],
        ["name" : "Mac Pro", "Color" : "Black"]
        
        ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(NameAndColorCell.self, forCellReuseIdentifier: cellTableIdentifier)

        let xib = UINib(nibName: "NameAndColorCell", bundle: nil)
        tableView.register(xib,
                           forCellReuseIdentifier: cellTableIdentifier)
        tableView.rowHeight = 65
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return computers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: cellTableIdentifier, for: indexPath)
            as! NameAndColorCell
        
        let rowData = computers[indexPath.row]
        cell.name = rowData["Name"]!
        cell.color = rowData["Color"]!
        
        return cell
    }
}

