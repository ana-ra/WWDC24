//
//  File.swift
//  
//
//  Created by Silvana Rodrigues Alves on 22/02/24.
//
import Foundation
import AVFoundation

class AnimationViewModel: ObservableObject {
    var audioPlayer: AVAudioPlayer?
    
    func setupAndStartAudio(fileName: String, fileType: String) {
        guard let soundURL = Bundle.main.url(forResource: fileName, withExtension: fileType) else {
            print("File not found")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.numberOfLoops = -1 // Loop infinito
            audioPlayer?.play()
        } catch {
            print("Não foi possível configurar o player de áudio: \(error)")
        }
    }
    
    func stopAudio() {
        audioPlayer?.stop()
    }
}
