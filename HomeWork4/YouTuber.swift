//
//  YouTuber.swift
//  HomeWork4
//
//  Created by Sergey Yelmanov on 29.01.2018.
//  Copyright © 2018 Sergey Yelmanov. All rights reserved.
//

import Foundation

class YouTuber { //не судите строго) условия задания вроде выполнил, запушил чтобы понять в правильно ли я двигаюсь)
    let name: String
    var viewsCount: Int
    var subsCount: Int
    var isHappy: Bool
    private var canMakeMoneyFromVideos: Bool //в этот месяце YouTube ограничил возможность получать деньги с видосов)
                                            //чтобы получать деньги, надо иметь минимум 10к просмотов
    init(name: String,
         viewsCount: Int,
         subsCount: Int,
         isHappy: Bool = false,
         canMakeMoneyFromVideos: Bool = false) {

        self.name = name
        self.viewsCount = viewsCount
        self.subsCount = subsCount
        self.isHappy = isHappy
        self.canMakeMoneyFromVideos = canMakeMoneyFromVideos
    }

    func subs() { 
        subsCount = viewsCount / 10
    }

    func checkIsHappy() {
        getPaid()
        if canMakeMoneyFromVideos == true {
            isHappy = true
        } else {
            isHappy = false
        }
    }

    func views(_ number: Int) {
        viewsCount += number
    }

    private func getPaid() {
        if viewsCount > 10000 && subsCount > 1000 {
            canMakeMoneyFromVideos = true
        } else {
            canMakeMoneyFromVideos = false
        }
    }
    
}
