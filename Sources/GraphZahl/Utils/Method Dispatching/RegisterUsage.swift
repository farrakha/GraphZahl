// This file was automatically generated and should not be edited.

import Foundation
import CContext
import Runtime

enum IntArgument {
    case int8(Int8)
    case int16(Int16)
    case int32(Int32)
    case int(Int)
    case pointer(UnsafeMutableRawPointer)

    var value: Int {
        switch self {
        case .int8(let value):
            return Int(from: value)
        case .int16(let value):
            return Int(from: value)
        case .int32(let value):
            return Int(from: value)
        case .int(let value):
            return Int(from: value)
        case .pointer(let value):
            return Int(from: value)
        }
    }
}

enum IntResult {
    case int8(UnsafeMutablePointer<Int8>)
    case int16(UnsafeMutablePointer<Int16>)
    case int32(UnsafeMutablePointer<Int32>)
    case int(UnsafeMutablePointer<Int>)

    func decode(_ int: Int) {
        switch self {
        case .int8(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int8.self) }
        case .int16(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int16.self) }
        case .int32(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int32.self) }
        case .int(let pointer):
            pointer.pointee = withUnsafeBytes(of: int) { $0.baseAddress!.load(as: Int.self) }
        }
    }
}

enum FloatArgument {
    case float(Float)
    case double(Double)

    var value: Double {
        switch self {
        case .float(let value):
            return Double(from: value)
        case .double(let value):
            return Double(from: value)
        }
    }
}

extension FloatArgument {

    func intArgument() -> IntArgument {
        switch self {
        case .double(let double):
            return .int(Int(bitPattern: UInt(double.bitPattern)))
        case .float(let float):
            return .int32(Int32(bitPattern: float.bitPattern))
        }
    }

}

enum FloatResult {
    case float(UnsafeMutablePointer<Float>)
    case double(UnsafeMutablePointer<Double>)

    func decode(_ double: Double) {
        switch self {
        case .float(let pointer):
            pointer.pointee = Float(double)
        case .double(let pointer):
            pointer.pointee = Double(double)
        }
    }
}

extension FloatResult {

    func intResult() -> IntResult {
        switch self {
        case .double(let pointer):
            return pointer.withMemoryRebound(to: Int.self, capacity: 1) { .int($0) }
        case .float(let pointer):
            return pointer.withMemoryRebound(to: Int32.self, capacity: 1) { .int32($0) }
        }
    }

}

enum FunctionArgument {
    case int(IntArgument)
    case float(FloatArgument)
}

extension FunctionArgument {

    func intArgument() -> FunctionArgument {
        switch self {
        case .int:
            return self
        case .float(let float):
            return .int(float.intArgument())
        }
    }

}

enum FunctionResult {
    case int(IntResult)
    case float(FloatResult)
}

extension FunctionResult {

    func intResult() -> FunctionResult {
        switch self {
        case .int:
            return self
        case .float(let float):
            return .int(float.intResult())
        }
    }

}


struct FunctionResultDecoder {
    let type: Any.Type
    let pointer: UnsafeRawBufferPointer
    let results: [FunctionResult]

    func decode() throws -> Any {
        if type == Void.self {
            return ()
        }
        
        return pointer.baseAddress!.unsafeLoad(as: type)
    }
}

func resolveArguments(for value: Any, using type: Any.Type, isNil: Bool = false) throws -> [FunctionArgument] {
    if type == Bool.self {
        if isNil {
            return [.int(.int8(2))]
        }
        return [.int(.int8(value as! Bool ? 1 : 0))]
    }
    if type == Int8.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int8(value as! Int8))]
    }
    if type == Int16.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int16(value as! Int16))]
    }
    if type == Int32.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int32(value as! Int32))]
    }
    if type == Int.self {
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.int(value as! Int))]
    }
    if type == Float.self {
        if isNil {
            return [.float(.double(0))]
        }
        return [.float(.float(value as! Float))]
    }
    if type == Double.self {
        if isNil {
            return [.float(.double(0))]
        }
        return [.float(.double(value as! Double))]
    }

    // Special cases
    if type == String.self {
        if isNil {
            return [.int(.int(0)), .int(.int(0))]
        }
        let bytes = withUnsafeBytes(of: value as! String) { $0.bindMemory(to: Int.self) }
        return Array(bytes).map { .int(.int($0)) }
    }
    if type == UUID.self {
        if isNil {
            return [.int(.int(0))]
        }
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<UUID>.size, alignment: MemoryLayout<UUID>.size)
        pointer.storeBytes(of: value as! UUID, as: UUID.self)
        return [.int(.pointer(pointer))]
    }

    let (mangledName, kind, genericTypes, properties) = try typeInfo(of: type, .mangledName, .kind, .genericTypes, .properties)

    // More special cases
    if mangledName == "Array" {
        if isNil {
            return [.int(.int(0))]
        }
        let int = withUnsafeBytes(of: value) { $0.bindMemory(to: Int.self).baseAddress!.pointee }
        return [.int(.int(int))]
    }

    switch kind {
    case .class:
        if isNil {
            return [.int(.int(0))]
        }
        return [.int(.pointer(Unmanaged.passUnretained(value as AnyObject).toOpaque()))]
    case .optional:
        let actualType = genericTypes.first!
        let isNil = try isNil || isValueNil(value: value, type: actualType)

        if actualType == Bool.self || actualType == String.self || actualType == UUID.self {
            return try resolveArguments(for: value, using: actualType, isNil: isNil)
        }

        let (kind, mangledName) = try typeInfo(of: actualType, .kind, .mangledName)
        if  kind == .class || mangledName == "Array" {
            return try resolveArguments(for: value, using: actualType, isNil: isNil)
        }

        return try resolveArguments(for: value, using: actualType, isNil: isNil).map { $0.intArgument() } + [.int(.int8(isNil ? 1 : 0))]
    case .enum:
        if isNil {
            return [.int(.int8(0))]
        }
        return [.int(.int8(withUnsafeBytes(of: value) { $0.bindMemory(to: Int8.self).baseAddress!.pointee }))]
    default:
        return try properties.flatMap { try resolveArguments(for: isNil ? 0 : $0.get(from: value), using: $0.type, isNil: isNil) }
    }
}

func resolveResults(for type: Any.Type, pointer: UnsafeMutableRawPointer) throws -> ([FunctionResult], Int) {
    if type == Bool.self {
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Bool>.stride)
    }
    if type == Int8.self {
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Int8>.stride)
    }
    if type == Int16.self {
        return ([.int(.int16(pointer.assumingMemoryBound(to: Int16.self)))], MemoryLayout<Int16>.stride)
    }
    if type == Int32.self {
        return ([.int(.int32(pointer.assumingMemoryBound(to: Int32.self)))], MemoryLayout<Int32>.stride)
    }
    if type == Int.self {
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.stride)
    }
    if type == Float.self {
        return ([.float(.float(pointer.assumingMemoryBound(to: Float.self)))], MemoryLayout<Float>.stride)
    }
    if type == Double.self {
        return ([.float(.double(pointer.assumingMemoryBound(to: Double.self)))], MemoryLayout<Double>.stride)
    }

    // Special cases
    if type == String.self {
        return (
            [
                .int(.int(pointer.assumingMemoryBound(to: Int.self))),
                .int(.int(pointer.advanced(by: MemoryLayout<Int>.size).assumingMemoryBound(to: Int.self))),
            ],
            MemoryLayout<String>.stride
        )
    }
    if type == UUID.self {
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.stride)
    }

    let (mangledName, kind, genericTypes, properties, stride) = try typeInfo(of: type, .mangledName, .kind, .genericTypes, .properties, .stride)

    // More special cases
    if mangledName == "Array" {
         return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.stride)
    }

    switch kind {
    case .class:
        return ([.int(.int(pointer.assumingMemoryBound(to: Int.self)))], MemoryLayout<Int>.size)
    case .optional:
        if genericTypes.first == Bool.self || genericTypes.first == String.self || genericTypes.first == UUID.self {
            return try resolveResults(for: genericTypes.first!, pointer: pointer)
        }

        if isPrimitive(type: genericTypes.first!) {
            let actualType = genericTypes.first!
            let (result, offset) = try resolveResults(for: actualType, pointer: pointer)
            return (result.map { $0.intResult() } + [.int(.int8(pointer.advanced(by: offset).assumingMemoryBound(to: Int8.self)))], stride)
        }

        let (kind, mangledName) = try typeInfo(of: genericTypes.first!, .kind, .mangledName)
        if  kind == .class || mangledName == "Array" {
            return try resolveResults(for: genericTypes.first!, pointer: pointer)
        }

        // TODO: Refactor to use allow enum layouts: https://github.com/apple/swift/blob/master/docs/ABI/TypeLayout.rst#fragile-enum-layout

        let actualType = genericTypes.first!
        let (result, _) = try resolveResults(for: actualType, pointer: pointer.advanced(by: 1))
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))] + result.map { $0.intResult() }, stride)
    case .enum:
        // TODO: Refactor to use more complex layouts: https://github.com/apple/swift/blob/master/docs/ABI/TypeLayout.rst#fragile-enum-layout
        return ([.int(.int8(pointer.assumingMemoryBound(to: Int8.self)))], MemoryLayout<Int8>.stride)
    default:
        return try properties.reduce(([], 0)) { accumulator, property in
            let (results, offset) = try resolveResults(for: property.type, pointer: pointer.advanced(by: accumulator.1))
            return (accumulator.0 + results, accumulator.1 + offset)
        }
    }
}

func resolveDecoder(for type: Any.Type) throws -> FunctionResultDecoder {
    let (size, stride, alignment) = try typeInfo(of: type, .size, .stride, .alignment)

    let pointer = UnsafeMutableRawBufferPointer.allocate(byteCount: size + 1, alignment: alignment)
    let (results, offset) = try resolveResults(for: type, pointer: pointer.baseAddress!)
    assert(size <= offset && offset <= stride)

    return FunctionResultDecoder(type: type,
                                 pointer: UnsafeRawBufferPointer(pointer),
                                 results: results.ordered())
}

extension Sequence where Element == FunctionArgument {

    func ordered() -> [FunctionArgument] {
        return sorted { lhs, rhs in
            switch (lhs, rhs) {
            case (.int, .float):
                return true
            case (.int, .int), (.float, .float), (.float, .int):
                return false
            }
        }
    }

}

extension Sequence where Element == FunctionResult {

    func ordered() -> [FunctionResult] {
        return sorted { lhs, rhs in
            switch (lhs, rhs) {
            case (.int, .float):
                return true
            case (.int, .int), (.float, .float), (.float, .int):
                return false
            }
        }
    }

}

extension Int {

    fileprivate init<T>(from transformable: T) {
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<Int>.size, alignment: MemoryLayout<Int>.alignment)
        pointer.storeBytes(of: transformable, as: T.self)
        self = pointer.load(as: Int.self)
    }

}

extension Double {

    fileprivate init<T>(from transformable: T) {
        let pointer = UnsafeMutableRawPointer.allocate(byteCount: MemoryLayout<Double>.size, alignment: MemoryLayout<Double>.alignment)
        pointer.storeBytes(of: transformable, as: T.self)
        self = pointer.load(as: Double.self)
    }

}

private func isPrimitive(type: Any.Type) -> Bool {
    if type == Bool.self {
        return true
    }
    if type == Int8.self {
        return true
    }
    if type == Int16.self {
        return true
    }
    if type == Int32.self {
        return true
    }
    if type == Int.self {
        return true
    }
    if type == Float.self {
        return true
    }
    if type == Double.self {
        return true
    }

    return false
}

private func isValueNil(value: Any, type: Any.Type) throws -> Bool {
    if value is NSNull && type != NSNull.self {
        return true
    }

    let size = try typeInfo(of: type, .size)

    let bytes = withUnsafeBytes(of: value) { $0.baseAddress!.assumingMemoryBound(to: Int8.self) }

    // Check that every value is zero
    guard UnsafeBufferPointer<Int8>(start: bytes, count: size).allSatisfy({ $0 == 0 }) else { return false }

    // Check that the byte at the end is not zero
    guard bytes.advanced(by: size).pointee != 0 else { return false }

    return true
}
