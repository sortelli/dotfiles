# How to install markdown-preview plugin

## Install plugin

```bash
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/iamcco/markdown-preview.nvim.git
cd markdown-preview.nvim
nvm use v16
npx --yes yarn install
npx --yes yarn build
```

## Setup github style css

```bash
cd ~/.vim/pack/plugins/start/markdown-preview.nvim
curl 'https://raw.githubusercontent.com/sindresorhus/github-markdown-css/f2dc5d9c8cda13c47119aafbea649ef1307a2e9e/github-markdown-dark.css' > github-markdown-dark.css
```
