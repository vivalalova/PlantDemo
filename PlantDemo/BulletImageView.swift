//
//  BulletView.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

class BulletImageView: UIImageView {
    convenience init(bullet: Bullet,center:CGPoint) {
        self.init()
        self.image = bullet.image
        self.frame.size = CGSize(width: 20, height: 40)
        self.center = center
        self.contentMode = .scaleAspectFit
    }

    func move() {
        Timer.scheduledTimer(withTimeInterval: 0.016, repeats: true) { (timer) in
            guard self.center.y > 0 else {
                timer.invalidate()
                self.removeFromSuperview()
                return
            }
            self.center.y -= 2
        }.fire()
    }
}
