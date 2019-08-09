// https://github.com/Quick/Quick

import Quick
import Nimble
import PHBApplying

class NSObjectSubClass: NSObject {
    var testValue: Int = 0
}

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("The apply method") {
            it("is available on NSObject types (this will fail to compile if the syntax is broken)") {
                let testObject = NSObjectSubClass()
                testObject.apply { _ in }
            }
            
            it("changes the receiver after being called") {
                let testObject = NSObjectSubClass()
                expect(testObject.testValue) == 0
                testObject.apply { object in
                    object.testValue = 1
                }
                expect(testObject.testValue) == 1
            }
        }
        
        describe("The applying method") {
            it("is available on NSObject types (this will fail to compile if the syntax is broken)") {
                let _ = NSObjectSubClass().applying { _ in }
            }
            
            it("returns the receiver (i.e. the return value is the object on which the method is called") {
                let receiver = NSObjectSubClass()
                let result = receiver.applying { _ in }
                expect(receiver) === result
            }
            
            it("applies the changes in the applier") {
                let testObject = NSObjectSubClass()
                expect(testObject.testValue) == 0
                expect(testObject.applying { $0.testValue = 1}.testValue) == 1
            }
            
            it("applies the changes in the applier to the receiver") {
                let receiver = NSObjectSubClass()
                expect(receiver.testValue) == 0
                
                let result = receiver.applying { $0.testValue = 2 }
                expect(result.testValue) == 2
                expect(receiver.testValue) == 2
            }
        }
    }
}
