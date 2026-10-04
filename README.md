# Custom Universal Blue Bazzite GNOME image

- Added official [Discord](https://discord.com/) package.
- Added official [Visual Studio Code](https://code.visualstudio.com/) package.

## Installation

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/mikaelvz/bazzite-gnome:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/mikaelvz/bazzite-gnome:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```
