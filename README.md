<h1 align="center">🪄 Spellbook</h1>

<p align="center">
  A simple terminal tool to summon helpful developer commands whenever you need them.<br>
  (Because you shouldn’t have to Google "how to git revert" for the 10th time.)
</p>

---

## ✨ What is Spellbook?

**Spellbook.sh** is a tiny command-line helper that displays categorized cheat sheets for essential dev tools like Git, Python, Bash, and VS Code.

It’s a companion to [Codemancer](https://github.com/AndreeaSofia/codemancer), my first project, and just like that one, I made this for myself, really. I wanted a place to store the most useful commands I constantly forget… and I wanted it to be terminal-native, no fuss.

You can expand it easily, personalize it, or even pass it on to someone else starting their own dev journey.

---

## 📚 Features

- `./spellbook.sh list` - See all available categories
- `./spellbook.sh show git` - Display cheat sheet for a category (in this case, Git)
- Fully editable plain-text command lists (`spells/` folder)
- Beginner-friendly

---

## 💻 How to run

1. Clone the repository:

```
git clone https://github.com/AndreeaSofia/spellbook.sh.git
```
2. Open a terminal and navigate to your project folder:

```
cd spellbook.sh
```

3. Make the script executable (you only need to do this once):

```
chmod +x spellbook.sh
```

4. List available categories:

```
./spellbook.sh list
```

5. Show commands for a specific category (in this case, Python):

```
./spellbook.sh show python
```
---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

That means:

- You can use, copy, share, and change it however you like.  
- Just keep the original license and credit. 📌  
- Comes *as-is*; no warranties, but a little bit of magic.
