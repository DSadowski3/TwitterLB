//
//  HomeDatasourceController.swift
//  TwitterLB
//
//  Created by Dominik Sadowski on 1/30/17.
//  Copyright © 2017 Dominik Sadowski. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User{
            //user.bioText
            
            let approximateWidthOfBioTextView = view.frame.width - 12 - 50 - 15
            let size = CGSize(width: approximateWidthOfBioTextView, height: 1000)
            let attribute = [NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
            
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attribute, context: nil)
            
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
        }
        
        
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
