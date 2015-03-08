//
//  SoundPlayer.swift
//  MusicPhone
//
//  Created by Michael Kim on 3/8/15.
//  Copyright (c) 2015 Grant Mathews. All rights reserved.
//

import Foundation
import AVFoundation

class SoundPlayer {
    var soundArray = [AVPlayer]()
    
    // MARK: Public API
    func playSound() {
        var audioFilePath = NSBundle.mainBundle().pathForResource("piano1", ofType: "mp3")
        var audioFileURL = NSURL(fileURLWithPath: audioFilePath!)
        
        var soundPlayer = AVPlayer(URL: audioFileURL)
        self.soundArray.append(soundPlayer)
        
        soundPlayer.play()
    }
    
    // MARK: Private methods
}