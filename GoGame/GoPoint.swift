import Foundation

public enum GoPoint: CustomStringConvertible {
    case Black(Int, Int)
    case White(Int, Int)
    case Empty
    
    public var description : String {
        get {
            switch(self) {
                case .Black:
                    return "Black"
                case .White:
                    return "White"
                case .Empty:
                    return "Empty"
            }
        }
    }
}        