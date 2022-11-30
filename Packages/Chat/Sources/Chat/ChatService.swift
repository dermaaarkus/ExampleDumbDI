import Foundation

public struct ChatService {

    public init() { }

    public func countNumberOfMessages(for userIdentifier: String) -> Int {
        Int.random(in: 0..<100)
    }
}
