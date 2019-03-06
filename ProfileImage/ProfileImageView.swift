//
//  ProfileImageView.swift
//  ProfileImage
//
//  Created by 豊岡正紘 on 2019/03/06.
//  Copyright © 2019 Masahiro Toyooka. All rights reserved.
//

import Foundation
import UIKit

class ProfileImageView: UIImageView {
    
    let imageLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 18)
        label.layer.shadowOpacity = 0.8
        label.layer.shadowOffset = .zero
        return label
    }()
    
    @IBInspectable var imageIndex: NSNumber!{
        didSet {
            let imageName = "profile\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            layer.cornerRadius = 8
            imageLabel.text = imageIndex.stringValue
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(imageLabel)
        imageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    }
    
}
