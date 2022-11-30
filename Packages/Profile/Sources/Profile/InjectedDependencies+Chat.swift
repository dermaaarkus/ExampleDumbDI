import Foundation

public protocol Chat {
    func countMessages(of userIdentifier: String) -> Int
}

#if targetEnvironment(simulator)
struct ChatMock: Chat {
    func countMessages(of userIdentifier: String) -> Int {
        0
    }
}
#endif
