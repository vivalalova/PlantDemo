//
//  PlaneImageView.swift
//  PlantDemo
//
//  Created by lova on 2017/4/15.
//  Copyright © 2017年 lova. All rights reserved.
//

import UIKit

class PlaneImageView: UIImageView {

    var point = CGPoint(x: 0, y: 0)

    override func awakeFromNib() {
        super.awakeFromNib()

        self.image = #imageLiteral(resourceName: "plane")

        let gesture = UIPanGestureRecognizer(target: self, action: #selector(pan(gesture:)))
        self.addGestureRecognizer(gesture)
    }

    func pan(gesture: UIGestureRecognizer) {
        guard let superview = self.superview else {
            return
        }

        self.center = gesture.location(in: superview)

        if gesture.state == .began {

        } else if gesture.state == .changed {

        } else if gesture.state == .ended {

        }
    }
}
