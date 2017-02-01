//
//  UserCell.swift
//  TwitterLB
//
//  Created by Dominik Sadowski on 2/1/17.
//  Copyright © 2017 Dominik Sadowski. All rights reserved.
//

import UIKit
import LBTAComponents

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            
            guard let user = datasourceItem as? User else { return}
            nameLabel.text = user.name
            userName.text = user.username
            bioText.text = user.bioText
            profileImage.image = user.profileImage
        }
    }
    
    let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "dog2")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Domninik Sadowski"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let userName: UILabel = {
        let label = UILabel()
        label.text = "@DS3"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        return label
    }()
    
    let bioText: UITextView = {
        let textView = UITextView()
        textView.text = "I like to develope new applications for iOS and Android"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .clear
        return textView
    }()
    
    let followBtn: UIButton = {
        let followBtn = UIButton()
        followBtn.layer.cornerRadius = 5
        followBtn.layer.borderColor = twitterBlue.cgColor
        followBtn.layer.borderWidth = 1
        followBtn.setTitle("Follow", for: .normal)
        followBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        followBtn.setTitleColor(twitterBlue, for: .normal)
        followBtn.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        followBtn.imageView?.contentMode = .scaleAspectFit
        followBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -12, bottom: 0, right: 0)
        return followBtn
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(profileImage)
        addSubview(nameLabel)
        addSubview(userName)
        addSubview(bioText)
        addSubview(followBtn)
        
        profileImage.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImage.topAnchor, left: profileImage.rightAnchor, bottom: nil, right: followBtn.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        userName.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioText.anchor(userName.bottomAnchor, left: userName.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        followBtn.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
    }
}
