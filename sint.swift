enum PausableState {
    case playing
    case paused(pauseTime: TimeInterval)
    case stopped
    case buffering(paused: Bool, pauseTime: TimeInterval?)
}

// Example usage:
var currentState: PausableState = .playing
currentState = .buffering(paused: true, pauseTime: 5.0)

// Pattern matching and accessing properties:
switch currentState {
case .playing:
    print("Currently playing")
case .paused(let pauseTime):
    print("Paused at time \(pauseTime)")
case .stopped:
    print("Playback stopped")
case .buffering(let paused, let pauseTime):
    if paused {
        if let time = pauseTime {
            print("Buffering, paused at time \(time)")
        } else {
            print("Buffering, paused with no specific time")
        }
    } else {
        print("Buffering, not paused")
    }
}
