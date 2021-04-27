//
//  MusicLibraryViewController.swift
//  ZooLights2
//
//  Created by Catherine Fiore on 3/18/21.
//

import AVFoundation
import AVKit
import UIKit


public class MusicLibraryViewController: UIViewController {
    
    @IBOutlet var button0: UIButton!
    @IBOutlet var button: UIButton!
    @IBOutlet var button2: UIButton!
    
    @IBOutlet weak var SongName: UILabel!
    @IBOutlet weak var nowPlaying: UILabel!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var volume: UISlider!
    @IBOutlet weak var Progress: UISlider!
    var timer = Timer()
    
    
   
    public var player: AVAudioPlayer?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        pauseButton.isHidden = true
        volume.value = 0.8
        Progress.value = 0.0
        Progress.isEnabled = false
        nowPlaying.isHidden = true
        SongName.isHidden = true
    
            

    }
    
    
//adjust music
    @IBAction func ChangeVolume(_ sender: UISlider) {
        player?.volume = volume.value
    }
    
    //adjust location in song
    @IBAction func ChangeAudioTime(_ sender: UISlider) {
        player?.stop()
        player?.currentTime = TimeInterval(Progress.value)
        player?.prepareToPlay()
        player?.play()
    }
    
 
    @objc func updateSlider(){
        Progress.value = Float(player?.currentTime ?? 30)
        NSLog("HI")
        NSLog("\(Progress.value)")
        if ((player?.isPlaying) == true){
            NSLog("playing")
            playButton.isHidden = true
            pauseButton.isHidden = false
        }
    
        else{
            NSLog("no music")
                playButton.isHidden = false
                pauseButton.isHidden = true
                nowPlaying.isHidden = true
                SongName.isHidden = true
        }
    }
    
    //play and plause music
    @IBAction func pauseMusic(){
        if let player = player, player.isPlaying{
            //stop playback
            //button.setTitle("Play", for: .normal)
            playButton.isHidden = false
            pauseButton.isHidden = true
            player.pause()
        }
    
        else{
                //play function on our player
            player?.play()
            if let player = player, player.isPlaying{
                playButton.isHidden = true
                pauseButton.isHidden = false
                nowPlaying.isHidden = false
                SongName.isHidden = false
            }

        }
    }
    
    
    //play second song
   @IBAction func didTapButton(){
        playButton.isHidden = true
        pauseButton.isHidden = false
        nowPlaying.isHidden = false
        SongName.isHidden = false
        self.SongName.text = "Area Music: Slow"
                //button.setTitle("Stop", for: .normal)
            let  urlString = Bundle.main.path(forResource: "PerfectOTS", ofType: "mp3")
            
            
            do{
                //global properties for session
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
            
                guard let urlString = urlString else{
                    return
                }
                
                //creates a player
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                //unwrap the player to make sure it was called properly
                guard let player = player else{
                    return
                }
                
                //play function on our player
                player.play()
                Progress.isEnabled = true
                Progress.maximumValue = Float(player.duration)
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(MusicLibraryViewController.updateSlider), userInfo: nil, repeats: true)
                
            }
            catch{
                print("something went wrong")
            }
    
  
    
    }
    
    //play first song
    @IBAction func didTapButton0(){
        playButton.isHidden = true
        pauseButton.isHidden = false
        nowPlaying.isHidden = false
        SongName.isHidden = false
        self.SongName.text = "Opening Soundtrack"
             //url string to audio file
             button.setTitle("Stop", for: .normal)
             let  urlString = Bundle.main.path(forResource: "Opening", ofType: "mp3")
             
             
             do{
                 //global properties for session
                 try AVAudioSession.sharedInstance().setMode(.default)
                 try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                 
             
                 guard let urlString = urlString else{
                     return
                 }
                 
                 //creates a player
                 player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                 
                 //unwrap the player to make sure it was called properly
                 guard let player = player else{
                     return
                 }
                 
                 //play function on our player
                 player.play()
                Progress.isEnabled = true
                Progress.maximumValue = Float(player.duration)
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(MusicLibraryViewController.updateSlider), userInfo: nil, repeats: true)
             }
             catch{
                 print("something went wrong")
             }
        
     }
    
    //play last song
    @IBAction func didTapButton2(){
            playButton.isHidden = true
            pauseButton.isHidden = false
        nowPlaying.isHidden = false
        SongName.isHidden = false
        self.SongName.text = "Area Music: Night"
             //url string to audio file
             button.setTitle("Stop", for: .normal)
             let  urlString = Bundle.main.path(forResource: "JungleAdventure", ofType: "mp3")
             
             
             do{
                 //global properties for session
                 try AVAudioSession.sharedInstance().setMode(.default)
                 try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                 
             
                 guard let urlString = urlString else{
                     return
                 }
                 
                 //creates a player
                 player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                 
                 //unwrap the player to make sure it was called properly
                 guard let player = player else{
                     return
                 }
                 
                 //play function on our player
                 player.play()
                Progress.isEnabled = true
                Progress.maximumValue = Float(player.duration)
                timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(MusicLibraryViewController.updateSlider), userInfo: nil, repeats: true)
             }
             catch{
                 print("something went wrong")
             }

     }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
