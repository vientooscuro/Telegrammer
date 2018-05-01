// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to get a sticker set. On success, a StickerSet object is returned.
    /// - Parameters:
    ///     - name: Name of the sticker set
    /// - Returns: Future<StickerSet>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#getstickerset>

    public struct GetStickerSetParams: JSONEncodable {
        var name: String

        enum CodingKeys: String, CodingKey {
            case name = "name"
        }

        public init(name: String) {
            self.name = name
        }
    }

    public func getStickerSet(params: GetStickerSetParams) throws -> Future<StickerSet> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<StickerSet>>
        response = try client.respond(endpoint: "getStickerSet", body: body, headers: headers)
        return response.flatMap(to: StickerSet.self) { try self.wrap($0) }
    }
}
