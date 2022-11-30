import Foundation
import Combine

public final class ProfileViewModel: ObservableObject {
    @Published var count: Int = 0

    let userIdentifier: String

    private let dependencies: InjectedDependencies

    public init(userIdentifier: String, dependencies: InjectedDependencies) {
        self.userIdentifier = userIdentifier
        self.dependencies = dependencies
    }

    func update() {
        count = dependencies.chat.countMessages(of: userIdentifier)
    }
}
