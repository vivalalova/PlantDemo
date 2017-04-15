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
}

//MARK: - IBActions
extension ViewController {
    @IBAction func fireBtnPressed(_ sender: UIButton) {
        self.planeImageView.plane.fire { self.bulletCountLabel.text = "\($0)" }
    }

    @IBAction func changeBulletBtnPressed(_ sender: BulletBtn) {
        self.planeImageView.plane.bullet = sender.bullet
        self.currentMissleImageView.image = sender.bullet.image
    }
}
