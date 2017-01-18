//
//  BandNameViewController.swift
//  UINavigationController Demo'
//
//  Created by Jamie Rose Aguinaldo on 18/01/2017.
//  Copyright © 2017 Jamie Rose Aguinaldo. All rights reserved.
//

import UIKit

class BandNameViewController: UIViewController {
    
    var selectedBandFromListView:String!
    @IBOutlet weak var lblSelectedBand: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblSelectedBand.text = selectedBandFromListView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
