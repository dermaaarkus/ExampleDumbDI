import Foundation
import Profile
import Chat

extension ProfileAdapter: Profile.Chat {
    func countMessages(of userIdentifier: String) -> Int {
        // Note that the exact naming doesn't need to match.
        ChatService().countNumberOfMessages(for: userIdentifier)
    }
}
