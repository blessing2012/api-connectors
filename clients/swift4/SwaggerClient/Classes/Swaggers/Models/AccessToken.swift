//
// AccessToken.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AccessToken: Codable {

    public var id: String
    /** time to live in seconds (2 weeks by default) */
    public var ttl: Double?
    public var created: Date?
    public var userId: Double?


    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(ttl, forKey: "ttl")
        try container.encodeIfPresent(created, forKey: "created")
        try container.encodeIfPresent(userId, forKey: "userId")
    }

    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        id = try container.decode(String.self, forKey: "id")
        ttl = try container.decodeIfPresent(Double.self, forKey: "ttl")
        created = try container.decodeIfPresent(Date.self, forKey: "created")
        userId = try container.decodeIfPresent(Double.self, forKey: "userId")
    }
}
