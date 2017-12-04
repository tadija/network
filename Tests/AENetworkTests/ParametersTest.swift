/**
 *  https://github.com/tadija/AENetwork
 *  Copyright (c) Marko Tadić 2017
 *  Licensed under the MIT license. See LICENSE file.
 */

import XCTest
@testable import AENetwork

class ParametersTests: XCTestCase {

    func testParameters() {
        guard let url = URL(string: "https://httpbin.org") else {
            return
        }

        let parameters = [
            "foo" : "bar",
            "bar" : "foo"
        ]
        let urlWithParameters = url.addingParameters(parameters)

        let bar = urlWithParameters?.parameterValue(forKey: "foo")
        let foo = urlWithParameters?.parameterValue(forKey: "bar")

        if bar == "bar" && foo == "foo" {
            XCTAssert(true)
        } else {
            XCTAssert(false)
        }
    }

    static var allTests : [(String, (ParametersTests) -> () throws -> Void)] {
        return [
            ("testParameters", testParameters)
        ]
    }

}
