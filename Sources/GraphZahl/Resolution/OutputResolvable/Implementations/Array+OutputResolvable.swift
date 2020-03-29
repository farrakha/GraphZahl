
import Foundation
import GraphQL
import NIO
import ContextKit

extension Array: OutputResolvable where Element: OutputResolvable {

    public static var additionalArguments: [String : InputResolvable.Type] {
        return Element.additionalArguments
    }

    public static func reference(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLList(try Element.reference(using: &context)))
    }

    public static func resolve(using context: inout Resolution.Context) throws -> GraphQLOutputType {
        return GraphQLNonNull(GraphQLList(try context.resolve(type: Element.self)))
    }

    public func resolve(source: Any,
                        arguments: [String : Map],
                        context: MutableContext,
                        eventLoop: EventLoopGroup) throws -> EventLoopFuture<Any?> {

        let futures = try map { try $0.resolve(source: source, arguments: arguments, context: context, eventLoop: eventLoop) }
        return Future.whenAllSucceed(futures, on: eventLoop.next()).map { $0 as Any? }
    }

}
