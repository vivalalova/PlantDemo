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
    @IBOutlet var planeImageView: UIImageView!

    var bullet = Bullet()

    var bulletCount:Int = 100 {
        didSet {
            self.bulletCountLabel.text = "\(bulletCount)"
        }
    }
}

//MARK: - life cycle
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - IBActions
extension ViewController {

    @IBAction func fireBtnPressed(_ sender: UIButton) {
        guard self.bulletCount > self.bullet.cost else {
            return
        }

        self.bulletCount -= self.bullet.cost

        self.fireBullet()
    }

    @IBAction func missleBtnPressed(_ sender: BulletBtn) {
        if let type =  BulletType(rawValue: sender.type) {
            self.bullet.type = type
        }
    }
}


extension ViewController {
    func fireBullet() {

    }
}
