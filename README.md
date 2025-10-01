# 🌌 NebulaDB

**NebulaDB** is a Rust-powered, decentralized database engine for creating, encrypting, and hosting data without central servers. Built on peer‑to‑peer networking and end‑to‑end encryption, nebulaDB gives users full data ownership—your database lives with you, not in someone else’s cloud.

**Our mission:** make nebulaDB the database everyone can use, so hosting becomes truly decentralized across projects and communities—no single provider, no lock‑in, just collective resilience.

Turn standalone, self-hosted databases into resilient, privacy‑first nodes that discover peers, replicate securely, and stay portable across machines.

---

## 🚧 Current Status

🛠️ Early development: laying the core foundation (encryption, local storage, P2P bootstrap) and shaping the CLI. Expect rapid iteration and breaking changes.

---

## 🧰 Tech Stack

- **Rust** — safe, fast, and concurrency‑friendly core  
- **CLI** — simple commands to init, start, and manage databases  
- **Docker** *(planned)* — containerized deployment for easy nodes

---

## 🔐 Core Ideas

- End‑to‑end encryption: keys stay with the owner  
- Network-hosted nodes: each person can create a database and host it across authorized peers—no local machine required.
- Decentralized by design: P2P networking, no central authority  
- Explicit sharing: opt‑in peer authorization and scoped access  
- Location-agnostic: your database lives on the network and is reachable from trusted peers while you keep the keys.

---

## 🧪 Example: Node & Database Flow (future)

1. User initializes a node: generates identity and keys (or imports existing).
2. Creates an encrypted database (notes, events, app data) with owner‑controlled keys.
3. Registers trusted peers via multiaddr and grants scoped permissions (read/write/replicate).
4. During operation:
    - Data is stored on authorized network peers and remains encrypted at rest.
    - Secure transport channels replicate updates among authorized nodes.
    - Conflicts are resolved via CRDTs (planned) for multi‑writer safety.
    - Keys can be rotated; backups/export happen via encrypted snapshots.

---

## Project Structure

```
nebulaDB/
├── app            # Graphical client application (GUI) for managing nodes & databases
├── cli            # Command-line interface for node/DB operations
├── core           # Storage engine, crypto, replication logic
├── docs           # Guides, specs, and architecture notes
├── examples       # Usage samples and scripts
├── net            # P2P stack: discovery, transport, and protocols
└── tests          # Integration and property tests
```

---

## 🔒 Security Model

- End‑to‑end encryption with owner‑controlled keys, data remains confidential across network‑hosted peers.
- Secure transport channels for P2P links  
- Share only by explicit authorization  
- Threat model: untrusted networks and partially trusted peers; review configs and keys before production

---

## 🗺️ Roadmap

- v0.1 — CLI scaffolding, encrypted DB, basic P2P bootstrap  
- v0.2 — Replication (CRDT), peer authorization, key rotation  
- v0.3 — Backup/restore, Docker image, observability  
- v1.0 — Stable APIs, SDK, performance hardening and docs

---

## 👤 Author

Blain Enzo 
GitHub: https://github.com/enzoblain
Mail: blenzodu57@gmail.com

---

## 📄 License

AGPL‑3.0 (GNU Affero General Public License v3.0).  
See the [LICENSE](./LICENSE) file for details.

---

## 🧑 Contributing

nebulaDB is in active development. Issues, PRs, and experiments are welcome—please discuss major changes via issues and keep PRs focused.  
Run `cargo fmt`, `cargo clippy`, and tests before submitting.