//
//  Plane.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

enum PlaceErr: Error {
    case noBullet
    case viewNotFound
}

class Plane {
    weak var view: UIView?

    var bullet = Bullet(type: .davincci)
    var bulletCount: Int = 100

    func fire(complete: ((Int) -> Void)? = nil) {
        guard let view = self.view else {
            return
        }

        guard self.bulletCount >= self.bullet.cost else {
            return
        }

        self.bulletCount -= self.bullet.cost

        let bulletImageView = self.bullet.view(position: view.center)
        view.superview?.addSubview(bulletImageView)
        bulletImageView.move()

        if complete != nil {
            complete?(self.bulletCount)
        }
    }
}
