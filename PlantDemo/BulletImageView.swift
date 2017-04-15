//
//  BulletView.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

class BulletImageView: UIImageView {
    var timer = Timer()

    convenience init(bullet: Bullet) {
        self.init()
        self.image = bullet.image
        self.frame.size = CGSize(width: 20, height: 40)
        self.contentMode = .scaleAspectFit
    }

    func startMove() {
        Timer.scheduledTimer(withTimeInterval: 0.016, repeats: true) { (timer) in
            guard self.center.y > 0 else {
                timer.invalidate()
                self.removeFromSuperview()
                return
            }
            self.center.y -= 1
        }.fire()
    }
}
