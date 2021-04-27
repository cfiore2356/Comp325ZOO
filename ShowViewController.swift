//
//  ShowViewController.swift
//  ZooLights2
//
//  Created by Catherine Fiore on 3/18/21.
//

import UIKit
import AVFoundation
import AVKit


//class PopUp: UIViewController{
//
//    let controller = UIViewController()
//
//    @IBAction func close(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        controller.isModalInPresentation = true
//        self.present(controller, animated: true, completion: nil)
//    }
//}



class ShowViewController: UIViewController {
    

    @IBOutlet weak var grayOut: UIImageView!
    @IBOutlet weak var warning: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet var show1: UIImageView!
    @IBOutlet var show2: UIImageView!
    @IBOutlet var show3: UIImageView!
    @IBOutlet var show4: UIImageView!
    @IBOutlet var show5: UIImageView!
    @IBOutlet var show6: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    var showStatus = false
    var progress:Float = 0.0
    var timer = Timer()
    
    //Music
    //start stop is covered by start show
    public var player: AVAudioPlayer?
    
    
    
    @IBAction func playShow(_ sender: Any) {
        
        //lights declaring the pattern
        show1.animationImages = [#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "green"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "red"), #imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "orange")]
        show1.animationDuration = 10
        show1.animationRepeatCount = 2
        show2.animationImages = [#imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "black"),  #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "green"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "yellow")]
        show2.animationDuration = 10
        show2.animationRepeatCount = 2
        show3.animationImages = [#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "green"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "green"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "orange")]
        show3.animationDuration = 10
        show3.animationRepeatCount = 2
        show4.animationImages = [#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "orange"),#imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "green"), #imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "yellow")]
        show4.animationDuration = 10
        show4.animationRepeatCount = 2
        show5.animationImages = [#imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "black"),  #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "orange"),#imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "blue"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "orange")]
        show5.animationDuration = 10
        show5.animationRepeatCount = 2
        show6.animationImages = [#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "white"), #imageLiteral(resourceName: "orange"),#imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "yellow"), #imageLiteral(resourceName: "yellow"),  #imageLiteral(resourceName: "white"),#imageLiteral(resourceName: "black"), #imageLiteral(resourceName: "black"),#imageLiteral(resourceName: "blue"), #imageLiteral(resourceName: "red"), #imageLiteral(resourceName: "orange"),#imageLiteral(resourceName: "yellow")]
        show6.animationDuration = 10
        show6.animationRepeatCount = 2
    

        //lights run when pressed
        if ( showStatus == false){
            show1.startAnimating()
            show2.startAnimating()
            show3.startAnimating()
            show4.startAnimating()
            show5.startAnimating()
            show6.startAnimating()
            warning.textColor = .systemRed
            warning.backgroundColor = .black
            startButton.setTitle("Stop Show", for: .normal)
            showStatus = true
            grayOut.isHidden = true
            
        //play music
                let  urlString = Bundle.main.path(forResource: "Origami Birds", ofType: "mp3")
                
                
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
                }
                catch{
                    print("something went wrong")
                }
            
            
            
            //timer
            progress = 0.0
            progressView.progress = progress
            timer = Timer.scheduledTimer(withTimeInterval: 0.20, repeats: true, block: {(timer) in
            
                self.progress += 0.01
                self.progressView.progress = self.progress
                
            
                if self.progressView.progress == 1.0
                {
                    self.show1.stopAnimating()
                    self.show2.stopAnimating()
                    self.show3.stopAnimating()
                    self.show4.stopAnimating()
                    self.show5.stopAnimating()
                    self.show6.stopAnimating()
                    self.player?.stop()
                    
                    self.progressView.progress = 0.0
                    self.timer.invalidate()
                    self.showStatus = false
                    self.startButton.setTitle("Start Show", for: .normal)
                    self.warning.textColor = .clear
                    self.warning.backgroundColor = .clear
                    self.grayOut.isHidden = false
                    
                    //Music stop for show
                    if let player = self.player, player.isPlaying{
                        //stop playback
                        //button.setTitle("Play", for: .normal)
                        //playButton.setImage( for: .play.fill)
                        player.stop()
                    }
                }
               
            })
            
        }
        else{
            show1.stopAnimating()
            show2.stopAnimating()
            show3.stopAnimating()
            show4.stopAnimating()
            show5.stopAnimating()
            show6.stopAnimating()
            showStatus = false
            startButton.setTitle("Start Show", for: .normal)
            warning.textColor = .clear
            warning.backgroundColor = .clear
            progressView.progress = 0.0
            timer.invalidate()
            grayOut.isHidden = false
            
            
            //Music Force stop
            if let player = player, player.isPlaying{
                //stop playback
                //button.setTitle("Play", for: .normal)
                //playButton.setImage( for: .play.fill)
                player.stop()
            }

        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warning.textColor = .clear
        warning.backgroundColor = .clear
        progressView.progress = 0.0
        grayOut.isHidden = false
        // Do any additional setup after loading the view.
    }
    


}
