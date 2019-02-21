//
//  ViewController.swift
//  LegendOfDeathray
//
//  Created by Rey Matsunaga on 2/20/19.
//  Copyright © 2019 Rey Matsunaga. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    let introPicture: UIImageView = {
        let introPicture = UIImageView.init(image: UIImage.init(named: "deathrayIntro"))
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
    let giveUp: UIButton = {
        let button = UIButton()
        button.setTitle("Give Up", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(showStory), for: .touchUpInside)
        return button
    }()
    let fight: UIButton = {
        let button = UIButton()
        button.setTitle("Fight!", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(showStory), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Add Text
        textView.text = "A long time ago, there was a legendary powerhead named Deathray. He hailed from New York City but grew up in Tokyo and ended up coming up in the Pacific Northwest. People said his power was bitten from bboys like Wingzero simply because he was Japanese, so Deathray decided to fight for his name and become the next King of the Northwest. This is his story."
        view.addSubview(introPicture)
        view.addSubview(textView)
        view.addSubview(giveUp)
        view.addSubview(fight)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        // AutoLayout
        introPicture.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        introPicture.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        introPicture.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        introPicture.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -1 * view.frame.height / 2).isActive = true
        
        
        textView.topAnchor.constraint(equalTo: introPicture.bottomAnchor, constant: 5).isActive = true
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        
        giveUp.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 5).isActive = true
        giveUp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        giveUp.heightAnchor.constraint(equalToConstant: 20).isActive = true
        giveUp.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        fight.topAnchor.constraint(equalTo: giveUp.bottomAnchor, constant: 5).isActive = true
        fight.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fight.heightAnchor.constraint(equalToConstant: 20).isActive = true
        fight.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    @objc func showStory(sender: UIButton) {
        
        guard let title = sender.titleLabel?.text else { return }
        let nextStoryController = NextStoryViewController()
    
        if title == "Give Up" {
            nextStoryController.story = false
        } else {
            nextStoryController.story = true
            
        }
        navigationController?.pushViewController(nextStoryController, animated: true)

        

    }


}

