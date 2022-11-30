import Foundation
import Profile

struct ProfileAdapter {
}

extension Profile.InjectedDependencies {
    init() {
        let adapter = ProfileAdapter()

        self.init(chat: adapter)
    }
}


