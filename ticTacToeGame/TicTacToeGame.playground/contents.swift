import Darwin


// TODO: Create the TicTacToeGame class
enum marktype : String{
    case x = "X"
    case o = "O"
    case none = "-"
    
}
enum GameState : String{
    case x_turn = "X's Turn"
    case o_turn = "O's Turn"
    case x_win = "X Wins!"
    case o_win = "O Wins!"
    case tie = "Tie!"
}
class TicTacToeGame : CustomStringConvertible{
    var description: String {
        return "\(state.rawValue)" + " \(getGameString())"
    }
    func getGameString(_ indicies: [Int] = [0,1,2,3,4,5,6,7,8]) -> String {
        var gameString = ""
        for mark in indicies{
            gameString += board[mark].rawValue
        }
        return gameString
    }
    var state: GameState
    var board: [marktype]
    init(){
//        self.board = [marktype]()
//        for _ in 0..<9{
//            board.append(marktype.none)
//        }
        board = [marktype](repeating: marktype.none, count: 9)
        state = .x_turn
    }
    func pressedSquareAt(at index: Int){
        if index < 0 || index > 9{
            print("Invalid index at \(index)")
            return
        }
        if board[index] != .none{
            print("It's not empty at \(index)")
            return
        }

        switch state{
            //need check for wins
        case .x_turn:
            board[index] = .x
            state = .o_turn
        case .o_turn:
            board[index] = .o
            state = .x_turn
        default:
            print("This game already finish! \(state.rawValue) No more moves allowed.")
            return
        }
       checkforwin()
    }
    func checkforwin(){
        var lineof3 = [String]()
        lineof3.append(getGameString([0, 1, 2]))
        lineof3.append(getGameString([3, 4, 5]))
        lineof3.append(getGameString([6, 7, 8]))
        
        lineof3.append(getGameString([0, 3, 6]))
        lineof3.append(getGameString([1, 4, 7]))
        lineof3.append(getGameString([2, 5, 8]))
        
        lineof3.append(getGameString([0, 4, 8]))
        lineof3.append(getGameString([2, 4, 6]))
        
        if lineof3.contains("XXX"){
            state = .x_win
            return
        }
        if lineof3.contains("OOO"){
            state = .o_win
            return
        }
        if !board.contains(.none){
//            print(lineof3)
            state = .tie
        }
    }
    
}

/* ----------------- Official Playground testing ----------------- */
var game = TicTacToeGame()
game.pressedSquareAt(at: 0)
game.pressedSquareAt(at: 1)
game.pressedSquareAt(at: 3)
game.pressedSquareAt(at: 2)
game.pressedSquareAt(at: 6)


var game2 = TicTacToeGame()
game2.board = [.x, .x, .o,
                .none, .none, .none,
                .o, .none, .none]
game2.pressedSquareAt(at: 8)
game2.pressedSquareAt(at: 4)


var game3 = TicTacToeGame()
game3.board = [.x, .x, .o,
    .o, .o, .x,
    .x, .o, .none]
game3.pressedSquareAt(at: 8)

