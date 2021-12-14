//
//  ViewController.swift
//  RainbowRoad
//
//  Created by A Ab. on 11/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
}

