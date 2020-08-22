//
//  ViewController.swift
//  SampleMusicPlayer
//
//  Created by Cem Kazım on 22.08.2020.
//  Copyright © 2020 Cem Kazım. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func soundFiles() {
        let bundle = Bundle.main
        guard let sound = bundle.path(forResource: "my_song", ofType: "wav") else { return }
        do {
            print("sound found\n")
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        } catch {
            print("sound not found\n")
        }
    }
    
    @IBAction func playButtonClicked(_ sender: UIButton) {
        soundFiles()
        audioPlayer.play()
    }
}

