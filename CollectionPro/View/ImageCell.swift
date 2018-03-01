//
//  ImageCell.swift
//  CollectionPro
//
//  Created by SOUMEN GHOSH on 24/1/18.
//  Copyright © 2018 Sg106. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {
    
    var user: User? {
        didSet{
            self.image.image = user?.image
            self.name.text = user?.name
            self.msg.text = user?.msg
        }
    }
    
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 50
        image.layer.masksToBounds = true
        return image
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.textAlignment = .center
        name.font = UIFont(name: "Times New Roman", size: 22)
        return name
    }()
    
    let msg: UILabel = {
        let msg = UILabel()
        msg.translatesAutoresizingMaskIntoConstraints = false
        msg.textAlignment = .center
        msg.font = UIFont(name: "Times New Roman", size: 18)
        msg.textColor = .darkGray
        msg.numberOfLines = 2
        return msg
    }()
    
    let but: UIButton = {
        let but = UIButton()
        but.translatesAutoresizingMaskIntoConstraints = false
        but.backgroundColor = .black
        but.setTitle("Visit!", for: .normal)
        but.layer.cornerRadius = 15
        but.layer.masksToBounds = true
        return but
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupImage()
        setupName()
        setupMsg()
        setupBut()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImage() {
        addSubview(image)
        image.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setupName() {
        addSubview(name)
        name.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        name.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10).isActive = true
    }
    
    
    func setupMsg() {
        addSubview(msg)
        msg.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 5).isActive = true
        msg.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        msg.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    
    func setupBut() {
        addSubview(but)
        but.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        but.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        but.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    
}
