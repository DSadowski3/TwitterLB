//
//  HomeDatasourceContriller+navbar.swift
//  TwitterLB
//
//  Created by Dominik Sadowski on 2/1/17.
//  Copyright © 2017 Dominik Sadowski. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
    func setupNavigationBarItems(){
        
        setupLeftNavItems()
        setupRightNavItems()
        setupRemainingNavItems()
        
    }
    
    private func setupRemainingNavItems() {
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "twitter"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeperatorView = UIView()
        navBarSeperatorView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeperatorView)
        navBarSeperatorView.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
    }
    
    private func setupLeftNavItems() {
        
        let followBtn = UIButton(type: .system)
        followBtn.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followBtn.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followBtn)
    }
    
    private func setupRightNavItems() {
        
        let searchBtn = UIButton(type: .system)
        searchBtn.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchBtn.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchBtn)
        
        let composeBtn = UIButton(type: .system)
        composeBtn.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeBtn.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchBtn)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeBtn),UIBarButtonItem(customView: searchBtn)]
    }

}
