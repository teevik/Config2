install TARGET-IP FLAKE HARDWARE_CONFIG:
  # Run disko and install nixos
  nix run github:numtide/nixos-anywhere -- \
    --phases kexec,disko,install \
    --generate-hardware-config nixos-generate-config {{HARDWARE_CONFIG}} \
    --flake '.#{{FLAKE}}' \
    root@{{TARGET-IP}} 

  # Copy ssh keys over
  ssh root@{{TARGET-IP}} "mkdir /mnt/home/teevik/.ssh"
  scp /home/teevik/.ssh/id_rsa root@{{TARGET-IP}}:/mnt/home/teevik/.ssh/id_rsa
  scp /home/teevik/.ssh/id_rsa.pub root@{{TARGET-IP}}:/mnt/home/teevik/.ssh/id_rsa.pub

  # Clone config repo
  # ssh teevik@{{TARGET-IP}} "git clone https://github.com/teevik/Config.git /mnt/home/teevik/Documents/Config"
  # ssh teevik@{{TARGET-IP}} "cd /mnt/home/teevik/Documents/Config && git remote set-url origin git@github.com:teevik/Config.git"

  # Reboot
  # ssh root@{{TARGET-IP}} "reboot"