
import Foundation
import GameplayKit

enum Sign: Int{
    case rock
    case paper
    case scissors
    
    func Describe() -> String{
        switch self{
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
}

enum GameState: Int{
    case Win
    case Loss
    case Draw
    
    func Describe() -> String{
        switch self {
        case .Win:
            return "You Won"
        case .Loss:
            return "You Lost"
        case .Draw:
            return "Draw"
        }
    }
    
}

func calculateState(playerTurn:Sign, computerTurn:Sign) -> GameState{
    switch playerTurn{
    case .rock:
        switch computerTurn{
        case .rock:
            return GameState(rawValue: 2)!
        case .paper:
            return GameState(rawValue: 1)!
        case .scissors:
            return GameState(rawValue: 0)!
        }
    case .paper:
        switch computerTurn{
        case .rock:
            return GameState(rawValue: 0)!
        case .paper:
            return GameState(rawValue: 2)!
        case .scissors:
            return GameState(rawValue: 1)!
        }
    case .scissors:
        switch computerTurn{
        case .rock:
            return GameState(rawValue: 1)!
        case .paper:
            return GameState(rawValue: 0)!
        case .scissors:
            return GameState(rawValue: 2)!
        }
    }
}


