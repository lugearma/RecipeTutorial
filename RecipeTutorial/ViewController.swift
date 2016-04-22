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
    let backgroundImage = UIImageView(image: UIImage(named: "fresas"))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        blurEffect()
        
        backgroundImage.contentMode = UIViewContentMode.ScaleAspectFill
        tableView.rowHeight = 70
        tableView.backgroundView = self.backgroundImage
    }
    
    override func viewDidAppear(animated: Bool) {
        let navBar = navigationController!.navigationBar
        
        //Color for arrows and bar buttons
        navBar.tintColor = UIColor.blackColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func blurEffect(){
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = backgroundImage.bounds
        backgroundImage.addSubview(blurEffectView)
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
        cell.textLabel?.textColor = UIColor.whiteColor()
        
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.clearColor()
        }else{
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.0)
        }
        
        return cell
    }


}

