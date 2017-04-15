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

    var bullet: Bullet {
        if let type = BulletType(rawValue: type) {
            return Bullet(type: type)
        }

        return Bullet(type: .davincci)
    }
}
