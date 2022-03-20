// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3f37c9"></span>
  /// Alpha: 100% <br/> (0x3f37c9ff)
  internal static let deeppurple = UIColor(red: 63 / 255, green: 56 / 255, blue: 200 / 255 , alpha: 1)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#353535"></span>
  /// Alpha: 100% <br/> (0x353535ff)
  internal static let defaultBlackLabel = ColorName(rgbaValue: 0x353535ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#222222"></span>
  /// Alpha: 100% <br/> (0x222222ff)
  internal static let editedTextFieldBorder = ColorName(rgbaValue: 0x222222ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c6c115"></span>
  /// Alpha: 100% <br/> (0xc6c115ff)
  internal static let exampleBackground = ColorName(rgbaValue: 0xc6c115ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#c9c9c9"></span>
  /// Alpha: 100% <br/> (0xc9c9c9ff)
  internal static let grayTextFieldBorder = ColorName(rgbaValue: 0xc9c9c9ff)
    
  internal static let grayTextFieldBorder2 = ColorName(rgbaValue: 0xc9c9c9ff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = RGBAComponents(rgbaValue: rgbaValue).normalized
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}

private struct RGBAComponents {
  let rgbaValue: UInt32

  private var shifts: [UInt32] {
    [
      rgbaValue >> 24, // red
      rgbaValue >> 16, // green
      rgbaValue >> 8,  // blue
      rgbaValue        // alpha
    ]
  }

  private var components: [CGFloat] {
    shifts.map {
      CGFloat($0 & 0xff)
    }
  }

  var normalized: [CGFloat] {
    components.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
