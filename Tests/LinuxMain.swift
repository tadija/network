/**
 *  https://github.com/tadija/AENetwork
 *  Copyright (c) Marko Tadić 2017-2018
 *  Licensed under the MIT license. See LICENSE file.
 */

import XCTest
@testable import AENetworkTests

XCTMain([
    testCase(BackendTests.allTests),
    testCase(NetworkTests.allTests),
    testCase(ReachabilityTests.allTests),
    testCase(DownloaderTests.allTests),
    testCase(URLTests.allTests),
    testCase(URLRequestTests.allTests),
    testCase(HTTPURLResponseTests.allTests),
    testCase(StringTests.allTests),
    testCase(DataTests.allTests)
])
