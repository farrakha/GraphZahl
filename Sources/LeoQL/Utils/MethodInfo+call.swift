// This file was automatically generated and should not be edited.

import Runtime
import CContext


extension MethodInfo {

    func call(receiver: AnyObject, arguments: [Any]) throws -> Any {
        assert(arguments.count == self.arguments.count, "Argument count must correspond to original argument count")

        let arguments = try zip(arguments, self.arguments).flatMap { try resolveArguments(for: $0.0, using: $0.1.type) }.ordered()

        switch arguments.count {
        case 0:
            return try callWith0(receiver: receiver, arguments: arguments)
        case 1:
            return try callWith1(receiver: receiver, arguments: arguments)
        case 2:
            return try callWith2(receiver: receiver, arguments: arguments)
        case 3:
            return try callWith3(receiver: receiver, arguments: arguments)
        case 4:
            return try callWith4(receiver: receiver, arguments: arguments)
        case 5:
            return try callWith5(receiver: receiver, arguments: arguments)
        case 6:
            return try callWith6(receiver: receiver, arguments: arguments)
        case 7:
            return try callWith7(receiver: receiver, arguments: arguments)
        case 8:
            return try callWith8(receiver: receiver, arguments: arguments)
        case 9:
            return try callWith9(receiver: receiver, arguments: arguments)
        case 10:
            return try callWith10(receiver: receiver, arguments: arguments)
        case 11:
            return try callWith11(receiver: receiver, arguments: arguments)
        case 12:
            return try callWith12(receiver: receiver, arguments: arguments)
        case 13:
            return try callWith13(receiver: receiver, arguments: arguments)
        case 14:
            return try callWith14(receiver: receiver, arguments: arguments)
        default:
            fatalError("Calls with more than \(MethodInfo.maximumNumberOfArgumentsWithReflection) arguments are not allowed")
        }
    }

}

extension MethodInfo {

    private func callWith0(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
        ) {


        default:
            fatalError()
        }
    }
    private func callWith1(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
        ) {


        case (
            _
            , .int(let arg0)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value)


        case (
            _
            , .float(let arg0)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value)


        default:
            fatalError()
        }
    }
    private func callWith2(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value)


        default:
            fatalError()
        }
    }
    private func callWith3(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
            , .float(let arg2)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value)


        default:
            fatalError()
        }
    }
    private func callWith4(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value)


        default:
            fatalError()
        }
    }
    private func callWith5(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value)


        default:
            fatalError()
        }
    }
    private func callWith6(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value)


        default:
            fatalError()
        }
    }
    private func callWith7(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value)


        default:
            fatalError()
        }
    }
    private func callWith8(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        case (
            _
            , .float(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value)


        default:
            fatalError()
        }
    }
    private func callWith9(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
            , arguments[8]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value)


        case (
            _
            , .int(let arg0)
            , .float(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value)


        default:
            fatalError()
        }
    }
    private func callWith10(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
            , arguments[8]
            , arguments[9]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .float(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value)


        default:
            fatalError()
        }
    }
    private func callWith11(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
            , arguments[8]
            , arguments[9]
            , arguments[10]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .float(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value)


        default:
            fatalError()
        }
    }
    private func callWith12(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
            , arguments[8]
            , arguments[9]
            , arguments[10]
            , arguments[11]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
            , .float(let arg11)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value, arg11.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
            , .float(let arg11)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value, arg11.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .float(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
            , .float(let arg11)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value, arg11.value)


        default:
            fatalError()
        }
    }
    private func callWith13(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
            , arguments[8]
            , arguments[9]
            , arguments[10]
            , arguments[11]
            , arguments[12]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
            , .float(let arg11)
            , .float(let arg12)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value, arg11.value, arg12.value)


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .float(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
            , .float(let arg11)
            , .float(let arg12)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value, arg11.value, arg12.value)


        default:
            fatalError()
        }
    }
    private func callWith14(receiver: AnyObject, arguments: [FunctionArgument]) throws -> Any {
        switch (
            receiver
            , arguments[0]
            , arguments[1]
            , arguments[2]
            , arguments[3]
            , arguments[4]
            , arguments[5]
            , arguments[6]
            , arguments[7]
            , arguments[8]
            , arguments[9]
            , arguments[10]
            , arguments[11]
            , arguments[12]
            , arguments[13]
        ) {


        case (
            _
            , .int(let arg0)
            , .int(let arg1)
            , .int(let arg2)
            , .int(let arg3)
            , .int(let arg4)
            , .int(let arg5)
            , .float(let arg6)
            , .float(let arg7)
            , .float(let arg8)
            , .float(let arg9)
            , .float(let arg10)
            , .float(let arg11)
            , .float(let arg12)
            , .float(let arg13)
        ):
            let function = unsafeBitCast(address, to: (@convention(c) (Int, Int, Int, Int, Int, Int, Double, Double, Double, Double, Double, Double, Double, Double) -> Any).self)

            let selfPointer = Unmanaged.passUnretained(self).toOpaque()
            let receiverPointer = Unmanaged.passUnretained(receiver).toOpaque()
            set_self_pointer(receiverPointer)
            defer { set_self_pointer(selfPointer) }
            return function(arg0.value, arg1.value, arg2.value, arg3.value, arg4.value, arg5.value, arg6.value, arg7.value, arg8.value, arg9.value, arg10.value, arg11.value, arg12.value, arg13.value)


        default:
            fatalError()
        }
    }

}

extension MethodInfo {

    static let maximumNumberOfArgumentsWithReflection = 14

}
