// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to send point on the map. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - latitude: Latitude of the location
    ///     - longitude: Longitude of the location
    ///     - live_period: Period in seconds for which the location will be updated (see Live Locations, should be between 60 and 86400.
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
    /// - Returns: Future<Message>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#sendlocation>

    public struct SendLocationParams: JSONEncodable {
        var chatId: ChatId
        var latitude: Float
        var longitude: Float
        var livePeriod: Int?
        var disableNotification: Bool?
        var replyToMessageId: Int?
        var replyMarkup: ReplyMarkup?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case livePeriod = "live_period"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, latitude: Float, longitude: Float, livePeriod: Int? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.latitude = latitude
            self.longitude = longitude
            self.livePeriod = livePeriod
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    public func sendLocation(params: SendLocationParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendLocation", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}
