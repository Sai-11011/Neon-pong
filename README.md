# Neon Pong 🏓

My First complete game.An arcade Pong clone built with **Godot 4.x**. 

This project was created to master Godot engine fundamentals, focusing on **Node architecture**, **Physics**, and **Game Feel** ("Juice"). It features dynamic visual effects, screen shake, and retro-style gameplay.

## ✨ Features
* **Classic Gameplay:** 2-Player local multiplayer (W/S vs Arrows).
* **"Effects" & Polish:**
    * **Visual Trails:** Tron-style particle effects following the ball.
    * **Screen Shake:** Impactful camera shake when the ball hits walls or paddles.
    * **Dynamic Colors:** The ball changes color on every bounce.
    * **Sound Effects:** Retro chiptune SFX generated via sfxr.me.
* **Clean Architecture:**
    * Decoupled logic (Ball controls Ball, Main controls Game State).
    * Signal-based scoring system.
    * Scalable "Winner" UI logic.

## 🎮 Controls
| Action | Player 1 | Player 2 |
| :--- | :---: | :---: |
| **Move Up** | `W` | `Up Arrow` |
| **Move Down** | `S` | `Down Arrow` |
| **Start / Reset** | `Space` | `Space` |

## 🛠️ Built With
* **Engine:** [Godot 4.x](https://godotengine.org/)
* **Language:** GDScript
* **Audio:** [sfxr.me](https://sfxr.me/) (Procedural Sound Generation)
* **Graphics:** Godot `ColorRect` & `CPUParticles2D` (No external sprites used!)

## 🚀 How to Run
1.  **Clone this repository:**
    ```bash
    git clone [https://github.com/Sai-11011/Neon-Pong.git](https://github.com/Sai-11011/Neon-Pong.git)
    ```
2.  **Import into Godot:**
    * Open Godot Engine.
    * Click **Import**.
    * Navigate to the folder and select `project.godot`.
3.  **Play:**
    * Press `F5` to run the game.

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
