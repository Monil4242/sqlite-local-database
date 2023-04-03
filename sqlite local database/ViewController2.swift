//
//  ViewController2.swift
//  sqlite local database
//
//  Created by monil sojitra on 03/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var arr3 = sqlite.getData()
    
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell2
        cell.idLabel.text = arr3[indexPath.row].id.description
        cell.nameLabel.text = arr3[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }

}
