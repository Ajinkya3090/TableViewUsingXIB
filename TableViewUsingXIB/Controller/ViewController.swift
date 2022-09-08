//
//  ViewController.swift
//  TableViewUsingXIB
//
//  Created by admin on 08/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var fruits : [String] = ["Apple","Peach","Cherry","Banana","Orange","Mango"]

    @IBOutlet weak var myTableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    func config() {
        myTableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell", for: indexPath) as? XIBTableViewCell
        cell?.lblName.text = fruits[indexPath.row]
        return cell!
    }
    
    
}
