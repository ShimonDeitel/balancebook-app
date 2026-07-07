import SwiftUI

/// Unique visual identity for Balancebook - Barter Log.
enum Theme {
    static let accent = Color(red: 0.7804, green: 0.4902, blue: 0.1412)
    static let background = Color(red: 0.0902, green: 0.0627, blue: 0.0314)
    static let textPrimary = Color(red: 0.9843, green: 0.9451, blue: 0.8941)
    static let card = background.opacity(0.6)

    static let titleFont = Font.system(.title2, design: .serif).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)

    static func statusColor(_ status: String) -> Color {
        switch status {
        case "Owed to Me": return accent
        case "Settled": return .gray
        default: return accent.opacity(0.7)
        }
    }
}
