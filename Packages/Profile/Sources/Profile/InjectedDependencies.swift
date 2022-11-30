import Foundation

public struct InjectedDependencies {
    public let chat: Chat

    public init(chat: Chat) {
        self.chat = chat
    }
}

#if targetEnvironment(simulator)
extension InjectedDependencies {
    static var mock: Self {
        makeMock()
    }

    static func makeMock(chat: Chat = ChatMock()) -> Self {
        .init(chat: chat)
    }
}
#endif
