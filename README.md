[![REUSE status](https://api.reuse.software/badge/github.com/openmcp-project/openmcp-project-openmcp)](https://api.reuse.software/info/github.com/openmcp-project/openmcp-project-openmcp)

# openmcp-project/openmcp

## About this project

This repository contains the umbrella openMCP component, which is a collection of openMCP open-source components which can be deployed together to create an openMCP landscape.
The component is build with the [Open Component Model (OCM)](https://ocm.software). This component does not contain any resource definitions, but only references to other components.
The referenced components are defined in the file `component-constructor.yaml` in the root directory of this repository.
The versions of the referenced components are defined in the file `component-versions.yaml` in the root directory of this repository.

## Requirements and Setup

For accessing the openMCP component, the OCM CLI is required. The OCM CLI can be installed via the [OCM CLI documentation](https://ocm.software/docs/getting-started/installation/).
To view a specific version of the openMCP component inclusive all dependencies, use the following command:

```bash
OPENMCP_VERSION=v0.0.7
ocm get component --repo=OCIRegistry::ghcr.io/openmcp-project/components github.com/openmcp-project/openmcp:${OPENMCP_VERSION} -o yaml --recursive
```

## Support, Feedback, Contributing

This project is open to feature requests/suggestions, bug reports etc. via [GitHub issues](https://github.com/openmcp-project/openmcp-project-openmcp/issues). Contribution and feedback are encouraged and always welcome. For more information about how to contribute, the project structure, as well as additional contribution information, see our [Contribution Guidelines](CONTRIBUTING.md).

## Security / Disclosure
If you find any bug that may be a security problem, please follow our instructions at [in our security policy](https://github.com/openmcp-project/openmcp-project-openmcp/security/policy) on how to report it. Please do not create GitHub issues for security-related doubts or problems.

## Code of Conduct

We as members, contributors, and leaders pledge to make participation in our community a harassment-free experience for everyone. By participating in this project, you agree to abide by its [Code of Conduct](https://github.com/SAP/.github/blob/main/CODE_OF_CONDUCT.md) at all times.

## Licensing

Copyright 2025 SAP SE or an SAP affiliate company and openmcp-project-openmcp contributors. Please see our [LICENSE](LICENSE) for copyright and license information. Detailed information including third-party components and their licensing/copyright information is available [via the REUSE tool](https://api.reuse.software/info/github.com/openmcp-project/openmcp-project-openmcp).
