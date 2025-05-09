# Contributing to PhotoSeed (Flutter App)

Thank you for considering contributing to PhotoSeed! Your input is highly appreciated. This guide will help you get started and ensure consistency across the project.

---

## 📦 Tech Stack

- **Frontend**: Flutter
- **App logic**: Dart

---

## 🛠 Getting Started

1. Fork this repository and create a new branch:
   ```
   git checkout -b feat/your-feature-name
   ```
2. Make your changes.
3. Format your code using `flutter format .`.
4. Commit using Conventional Commits (see below).
5. Push your branch and open a Pull Request.

---

## ✅ Commit Messages

We follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) standard. Here are some examples:

```
feat(ui): add photo grid layout
fix(auth): handle token expiration
refactor(sync): simplify peer discovery logic
docs: update README with installation steps
```

**Format:**

```
<type>(<scope>): <short description>
```

**Common types:**

- `feat`: new feature
- `fix`: bug fix
- `docs`: documentation only
- `refactor`: code change that doesn’t add a feature or fix a bug
- `test`: adding or updating tests
- `chore`: build system changes or maintenance

---

## 🚀 Pull Requests

When opening a PR, please:

- Give it a clear and descriptive title.
- Fill in the PR template.
- Describe what you changed and why.
- Check this box to confirm it works for you:
  - [ ] The app works correctly on my device 😄
- Add screenshots/GIFs if the UI has changed.
- Avoid mixing unrelated changes.

---

## 📁 Project Structure Tips

- UI views/pages go in `lib/pages/`
- Styling and color themes go in `lib/theme/`
- Shared widgets should go in `lib/widgets/`
- Utility functions, helpers, and extensions go in `lib/utils/`
- `main.dart` is the app entry point
- Keep business logic separate from UI (preferably in controllers/services folders)

---

## 🙏 Thanks!

By contributing, you’re helping build a better, privacy-focused photo experience. We appreciate every issue, suggestion, and pull request! 💚
