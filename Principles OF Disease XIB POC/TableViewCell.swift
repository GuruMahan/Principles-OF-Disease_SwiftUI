//
//  TableViewCell.swift
//  Principles OF Disease XIB POC
//
//  Created by Guru Mahan on 28/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    lazy var headerView: UIView! = {
       
      let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
  
       
      return view
      
    }()
    

    lazy var starButtonAction: UIButton! = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isSelected = false
        button.contentMode = .scaleAspectFit
        button.setImage(UIImage(systemName: "star"), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.tintColor = .white
   
        return button
       
      
    }()
    
    lazy var moreOptionButtonAction: UIButton! = {
          let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.isSelected = false
            button.contentMode = .scaleAspectFit
            button.setImage(UIImage(named: "Path 78"), for: .normal)
            button.setTitleColor(UIColor.white, for: .normal)
          //  button.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
            return button
           
          
        }()
    
    lazy var cnsModuleLabel: UILabel! = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints =   false
        label.font  =   UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.font = .boldSystemFont(ofSize: 15)
        label.text  =   "CNS MODULE - 1"
        label.textColor = .white
        return label
    }()
    
    lazy var levellabel: UILabel! = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints =   false
        label.font  =   UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.textColor = .white
        label.text  =   "L1,L2,L3"
        return label
    }()
    
    lazy var lectureLabel: UILabel! = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints =   false
        label.font  =   UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 15)
        label.numberOfLines = 0
        label.text  =   "Lecture document.ppt"
        return label
    }()
    
    lazy var UpdateLabel: UILabel! = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints =   false
        label.font  =   UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text  =   "Update on 6 NOV,2020"
        return label
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        setconstrain()
     
        self.headerView.applyGradient(colours: [ UIColor(red: 139/255, green: 128/255, blue: 113/255, alpha: 1), .brown])
        
    }
    override func prepareForReuse() {
        super.prepareForReuse()
      
    }


    func setconstrain(){
        contentView.addSubview(headerView)
        headerView.addSubview(starButtonAction)
        headerView.addSubview(moreOptionButtonAction)
        headerView.addSubview(cnsModuleLabel)
        headerView.addSubview(levellabel)
        contentView.addSubview(lectureLabel)
        contentView.addSubview(UpdateLabel)
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 20),
            headerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 150),
            
            starButtonAction.topAnchor.constraint(equalTo: headerView.topAnchor,constant: 20),
            starButtonAction.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 20),
            
            moreOptionButtonAction.topAnchor.constraint(equalTo: headerView.topAnchor,constant: 20),
            moreOptionButtonAction.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: -20),
            
            cnsModuleLabel.topAnchor.constraint(equalTo: headerView.topAnchor,constant: 40),
            cnsModuleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            
            
            levellabel.topAnchor.constraint(equalTo: cnsModuleLabel.bottomAnchor,constant: 10),
            levellabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            
            
            lectureLabel.topAnchor.constraint(equalTo: headerView.bottomAnchor,constant: 10),
            lectureLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            UpdateLabel.topAnchor.constraint(equalTo: lectureLabel.bottomAnchor,constant: 5),
            UpdateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            UpdateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        
        ])
    }
}
