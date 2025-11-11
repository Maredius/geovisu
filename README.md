# geovisu

## geOrchestra Server Setup

This repository contains the setup for a geOrchestra server using Docker.

### Prerequisites

- **RAM**: 16GB minimum (more is better)
- **Docker**: An up-to-date Docker engine
- **Docker Compose V2**: The new Compose plugin (V2)

### Installation

The geOrchestra Docker setup has been added as a git submodule tracking version 24.0.

1. **Clone this repository with submodules**:
   ```bash
   git clone --recurse-submodules https://github.com/Maredius/geovisu.git
   cd geovisu
   ```

2. **Start the geOrchestra server**:
   ```bash
   cd docker
   docker compose up -d
   ```

3. **Access the application**:
   Open [https://georchestra-127-0-0-1.nip.io/](https://georchestra-127-0-0-1.nip.io/) in your browser.
   
   You may need to accept a security warning or [trust the TLS certificate](docker/README.md#locally-trust-the-tls-certificate-for-georchestra).

4. **Login credentials**:
   - User: `testuser` / `testuser`
   - Admin: `testadmin` / `testadmin`

### Stopping the Server

To stop geOrchestra:
```bash
cd docker
docker compose down
```

### Documentation

For detailed documentation, refer to the [geOrchestra Docker README](docker/README.md).