//
//  TDD_exampleCardTests.swift
//  TDD-exampleTests
//
//  Created by Wilton Ramos on 01/10/21.
//

import XCTest
@testable import TDD_example

class TDD_exampleCardTests: XCTestCase {

    var sut: Card!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = try Card(message: "", color: .purple, qrCodeURL: "")
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testSetCardMessage() {
        // given
        let message = "This is a card message"
        // when
        sut.setMessage(message)
        // then
        XCTAssertEqual(sut.message, message, "Message was not set")
    }
    
    func testSetCardColor() {
        // given
        let greenColor = Card.Colors.green
        // when
        sut.setColor(.green)
        //then
        XCTAssertEqual(sut.color, greenColor, "Color was not changed")
    }
    
    func testSetCardQrCodeURL() {
        // given
        let qrCodeUrl = "myurl.com"
        // when
        sut.setQrCodeURL(qrCodeUrl)
        // then
        XCTAssertEqual(sut.qrCodeURL, qrCodeUrl, "The Qr Code URL was not set")
    }
    
    func testCardMessageLimitOf200Characteres() {
        let longMessage = String(repeating: "a", count: 201)
        XCTAssertThrowsError(try Card(message: longMessage, color: .green, qrCodeURL: "")) { error in
            XCTAssertEqual(error as! Card.ValidationError, Card.ValidationError.messageTooLong(messageLength: 201))
        }
    }

}
