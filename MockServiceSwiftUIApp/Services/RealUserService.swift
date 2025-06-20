import Foundation

class RealUserService: UserServiceProtocol {
    func fetchUser(completion: @escaping (Result<User, Error>) -> Void) {
        // Simulate real API call (you can replace with URLSession)
        let user = User(id: 100, name: "Real User")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(.success(user))
        }
    }
}
