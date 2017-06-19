//
//  CommandWrapper.swift
//  CommandLineArgs
//
//  Created by Benoit BRIATTE on 19/06/2017.
//

import Foundation

class CommandWrapper: Command {

    private let handler: CommandHandler

    public init(handler: @escaping CommandHandler) {
        self.handler = handler
    }

    public func run(_ arguments: [String : Any]) throws {
        try self.handler(arguments)
    }
}
