class ServiceFactory {
    static func makeUserService() -> UserServiceProtocol {
        return AppConfig.mockEnabled ? MockUserService() : RealUserService()
    }
}
