//
//  AddMealControllerView.swift
//  RecipeTutorial
//
//  Created by Luis Arias on 17/04/16.
//  Copyright © 2016 Luis Arias. All rights reserved.
//

import UIKit

class AddMeal: UIViewController{
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var recipeContent: UITextView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        titleText.textColor = UIColor.whiteColor()
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recipeContent.textColor = UIColor.whiteColor()
        
        blurEffect()
    }
    
    func blurEffect(){
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        backgroundImageView.image = UIImage(named: "mango")
        blurEffectView.frame = backgroundImageView.bounds
        backgroundImageView.addSubview(blurEffectView)
    }
}
