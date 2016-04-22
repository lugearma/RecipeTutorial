//
//  DetailMealViewController.swift
//  RecipeTutorial
//
//  Created by Luis Arias on 17/04/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

import UIKit

class DetailMeal: UIViewController{
    
    @IBOutlet weak var detailContent: UITextView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        detailContent.textColor = UIColor.whiteColor()
        
        blurEffect()
    }
    
    func blurEffect(){
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        backgroundImageView.image = UIImage(named: "kiwi")
        blurEffectView.frame = backgroundImageView.bounds
        backgroundImageView.addSubview(blurEffectView)
    }
    
}
