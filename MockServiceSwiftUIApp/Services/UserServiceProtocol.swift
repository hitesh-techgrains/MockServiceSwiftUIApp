import Foundation

protocol UserServiceProtocol {
    func fetchUser(completion: @escaping (Result<User, Error>) -> Void)
}
