// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to send .webp stickers. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - sticker: Sticker to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a .webp file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
    /// - Returns: Future<Message>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#sendsticker>

    public struct SendStickerParams: MultipartEncodable {
        var chatId: ChatId
        var sticker: FileInfo
        var disableNotification: Bool?
        var replyToMessageId: Int?
        var replyMarkup: ReplyMarkup?

        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case sticker = "sticker"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, sticker: FileInfo, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.sticker = sticker
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    public func sendSticker(params: SendStickerParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Message>>
        response = try client.respond(endpoint: "sendSticker", body: body, headers: headers)
        return response.flatMap(to: Message.self) { try self.wrap($0) }
    }
}
