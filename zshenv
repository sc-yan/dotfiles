# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890
# export all_proxy=socks5://127.0.0.1:7890

echo "Setting up environment variables from zshenv..."

function exists() {
  command -v $1 >/dev/null 2>&1
}

