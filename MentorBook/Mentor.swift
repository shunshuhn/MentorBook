//
//  Mentor.swift
//  MentorBook
//
//  Created by 伊藤　陽香 on 2020/09/13.
//  Copyright © 2020 伊藤　陽香. All rights reserved.
//

import UIKit

class  Mentor{
    
    var name: String!  //メンター名
    var course: String! //コース名
    var imageName: String! //顔写真(画像の名前)
    
    //初期化　引数でメンター名、担当コース、顔写真をもらって設定
    init(name: String, imageName: String, course:String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
