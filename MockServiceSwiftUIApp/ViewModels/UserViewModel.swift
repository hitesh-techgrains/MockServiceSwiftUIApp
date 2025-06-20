import Foundation

class UserViewModel: ObservableObject {
    @Published var user: User?
    private var service: UserServiceProtocol

    init(service: UserServiceProtocol = ServiceFactory.makeUserService()) {
        self.service = service
        fetchUser()
    }

    func fetchUser() {
        service.fetchUser { [weak self] result in
            switch result {
            case .success(let user):
                DispatchQueue.main.async {
                    self?.user = user
                }
            case .failure(let error):
                print("Error fetching user: \(error)")
            }
        }
    }
}
