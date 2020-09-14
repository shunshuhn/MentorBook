//
//  ViewController.swift
//  MentorBook
//
//  Created by 伊藤　陽香 on 2020/09/13.
//  Copyright © 2020 伊藤　陽香. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courceLabel: UILabel!
    
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebD,WebS"))
        
        setUI()
    
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courceLabel.text = mentorArray[index].course
        
    }
    
    
    @IBAction func mae() {
        index = index - 1
        
        if index > 2 {
            index = 0
        }
        
        setUI()
    }
    
    @IBAction func tsugi() {
        index = index + 1
        
        if index > 2 {
            index = 0
        }
        setUI()
    }


}

