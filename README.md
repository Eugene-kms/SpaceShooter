# 🚀 SpaceShooter

**SpaceShooter** is a classic arcade-style space shooter game built with **SpriteKit** and **Swift**, designed for iOS devices. The player controls a spaceship that shoots down waves of aliens while navigating using device tilt.

---

## 🎮 Features

- Dynamic starfield background using SKEmitterNode
- Accelerometer-based player movement
- Multiple enemy types
- Bullet vs. enemy collision with explosion effects
- Scoring system with difficulty toggle
- Customizable spawn rate for hard mode
- Optimized for iPhones

---

## 📱 Controls

- Tilt your device **left/right** to move the ship.
- Tap the screen to **fire bullets**.

---

## 🛠️ Technologies

- **Language:** Swift
- **Engine:** SpriteKit
- **Motion:** CoreMotion for accelerometer input
- **Graphics:** Custom assets (`shuttle`, `alien`, `torpedo`, etc.)
- **Audio:** Explosions and background music

---

## ⚙️ Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/SpaceShooter.git
   cd SpaceShooter
````

2. **Open in Xcode**

   * Requires **Xcode 16.2** or later
   * Open `SpaceShooter.xcodeproj` or `.xcworkspace`

3. **Add Assets (if not already included)**

   * Make sure these assets exist in your `Assets.xcassets` or resources:

     * `shuttle.png`
     * `alien.png`, `alien2.png`, `alien3.png`
     * `torpedo.png`
     * `Starfield.sks`
     * `Vzriv.sks`
     * `vzriv.mp3`

4. **Build and Run**

   * Select an iPhone Simulator or real device
   * Hit **Run ▶️**

---

## 🔧 Customization

To adjust game difficulty:

```swift
if UserDefaults.standard.bool(forKey: "hard") {
    timeInterval = 0.3 // faster alien spawn
} else {
    timeInterval = 0.75
}
```

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 👨‍💻 Author

* Developed by \Eugene-kms
