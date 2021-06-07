import GameplayKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        PlayAgainButton.isHidden = true
        AppSign.isHidden = true
    }

    @IBOutlet weak var RobotSign: UILabel!
    @IBOutlet weak var StateText: UILabel!
    @IBOutlet weak var AppSign: UIButton!
    @IBOutlet weak var GameButtonStack: UIStackView!
    @IBOutlet weak var PlayAgainButton: UIButton!
    @IBAction func RockPressed(_ sender: Any) {
        let random = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let playerTurn = Sign(rawValue: 0)!
        let computerTurn = Sign(rawValue: random.nextInt())
        let res = calculateState(playerTurn: playerTurn, computerTurn: computerTurn!)
        switch res{
        case .Win:
            StateText.text = "You Won!"
        case .Loss:
            StateText.text = "You Lost!"
        case .Draw:
            StateText.text = "Draw!"
        }
        PlayAgainButton.isHidden = false
        GameButtonStack.isHidden = true
        AppSign.isHidden = false
        RobotSign.text = "\(computerTurn!.Describe())"
        
    }
    @IBAction func PaperPressed(_ sender: Any) {
        let random = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let playerTurn = Sign(rawValue: 1)!
        let computerTurn = Sign(rawValue: random.nextInt())
        let res = calculateState(playerTurn: playerTurn, computerTurn: computerTurn!)
        switch res{
        case .Win:
            StateText.text = "You Won!"
        case .Loss:
            StateText.text = "You Lost!"
        case .Draw:
            StateText.text = "Draw!"
        }
        PlayAgainButton.isHidden = false
        GameButtonStack.isHidden = true
        AppSign.isHidden = false
        RobotSign.text = "\(computerTurn!.Describe())"
    }
    
    @IBAction func ScissorsPressed(_ sender: Any) {
        let random = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let playerTurn = Sign(rawValue: 2)!
        let computerTurn = Sign(rawValue: random.nextInt())
        let res = calculateState(playerTurn: playerTurn, computerTurn: computerTurn!)
        switch res{
        case .Win:
            StateText.text = "You Won!"
        case .Loss:
            StateText.text = "You Lost!"
        case .Draw:
            StateText.text = "Draw!"
        }
        PlayAgainButton.isHidden = false
        GameButtonStack.isHidden = true
        AppSign.isHidden = false
        RobotSign.text = "\(computerTurn!.Describe())"
    }
    
    
    @IBAction func PlayAgainPressed(_ sender: Any) {
        PlayAgainButton.isHidden = true
        GameButtonStack.isHidden = false
        AppSign.isHidden = true
        RobotSign.text = "🤖"
        StateText.text = "Rock, Paper, Scissors?"
    }
}

