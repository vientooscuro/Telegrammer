// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to move a sticker in a set created by the bot to a specific position . Returns True on success.
    /// - Parameters:
    ///     - sticker: File identifier of the sticker
    ///     - position: New sticker position in the set, zero-based
    /// - Returns: Future<Bool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#setstickerpositioninset>

    public struct SetStickerPositionInSetParams: JSONEncodable {
        var sticker: String
        var position: Int

        enum CodingKeys: String, CodingKey {
            case sticker = "sticker"
            case position = "position"
        }

        public init(sticker: String, position: Int) {
            self.sticker = sticker
            self.position = position
        }
    }

    public func setStickerPositionInSet(params: SetStickerPositionInSetParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "setStickerPositionInSet", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}
