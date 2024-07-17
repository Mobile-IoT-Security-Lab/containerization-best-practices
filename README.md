# Containerization Best Practices

This repository contains a series of files demonstrating bad and good examples in the containerization process using Docker. The goal is to provide clear guidelines on how to securely and efficiently run Docker containers by comparing improper and proper practices.

## Repository Structure

The repository is organized into directories and files that illustrate bad and good examples of containerization techniques

### Bad Examples

The `bad-examples` directory contains scripts that demonstrate poor practices in containerization. These practices include, but are not limited to:

- Running containers with excessive privileges.
- Not restricting capabilities appropriately.
- Using insecure configurations that can expose the host system to risks.

### Good Examples

The `good-examples` directory contains scripts that illustrate best practices in containerization. These practices include:

- Minimizing privileges by dropping unnecessary capabilities.
- Adding only the required capabilities for the container to function.
- Using secure configurations to mitigate potential security risks.

## Usage

To understand the differences between bad and good practices, you can compare the scripts in the `bad-examples` and `good-examples` directories. Each pair of files (e.g., `example1.sh` in both directories) demonstrates the same functionality but with different security and efficiency considerations.

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please submit a pull request or open an issue.

## License

This repository is licensed under the MIT License. See the LICENSE file for more details.

By following the guidelines and examples provided in this repository, you can enhance the security and efficiency of your Docker containerization process.
