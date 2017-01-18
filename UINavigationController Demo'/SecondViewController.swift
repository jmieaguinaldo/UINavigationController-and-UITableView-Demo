//
//  SecondViewController.swift
//  UINavigationController Demo'
//
//  Created by Jamie Rose Aguinaldo on 16/01/2017.
//  Copyright © 2017 Jamie Rose Aguinaldo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblBands: UITableView!
    
    let bandsArr = ["The 1975", "Panic! At The Disco", "Paramore", "Fall Out Boy", "Mayday Parade", "December Avenue", "Parokya ni Edgar", "Cheats", "Foo Fighters", "Jensen And The Flips", "Sandwich", "Urbandub"]
    let textCellIdentifier = "TextCell"
    var selectedBand:String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    * UITableView methods
    */
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bandsArr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = bandsArr[row]
        
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        selectedBand = bandsArr[row]
        
        let bandNameViewController = self.storyboard?.instantiateViewControllerWithIdentifier("BandNameViewController") as! BandNameViewController
        bandNameViewController.selectedBandFromListView = selectedBand
        
        // Call pushViewController to push the view controller to the navigation stack
        self.navigationController?.pushViewController(bandNameViewController, animated: true)
    }


    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    //}
    

}
