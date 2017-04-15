//
//  ViewController.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bulletCountLabel: UILabel!
    @IBOutlet var currentMissleImageView: UIImageView!
    @IBOutlet var planeImageView: PlaneImageView!

    var bullet = Bullet() {
        didSet {
            self.currentMissleImageView.image = bullet.image
        }
    }

    var bulletCount: Int = 100 {
        didSet {
            self.bulletCountLabel.text = "\(bulletCount)"
        }
    }
}

//MARK: - IBActions
extension ViewController {

    @IBAction func fireBtnPressed(_ sender: UIButton) {
        guard self.bulletCount >= self.bullet.cost else {
            return
        }

        self.bulletCount -= self.bullet.cost

        self.fireBullet()
    }

    @IBAction func missleBtnPressed(_ sender: BulletBtn) {
        self.bullet = sender.bullet
    }
}

extension ViewController {
    func fireBullet() {
        let image = BulletImageView(bullet: self.bullet)
        image.center = self.planeImageView.center
        self.view.addSubview(image)
        image.startMove()
    }
}
