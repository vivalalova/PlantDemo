//
//  BulletView.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

class BulletImageView: UIImageView {
    convenience init(bullet:Bullet) {
        self.init()

        self.image = bullet.image
    }
}
