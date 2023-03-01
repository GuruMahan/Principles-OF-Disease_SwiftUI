//
//  PrincipleViewController.swift
//  Principles OF Disease XIB POC
//
//  Created by Guru Mahan on 28/02/23.
//

import UIKit

class PrincipleViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addButton: UIButton!
    var count: [Int] = []
    var count1 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
     //   count.append(1)
     count1 = 1
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
        DispatchQueue.main.asyncAfter(deadline: .now()){
            self.tableView.reloadData()
        }
    }

    @IBAction func addButtonAc(_ sender: Any) {
        
        if count1 < 5{
          count1 += 1
            DispatchQueue.main.asyncAfter(deadline: .now()){
                self.tableView.reloadData()
            }
        }
       
    }
    
}

extension PrincipleViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
       // cell?.backgroundColor = .brown
        return cell!
    }
    
    
    
}


extension UIView {
func applyGradient(colours: [UIColor]) -> Void {
 let gradient: CAGradientLayer = CAGradientLayer()
 gradient.frame = self.bounds
 gradient.colors = colours.map { $0.cgColor }
 gradient.startPoint = CGPoint(x : 0.0, y : 0.5)
 gradient.endPoint = CGPoint(x :1.0, y: 0.5)
 self.layer.insertSublayer(gradient, at: 0)
 }
}
