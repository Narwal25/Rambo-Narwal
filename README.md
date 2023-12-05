<p align="center">
  <img src="https://github.com/Fosssil/Rambo/blob/main/LOGO.png" />
</p> 

# Rambo Narwal

Rambo Narwal is a fork of [Fosssil/Rambo](https://github.com/Fosssil/Rambo), a Backup and Restore application for Linux-based operating systems. The fork, managed by [@Narwal25](https://github.com/Narwal25), includes additional functionality for remote storage, allowing users to store and retrieve backups from Amazon S3.

## Project Overview

- **Changes Made:**
  - Updated required packages.
  - Added remote storage functionality for Amazon S3.
  - Major changes to various scripts.
  - Added installation functionality.

## How it Works

Rambo Narwal follows these steps:

1. Checks for required packages. Installs them if not found.
2. Offers options for automatic or manual data backup.
3. Asks where to store data (local or cloud).
4. Selects, compresses, and saves data in the chosen storage.

## Technology Used

- Linux
- Git
- Docker
- Bash
- AWS
- SSH
- Rsync
- VMs
- Tar
- Bzip2
- Gzip
- Cpio

## Contributors

- [Pardeep Narwal](https://github.com/Narwal25)
- [Sagar Dahiya](https://github.com/Fosssil)

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/Narwal25/rambo-narwal.git
   ```

2. Navigate to the project directory:

   ```bash
   cd rambo-narwal
   ```

3. Run the install script:

   ```bash
   bash install.sh
   ```

## Usage

Execute Rambo Narwal with:

```bash
bash main.sh
```

## Contributing

We welcome contributions to enhance Rambo Narwal. If you are interested in contributing, please reach out to the project contributors for more details and guidance.

## License

This project is licensed under the [GNU GENERAL PUBLIC LICENSE 3.0](LICENSE).

## Acknowledgments

Thanks to the original Rambo project contributors and the Rambo Narwal team for their contributions and efforts.
