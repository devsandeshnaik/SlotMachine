//
//  PlaySound.swift
//  Slot Machine
//
//  Created by Sandesh on 03/10/20.
//  Copyright © 2020 devsandesh. All rights reserved.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, ofType: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: ofType) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: CANNOT PLAY THE FILE AT GIVEN PATH RESOURCE")
        }
    }
}
