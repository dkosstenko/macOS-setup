# macOS Setup Script

This repository contains a modular script to set up a macOS environment from scratch. Pull requests are welcome 🥰.

## Key features
- **System configuration**: Save time configuring system paramethers using CLI.
- **Git configuration**: Set up aliases, generate SSH key, change default branch name to `main`.
- **App installation**: Install apps and CLI tools using package manager.
- **Remove preinstalled apps**: Remove some preisntalled apps with one click.

## Structure

- `install.sh`: Main script to run the setup.
- `scripts/`: Directory containing modular scripts.
  - `install_apps.sh`: Script to install applications.
  - `app_list.sh`: List of applications to be installed.
  - `configure_git.sh`: Script to configure Git.
  - `configure_input_methods.sh`: Script to configure input methods.
  - `configure_mac_os.sh`: Script to configure macOS settings.
  - `remove_apps.sh`: Script to remove default macOS applications.
  - `utils.sh`: Utility functions used across scripts.

## Usage

1. Clone the repository:
    ```sh
    git clone https://github.com/dkosstenko/macos-setup.git
    cd macos-setup
    ```

2. Make the main script executable:
    ```sh
    chmod +x install.sh
    ```

3. Run the main script:
    ```sh
    ./install.sh
    ```

4. Follow the on-screen instructions to choose the setup options.

## Todo:
- [ ] .zshrc config
- [ ] Default apps setup
- [ ] User defined wallpaper and accent color
- [ ] Config for installed apps
- [ ] User defined regional settings and keyboard layouts

## Resources used:
- [macOS defaults](https://macos-defaults.com/)

## License

This project is licensed under the MIT License.