# Contributing to NebulaDB

Thank you for your interest in contributing to NebulaDB! This document provides guidelines for contributing to the project.

## 🚀 Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/NebulaDB.git
   cd NebulaDB
   ```
3. **Install Rust** (if not already installed):
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

## 🛠️ Development Setup

1. **Build the project**:
   ```bash
   cargo build
   ```

2. **Run tests**:
   ```bash
   cargo test
   ```

3. **Format code**:
   ```bash
   cargo fmt
   ```

4. **Run linting**:
   ```bash
   cargo clippy -- -D warnings
   ```

## 📝 Development Guidelines

### Code Style
- Use `cargo fmt` to format your code
- Follow Rust naming conventions
- Write clear, self-documenting code
- Add comments for complex logic

### Testing
- Add unit tests for new functionality
- Ensure all tests pass before submitting
- Write integration tests for major features
- Aim for good test coverage

### Commit Messages
Use clear, descriptive commit messages:
- `feat: add encryption module to core`
- `fix: resolve P2P connection timeout issue`
- `docs: update API documentation`
- `test: add unit tests for storage layer`

## 🔄 Pull Request Process

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** following the guidelines above

3. **Test your changes**:
   ```bash
   cargo test
   cargo clippy -- -D warnings
   cargo fmt --check
   ```

4. **Commit and push**:
   ```bash
   git add .
   git commit -m "feat: your descriptive commit message"
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request** on GitHub with:
   - Clear description of changes
   - Reference any related issues
   - Screenshots/examples if applicable

## 🐛 Reporting Issues

When reporting bugs, please include:
- NebulaDB version
- Operating system and version
- Rust version (`rustc --version`)
- Steps to reproduce the issue
- Expected vs actual behavior
- Relevant log output

## 💡 Feature Requests

For feature requests:
- Check existing issues to avoid duplicates
- Clearly describe the feature and its use case
- Explain why it would be valuable for NebulaDB
- Consider providing a basic implementation outline

## 📋 Code of Conduct

This project follows a code of conduct to ensure a welcoming environment for all contributors. Please be respectful and inclusive in all interactions.

## 🎯 Areas for Contribution

We especially welcome contributions in:
- Core storage engine improvements
- P2P networking enhancements  
- Encryption and security features
- Documentation and examples
- Testing and quality assurance
- Performance optimizations

## ❓ Questions?

If you have questions about contributing:
- Open an issue for discussion
- Contact the maintainer: blenzodu57@gmail.com
- Check existing issues and pull requests

Thank you for contributing to NebulaDB! 🌌