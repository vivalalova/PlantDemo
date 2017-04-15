//
//  BulletBtn.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

@IBDesignable
class BulletBtn: UIButton {
    @IBInspectable var type: Int = 1

    lazy var bullet: Bullet = {
        let b = Bullet(type: .davincci)
        return b
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        if let type = BulletType(rawValue: type) {
            self.bullet.type = type
        }
    }
}
