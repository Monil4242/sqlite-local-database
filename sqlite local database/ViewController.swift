//
//  ViewController.swift
//  sqlite local database
//
//  Created by monil sojitra on 31/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        sqlite.createfile()
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        if let x = t1.text , let y = Int(x){
            sqlite.addDat(id: y, name: t2.text!)
        }
    }
    
    @IBAction func deleteButtonAction(_ sender: UIButton) {
        if let x = t1.text , let y = Int(x){
            sqlite.deleteData(id: y, name: t2.text!)
        }
    }
    
    @IBAction func getDataButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(n, animated: true)
    }
}
