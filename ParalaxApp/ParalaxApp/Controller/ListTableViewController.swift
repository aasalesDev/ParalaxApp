//
//  ListTableViewController.swift
//  ParalaxApp
//
//  Created by Anderson Sales on 20/02/23.
//

import UIKit

class ListTableViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ParallaxCell.self), for: indexPath) as? ParallaxCell {
            if let image = imageArray[indexPath.row] {
                cell.configureCell(with: image, and: nameArray[indexPath.row])
                return cell
            }
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }


}

