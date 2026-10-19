/// What Mud does with a file it is handed on its own, from the command line,
/// Finder, or another app, while a document window is already open.
public enum FileOpenBehavior: String, CaseIterable, Sendable {
    /// A window of its own. The system "Prefer tabs" setting may still tab it.
    case window = "window"
    /// A tab at the end of the front document window's group, on whatever
    /// Space that window is.
    case tab = "tab"

    public var label: String {
        switch self {
        case .window: return "Opens a new window"
        case .tab: return "Opens a tab in the front window"
        }
    }
}
