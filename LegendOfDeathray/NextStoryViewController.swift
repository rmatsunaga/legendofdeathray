//
//  NextStoryViewController.swift
//  LegendOfDeathray
//
//  Created by Rey Matsunaga on 2/20/19.
//  Copyright © 2019 Rey Matsunaga. All rights reserved.
//

import UIKit

class NextStoryViewController: UIViewController {
    var story: Bool? {
        didSet {
            if story! {
                layoutFight()
            } else {
                layoutGiveUp()
            }
        }
    }
    
    let giveUp: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        return button
    }()
    let fight: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        return button
    }()
    let introPicture: UIImageView = {
        let introPicture = UIImageView()
        introPicture.translatesAutoresizingMaskIntoConstraints = false
        introPicture.contentMode = .scaleAspectFill
        introPicture.backgroundColor = .magenta
        
        return introPicture
    }()
    let textView: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(introPicture)
        view.addSubview(textView)
        view.addSubview(giveUp)
        view.addSubview(fight)
    }
    
    func layoutFight() {
        introPicture.image = UIImage.init(named: "success")
        textView.text = "He fought and became a software engineer and the greatest power head with crazy freezes"
        giveUp.setTitle("YOU DID IT BABY", for: .normal)
        fight.setTitle("BOONK GANG", for: .normal)
    }
    func layoutGiveUp() {
        introPicture.image = UIImage.init(named: "failure")
        textView.text = "He became wack and only did footwork and toprock. A few freezes but it isn't much"
        giveUp.setTitle("ayah much disappointment ...", for: .normal)
        fight.setTitle("go die", for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        // AutoLayout
        introPicture.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        introPicture.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        introPicture.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        introPicture.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -1 * view.frame.height / 2).isActive = true
        
        textView.topAnchor.constraint(equalTo: introPicture.bottomAnchor, constant: 5).isActive = true
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        
        giveUp.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 5).isActive = true
        giveUp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        giveUp.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        fight.topAnchor.constraint(equalTo: giveUp.bottomAnchor, constant: 5).isActive = true
        fight.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fight.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
        
}
