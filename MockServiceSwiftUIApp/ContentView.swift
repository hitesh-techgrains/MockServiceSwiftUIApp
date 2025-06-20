import SwiftUI

struct UserView: View {
    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        VStack(spacing: 20) {
            if let user = viewModel.user {
                Text("👋 Hello, \(user.name)")
                    .font(.title)
            } else {
                ProgressView("Loading User...")
            }
        }
        .padding()
    }
}
