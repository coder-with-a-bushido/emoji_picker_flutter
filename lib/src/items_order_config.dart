/// Items order config
class ItemsOrderConfig {
  /// Constructor
  const ItemsOrderConfig({
    required this.top,
    required this.middle,
    required this.bottom,
  }) : assert(!identical(top, middle) &&
            !identical(top, bottom) &&
            !identical(middle, bottom));

  /// First item
  final EmojiPickerItem top;

  /// Middle item
  final EmojiPickerItem middle;

  /// Last item
  final EmojiPickerItem bottom;

  @override
  bool operator ==(other) {
    return (other is ItemsOrderConfig) &&
        other.top == top &&
        other.middle == middle &&
        other.bottom == bottom;
  }

  @override
  int get hashCode => top.hashCode ^ middle.hashCode ^ bottom.hashCode;
}

/// Widgets shown in `EmojiPicker` view
enum EmojiPickerItem {
  /// The tab bar to choose between different emoji categories
  categoryBar,

  /// The area that shows emojis
  emojiView,

  /// The search bar to search emojis
  searchBar,
}
