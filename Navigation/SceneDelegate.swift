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
        
        let feedViewController = FeedViewController()
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        feedViewController.title = "Лента"
        feedViewController.view.backgroundColor = .systemMint
        feedViewController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "doc.richtext"), tag: 0)
        
        let profileViewController = ProfileViewController()
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)
        profileViewController.title = "Профиль"
        profileViewController.view.backgroundColor = .systemPink
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), tag: 1)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [feedNavigationController, profileViewController]
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.tabBar.tintColor = .black
        tabBarController.selectedIndex = 1
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        self.window = window
    }

}

