# Pulumi Infrastructure as Code (IaC) Template for AWS and Azure

## Overview

This repository provides a template for quickly bootstrapping Infrastructure as Code (IaC) projects using Pulumi with support for both AWS and Azure cloud providers. The template includes a Makefile with convenient commands to set up and manage Pulumi projects.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/pulumi-iac-template.git
cd pulumi-iac-template
```

### 2. Open in Development Container

This project includes a pre-configured development container with all necessary tools:

1. Open the project in VS Code
2. When prompted, click "Reopen in Container"
3. If not prompted, press `Ctrl+Shift+P` and select "Remote-Containers: Reopen Folder in Container"

### 3. Install Pulumi

Run the following command to install Pulumi:

```bash
make restore
```

### 4. Create a New Pulumi Project

#### For AWS:

```bash
make new_app_aws_iac IAC_APP=your-aws-project-name
```

#### For Azure:

```bash
make new_app_azure_iac IAC_APP=your-azure-project-name
```

### 5. Local Pulumi Login

To log in to Pulumi locally:

```bash
make login_local
```

## Makefile Commands

- `make restore`: Install Pulumi CLI
- `make new_app_aws_iac`: Create a new AWS Pulumi project
- `make new_app_azure_iac`: Create a new Azure Pulumi project
- `make login_local`: Log in to Pulumi locally
## License

Distributed under the MIT License. See `LICENSE` for more information.

