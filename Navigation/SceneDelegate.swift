//
//  SceneDelegate.swift
//  Navigation
//
//  Created by 마리나 on 03.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        let newsViewController = NewsViewController()
        let newsNavigationController = UINavigationController(rootViewController: newsViewController)
        newsViewController.title = "Лента"
        newsViewController.view.backgroundColor = .systemMint
        
        let profileViewController = ProfileViewController()
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        profileViewController.title = "Профиль"
        profileViewController.view.backgroundColor = .systemPink
        
        newsViewController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "doc.richtext"), tag: 0)
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), tag: 1)
        
        let tabBarController = UITabBarController()
        
        tabBarController.viewControllers = [newsViewController, profileViewController]
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.tabBar.tintColor = .black
        tabBarController.selectedIndex = 1
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        self.window = window
    }

}

