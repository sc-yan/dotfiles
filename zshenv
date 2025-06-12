# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890
# export all_proxy=socks5://127.0.0.1:7890
# export no_proxy=http://127.0.0.1:7890
# export HTTP_PROXY=http://127.0.0.1:7890
# export HTTPS_PROXY=http://127.0.0.1:7890
# export ALL_PROXY=socks5://127.0.0.1:7890
# export NO_PROXY=http://127.0.0.1:7890

echo "Setting up environment variables from zshenv..."

function exists() {
  # command -v is a POSIX compliant way to check if a command exists, similar to which
  # redirect stdout and stderr to /dev/null
  command -v $1 >/dev/null 2>&1
  # command -v $1 1>/dev/null 2>/dev/null
}

