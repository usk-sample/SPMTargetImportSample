import Module1
import Module2

public struct SPMTargetImportSample {
    public private(set) var text = "Hello, World!"

    private let module1 = Module1()
    private let module2 = Module2()
    
    public init() {
    }
}
