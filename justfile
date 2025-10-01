# Justfile for NebulaDB
# See: https://github.com/casey/just

# Default recipe - show available commands
default:
    @just --list

# Build all packages
build:
    cargo build --all

# Build in release mode
build-release:
    cargo build --all --release

# Run all tests
test:
    cargo test --all

# Run tests with coverage (requires cargo-tarpaulin)
test-coverage:
    cargo tarpaulin --all --out Html --output-dir target/coverage

# Format all code
fmt:
    cargo fmt --all

# Check formatting without making changes
fmt-check:
    cargo fmt --all -- --check

# Run clippy linter
lint:
    cargo clippy --all-targets --all-features -- -D warnings

# Run all checks (fmt, lint, test)
check: fmt-check lint test

# Clean build artifacts
clean:
    cargo clean

# Update dependencies
update:
    cargo update

# Security audit of dependencies
audit:
    cargo audit

# Check licenses and security with cargo-deny
deny:
    cargo deny check

# Install development dependencies
install-dev-deps:
    cargo install cargo-tarpaulin cargo-audit cargo-deny

# Run the CLI application
run-cli *args:
    cargo run --bin nebuladb-cli -- {{args}}

# Run the GUI application  
run-app *args:
    cargo run --bin nebuladb-app -- {{args}}

# Run a specific example
run-example example:
    cargo run --example {{example}}

# Generate documentation
docs:
    cargo doc --all --no-deps --open

# Check documentation
docs-check:
    cargo doc --all --no-deps

# Run benchmarks (when available)
bench:
    cargo bench --all

# Setup development environment
dev-setup: install-dev-deps
    @echo "Development environment setup complete!"
    @echo "Run 'just check' to verify everything works"

# Pre-commit hook - run all checks
pre-commit: check deny audit
    @echo "All pre-commit checks passed! ✅"

# Watch for changes and run tests
watch-test:
    cargo watch -x "test --all"

# Watch for changes and run checks
watch-check:
    cargo watch -x "check --all"

# Start a development server (when networking is implemented)
dev-server:
    cargo run --bin nebuladb-cli -- start --dev

# Package for distribution
package:
    cargo package --all

# Prepare a release (check everything)
release-prep version: check deny audit docs-check
    @echo "Preparing release {{version}}"
    @echo "Remember to:"
    @echo "1. Update version numbers in Cargo.toml files"
    @echo "2. Update CHANGELOG.md"
    @echo "3. Commit changes"
    @echo "4. Tag release: git tag v{{version}}"
    @echo "5. Push: git push origin v{{version}}"