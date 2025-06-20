import Foundation

class MockUserService: UserServiceProtocol {
    func fetchUser(completion: @escaping (Result<User, Error>) -> Void) {
        let user: User = MockJSONLoader.load("User", type: User.self)
        completion(.success(user))
    }
}
