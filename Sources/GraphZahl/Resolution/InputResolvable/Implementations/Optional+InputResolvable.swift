
import Foundation
import GraphQL

extension Optional: ValueResolvable where Wrapped: ValueResolvable {

    public func map() throws -> Map {
        return try map { try $0.map() } ?? .null
    }

}

extension Optional: InputResolvable where Wrapped: InputResolvable {

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLInputType {
        guard let resolved = try context.resolve(type: Wrapped.self) as? GraphQLNonNull else { fatalError() }
        guard let type = resolved.ofType as? GraphQLInputType else { fatalError() }
        return type
    }

    public init(map: Map) throws {
        switch map {
        case .null:
            self = .none
        default:
            self = try Wrapped(map: map)
        }
    }
}

