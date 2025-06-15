# How to install markdown-preview plugin

```bash
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/iamcco/markdown-preview.nvim.git
cd markdown-preview.nvim
nvm use v16
npx --yes yarn install
npx --yes yarn build
```
