//
//  ProfileTableHeaderView.swift
//  Navigation
//
//  Created by 마리나 on 13.05.2023.
//

import UIKit

class ProfileTableHeaderView: UITableViewHeaderFooterView {

    //MARK: -  properties
        
        let profileHeaderView = ProfileHeaderView()
        
        //MARK: - Override
        
        override init(reuseIdentifier: String?) {
            super.init(reuseIdentifier: reuseIdentifier)
          
            setupProfileHeaderView()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        //MARK: - Private func
        
        private func setupProfileHeaderView() {
            profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(profileHeaderView)
            
            NSLayoutConstraint.activate([
                profileHeaderView.topAnchor.constraint(equalTo: topAnchor),
                profileHeaderView.bottomAnchor.constraint(equalTo: bottomAnchor),
                profileHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
                profileHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
        }
    }

