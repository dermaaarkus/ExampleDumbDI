import Foundation
import Profile

final class ContentViewModel {

    let profileViewModel: ProfileViewModel

    init() {
        profileViewModel = ProfileViewModel(
            userIdentifier: "john.appleseed",
            dependencies: Profile.InjectedDependencies()
        )
    }
}
