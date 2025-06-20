import Foundation

class MockJSONLoader {
    static func load<T: Decodable>(_ filename: String, type: T.Type) -> T {
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            fatalError("Missing file: \(filename).json")
        }

        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Decoding error for \(filename): \(error)")
        }
    }
}
