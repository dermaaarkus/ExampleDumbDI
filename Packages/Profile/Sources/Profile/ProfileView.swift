import Foundation
import SwiftUI

public struct ProfileView: View {
    @ObservedObject private var viewModel: ProfileViewModel

    public init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        Text(verbatim: "\(viewModel.userIdentifier) has \(viewModel.count) unread messages")
            .onAppear {
                viewModel.update()
            }
    }
}

#if targetEnvironment(simulator)
struct ProfileView_Previews: PreviewProvider {
    private static var viewModel = ProfileViewModel(
        userIdentifier: "john.appleseed",
        dependencies: .mock
    )

    static var previews: some View {
        ProfileView(viewModel: viewModel)
            .previewLayout(PreviewLayout.sizeThatFits)
            .padding()
            .previewDisplayName("Default preview")
    }
}
#endif
