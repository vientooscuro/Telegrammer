// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a video file.

 SeeAlso Telegram Bot API Reference:
 [Video](https://core.telegram.org/bots/api#video)
 */
public final class Video: Codable {

    /// Custom keys for coding/decoding `Video` struct
    enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
        case fileUniqueId = "file_unique_id"
        case width = "width"
        case height = "height"
        case duration = "duration"
        case thumb = "thumb"
        case mimeType = "mime_type"
        case fileSize = "file_size"
    }

    /// Identifier for this file, which can be used to download or reuse the file
    public var fileId: String

    /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    public var fileUniqueId: String

    /// Video width as defined by sender
    public var width: Int

    /// Video height as defined by sender
    public var height: Int

    /// Duration of the video in seconds as defined by sender
    public var duration: Int

    /// Optional. Video thumbnail
    public var thumb: PhotoSize?

    /// Optional. Mime type of a file as defined by sender
    public var mimeType: String?

    /// Optional. File size
    public var fileSize: Int?


    public init (fileId: String, fileUniqueId: String, width: Int, height: Int, duration: Int, thumb: PhotoSize? = nil, mimeType: String? = nil, fileSize: Int? = nil) {
        self.fileId = fileId
        self.fileUniqueId = fileUniqueId
        self.width = width
        self.height = height
        self.duration = duration
        self.thumb = thumb
        self.mimeType = mimeType
        self.fileSize = fileSize
    }
}
