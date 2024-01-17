//
//  ViewController.swift
//  NetflixClone-MVVM
//
//  Created by Alper Canımoğlu on 16.01.2024.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        createTabbar()
    }
    
    func createTabbar() {
        let vcFirst = UINavigationController(rootViewController: HomeViewController())
        let vcSecond = UINavigationController(rootViewController: UpComingViewController())
        let vcThird = UINavigationController(rootViewController: SearchViewController())
        let vcFourth = UINavigationController(rootViewController: DownloadViewController())
        
        vcFirst.tabBarItem.image = UIImage(systemName: "house.fill")
        vcFirst.tabBarItem.title = "Home"
        vcSecond.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle")
        vcSecond.tabBarItem.title = "Upcoming"
        vcThird.tabBarItem.image = UIImage(systemName: "rectangle.and.text.magnifyingglass")
        vcThird.tabBarItem.title = "Search"
        vcFourth.tabBarItem.image = UIImage(systemName: "square.and.arrow.down.on.square.fill")
        vcFourth.tabBarItem.title = "Download"
        
        tabBar.tintColor = .label
        
        setViewControllers([vcFirst, vcSecond, vcThird, vcFourth], animated: true)
    }


}

