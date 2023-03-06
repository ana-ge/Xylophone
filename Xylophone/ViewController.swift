import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName:sender.currentTitle!)
        
        //Reduces the opacity to half
        sender.alpha = 0.5
        
        //Executing code after 0.2s delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Removing the opacity 
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
