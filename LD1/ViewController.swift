//
//  ViewController.swift
//  LD1
//
//  Created by YKiimm on 11/07/2017.
//  Copyright © 2017 yonghwankim's macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    // MARK: - Property
    
    @IBOutlet var tableView: UITableView!
    
    var testModel: [Model]!
    
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let model1 = Model(text: "1", image: UIImage(named: "twitter-big")!, createdDate: Date())
        let model2 = Model(text: "2", image: UIImage(named: "twitter-big")!, createdDate: Date())
        testModel = [model1, model2]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewCellController
        let item = testModel[indexPath.row]
        print(indexPath.row)
        cell.cellLabel.text = item.text
        cell.cellImageView.image = item.image
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(describing: Date())
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        return backgroundView
    }
    
}

