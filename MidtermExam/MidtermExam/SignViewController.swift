//
//  SignViewController.swift
//  MidtermExam
//
//  Created by 蔡舜珵 on 2016/6/17.
//  Copyright © 2016年 蔡舜珵. All rights reserved.
//

import UIKit

class SignViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var signTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var alermLabel: UILabel!
    var signArray = [String]() {
        didSet {
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        alermLabel.text = ""

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signAction(sender: AnyObject) {
        let sign = signTextField.text
        if sign == ""{
            alermLabel.text = "名字不能留白"
        } else{
            signArray.append(sign!)
            alermLabel.text?.removeAll()
        }
        
        if signArray.count > 3{
            alermLabel.text = "只能簽三筆"
            signArray.removeLast()
        }
        signTextField.text?.removeAll()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SignCell", forIndexPath: indexPath)
        let showSign = signArray[indexPath.row]
        cell.textLabel?.text = "\(showSign)"
        return cell
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
