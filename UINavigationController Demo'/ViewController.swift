//
//  ViewController.swift
//  UINavigationController Demo'
//
//  Created by Jamie Rose Aguinaldo on 16/01/2017.
//  Copyright © 2017 Jamie Rose Aguinaldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    * Jump to a scene programmaticallyy
    */
    @IBAction func goToThirdViewController(sender: AnyObject) {
        // Declare variable that will hold the view contoler
        let thirdViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ThirdViewController") as! ThirdViewController
        
        // Call pushViewController to push the view controller to the navigation stack
        self.navigationController?.pushViewController(thirdViewController, animated: true)
    }

   
}

