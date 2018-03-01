//
//  User.swift
//  CollectionPro
//
//  Created by SOUMEN GHOSH on 24/1/18.
//  Copyright © 2018 Sg106. All rights reserved.
//

import UIKit

struct User {
    
    var name: String
    var msg: String
    var image: UIImage
    
    init(name: String, msg: String, image: UIImage) {
        self.name = name
        self.msg = msg
        self.image = image
    }
    
}
