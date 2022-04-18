//
//  ViewController.swift
//  NameRecoed_Tabelview
//
//  Created by Ronak Shastri on 2022-04-18.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    //Data model
    let names : [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat","Horse", "Cow", "Camel", "Sheep", "Goat", "Dog"]
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // (optional) include this line if you want to remove the extra empty cell divider lines
              self.myTableView.tableFooterView = UIView()
        // Register the table view cell class and its reuse id
        self.myTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        //provide the delegate methods and row data for the table view.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    // // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = (self.myTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        // set the text from the data model
        cell.textLabel?.text = self.names[indexPath.row]
        
        return cell
    }

}

