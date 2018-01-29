//
//  ViewController.swift
//  HomeWork4
//
//  Created by Sergey Yelmanov on 29.01.2018.
//  Copyright © 2018 Sergey Yelmanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subsCountLabel: UILabel!
    @IBOutlet weak var viewsCountLabel: UILabel!
    @IBOutlet weak var isHappyLabel: UILabel!
    @IBOutlet weak var viewsTextField: UITextField!



    let techBlogger = YouTuber.init(name: "wylsacom", viewsCount: 0, subsCount: 0, isHappy: false)

    override func viewDidLoad() {
        super.viewDidLoad()

        setupData()

    }

    func setupData() {
        nameLabel.text = techBlogger.name
        subsCountLabel.text = "\(techBlogger.subsCount)"
        viewsCountLabel.text = "\(techBlogger.viewsCount)"
        isHappyLabel.text = "\(techBlogger.isHappy)"
    }

    
    @IBAction func viewsButton(_ sender: UIButton) {
        let a = viewsTextField.text
        if let b = Int(a ?? "") {
            techBlogger.views(b)
            techBlogger.subs()
            techBlogger.checkIsHappy()
            setupData()
        }
    }







}

