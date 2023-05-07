//
//  PostViewController.swift
//  Navigation
//
//  Created by 마리나 on 06.05.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        barButtonItem()
        title = "Мой пост"
    }
    private func barButtonItem() {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapBarButton))
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc private func tapBarButton() {
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
}
