```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

Then add this to your shell config (~/.bashrc, ~/.zshrc, ...):
```bash
export PATH="$PATH:/opt/nvim-linux64/bin"

```

```bash
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dpkg -i ripgrep_14.1.0-1_amd64.deb
```

```bash
git clone git@github.com:pourquoi/vim.git ~/.config/nvim && nvim
```

Install desired LSPs
