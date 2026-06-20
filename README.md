# TicTacToe (Batch Edition)

A complete **Tic-Tac-Toe** game written entirely in **Windows Batch script** (`.bat`) — no installation, no dependencies. Just double-click and play right inside the Command Prompt, with ASCII-art graphics and a colourful interface.

Made by **Andriy Gryban**

---

## Features

- 🎮 **Two game modes**
  - **Player vs Computer** — play against the bot
  - **Player vs Player** — two players on the same keyboard
- 🤖 **Two bot difficulty levels**
  - **Level 1** — random moves
  - **Level 2** — smart logic that tries to win and blocks your winning moves
- 🎨 **Colour themes** — cycle through different console colour schemes
- ⚙️ **Settings menu** — change bot difficulty, switch colour theme, or reset all data
- 💾 **Persistent settings** — your preferences are saved between sessions in `settings/settingsInt.txt`
- 🖼️ **ASCII-art interface** — menus, board and screens drawn from text files in `graphics/`
- 🏆 **Win & draw detection** with a colourful victory animation
- 📜 **Built-in instructions** and an about screen

---

## How to Play

1. Download or clone this repository.
2. Double-click **`TicTacToe.bat`** (or run it from Command Prompt).
3. Use the on-screen menu by typing the number of the option you want:
   - `1` – Instructions
   - `2` – Play
   - `3` – Settings
   - `4` – About
4. During a game, enter a number **`1`–`9`** to place your mark in the matching cell:

   ```
    1 # 2 # 3
   ###########
    4 # 5 # 6
   ###########
    7 # 8 # 9
   ```
5. Type **`r`** at any time during a game to return to the main menu.

---

## Requirements

- **Windows** (the game uses `cmd.exe` / Batch scripting)
- No additional software needed

---

## Project Structure

```
TicTacToe/
├── TicTacToe.bat        # Main game script (all the logic)
├── graphics/            # ASCII-art screens (menu, board, instructions, ...)
│   ├── menu.txt
│   ├── instructions.txt
│   ├── settings.txt
│   ├── aboutus.txt
│   ├── tttBoard.txt
│   └── tttSelectGameMode.txt
└── settings/
    └── settingsInt.txt  # Saved settings (difficulty, colour, ...)
```

---

## Credits

Created by **Andriy Gryban** on 15 April 2024.

> Written with the help of GitHub Copilot (for faster writing) and StackOverflow (for solving problems).

Enjoy the game! 🎉
