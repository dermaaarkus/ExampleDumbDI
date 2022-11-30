import XCTest
@testable import Profile

final class ProfileViewModelTests: XCTestCase {
    func testExample() throws {
        // given
        let count = 42
        let viewModel = ProfileViewModel(
            userIdentifier: "mockUserIdentifier",
            dependencies: .makeMock(chat: ChatServiceMock(count: count))
        )

        // when
        viewModel.update()

        // then
        XCTAssertEqual(viewModel.count, count)
    }
}

// MARK: -

private struct ChatServiceMock: Chat {
    let count: Int

    func countMessages(of userIdentifier: String) -> Int {
        return count
    }
}
