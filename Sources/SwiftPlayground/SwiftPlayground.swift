// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import GRDB

struct Purchaser : Identifiable, Codable, FetchableRecord,
PersistableRecord {

    // The purchaser Id.
    let id: Int

    //the purchaser name.
    var name: String

    //the amount of people in the purchasers party.
    var count: Int

    // the name of the reserved table.
    var reservedTable: String

    enum CodingKeys: String, CodingKey {
        case id = "PurchaserID"
        case name = "Name"
        case count = "Count"
        case reservedTable = "ReservedTable"
    }
}


@main
struct SwiftPlayground {
    static func main() {
        let dbPath = "Sources/SwiftPlayground/cafe.db"
        do {
            let dbQueue = try DatabaseQueue(path: dbPath)
            print("Database connection successful")


            //Dump the schema to make sure we are connected
            // to the correct database file.
            try dbQueue.read { database in
                try database.dumpSchema()

                // Find a customer at the window seat.
                let windowSitter = Purchaser.filter(key: [
                    "ReservedTable": "Window Seat"
                ])
                print(windowSitter)
            }
        } catch {
            print(error)
        }
    }
}
