# PodPeeper

## Docker Image for Kubernetes Debugging

This repository contains a Dockerfile that builds a lightweight Alpine-based image with essential debugging tools installed. The image is designed to be used as a pod in Kubernetes for debugging purposes, providing easy access to various tools that can aid in troubleshooting and inspecting network-related issues.

## Usage with kubectl

To use this Docker image for debugging in Kubernetes using `kubectl`, you can run the following command:

```bash
kubectl run debug --rm -i --tty --image tailordevdockermachine/podpeeper:latest -- bash
```

This `kubectl` command will create a temporary pod named "debug" using the specified Docker image. It will allocate an interactive terminal and attach it to the pod, allowing you to use the included debugging tools directly within the Kubernetes environment. The pod will be automatically removed once you exit the debugging session.

## Tools Included

The Docker image is based on Alpine Linux 3.18.2 and comes pre-installed with the following debugging tools:

- `postgresql-client`: PostgreSQL client for connecting to and interacting with PostgreSQL databases.
- `curl`: Command-line tool for making HTTP requests and transfers.
- `nmap`: Network exploration tool and security scanner.
- `netcat-openbsd`: Feature-rich networking utility for reading and writing data across network connections.
- `tcpdump`: Packet analyzer that captures and inspects network traffic.
- `bind-tools`: Set of DNS utilities, including `dig` and `nslookup`.
- `jq`: Lightweight and flexible command-line JSON processor.
- `bash`: GNU Bourne-Again SHell, a powerful command-line interpreter.
- `bash-completion`: Bash tab completion support.
- `grpcurl`: Command-line tool for interacting with gRPC servers.
- `wget`: Command-line utility for downloading files from the web.
- `vim`: Feature-rich text editor, ideal for quick file editing.
- `tmux`: Terminal multiplexer for managing multiple terminal sessions within a single window.
- `unzip`: Command-line utility for extracting ZIP archives.

## Getting Started

To use this Docker image outside of Kubernetes, you can pull it directly from DockerHub or build it locally using the provided Dockerfile.

### Pull from DockerHub

You can pull the latest version of the image from DockerHub using the following command:

```bash
docker pull tailordevdockermachine/podpeeper:latest
```


### Build Locally

If you prefer to build the image locally, follow these steps:

1. Clone this repository to your local machine:

```bash
git clone https://github.com/TailorBrands/PodPeeper
```

2. Change into the repository directory:

```bash
cd PodPeeper
```

3. Build the Docker image using the following command:

```bash
docker build -t <image_name>:<tag> .
```

Replace `<image_name>` and `<tag>` with your desired image name and version.

## Contributing

If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request. We welcome contributions from the community!

## License

This project is licensed under the MIT License.

**Note**: This Docker image is intended for debugging purposes and might contain various tools that could be used for troubleshooting and network inspection. Ensure proper authorization and usage when deploying it in production environments.
