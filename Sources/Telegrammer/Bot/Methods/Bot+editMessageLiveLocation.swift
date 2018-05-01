// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to edit live location messages sent by the bot or via the bot (for inline bots). A location can be edited until its live_period expires or editing is explicitly disabled by a call to stopMessageLiveLocation. On success, if the edited message was sent by the bot, the edited Message is returned, otherwise True is returned.
    /// - Parameters:
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    ///     - latitude: Latitude of new location
    ///     - longitude: Longitude of new location
    ///     - reply_markup: A JSON-serialized object for a new inline keyboard.
    /// - Returns: Future<MessageOrBool>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#editmessagelivelocation>

    public struct EditMessageLiveLocationParams: JSONEncodable {
        var chatId: ChatId?
        var messageId: Int?
        var inlineMessageId: String?
        var latitude: Float
        var longitude: Float
        var replyMarkup: InlineKeyboardMarkup?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case messageId = "message_id"
            case inlineMessageId = "inline_message_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId? = nil, messageId: Int? = nil, inlineMessageId: String? = nil, latitude: Float, longitude: Float, replyMarkup: InlineKeyboardMarkup? = nil) {
            self.chatId = chatId
            self.messageId = messageId
            self.inlineMessageId = inlineMessageId
            self.latitude = latitude
            self.longitude = longitude
            self.replyMarkup = replyMarkup
        }
    }

    public func editMessageLiveLocation(params: EditMessageLiveLocationParams) throws -> Future<MessageOrBool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<MessageOrBool>>
        response = try client.respond(endpoint: "editMessageLiveLocation", body: body, headers: headers)
        return response.flatMap(to: MessageOrBool.self) { try self.wrap($0) }
    }
}
