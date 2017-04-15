//
//  Bullet.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

enum BulletType: Int {
    case davincci = 1
    case bacon = 2
    case newton = 3
}

struct Bullet {
    var type: BulletType = .davincci

    var cost: Int {
        return self.type.rawValue
    }

    var image: UIImage {
        switch self.type {
        case .davincci:
            return #imageLiteral(resourceName: "missile1")
        case .bacon:
            return #imageLiteral(resourceName: "missile2")
        case .newton:
            return #imageLiteral(resourceName: "missile3")
        }
    }

    
}

