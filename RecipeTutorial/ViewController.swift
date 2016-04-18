//
//  ViewController.swift
//  RecipeTutorial
//
//  Created by Luis Arias on 17/04/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var items = ["Item1", "Item2", "Item3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: TableView
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Reuturn number of cells which will be display
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //Create a cell variable
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        //Give to each cell its content
        cell.textLabel?.text = items[indexPath.item]
        
        return cell
    }


}

