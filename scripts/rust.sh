echo "========================================="
echo "= Rust                                  ="
echo "========================================="

sudo pacman -s rust --noconfirm --needed

cargo install --locked tree-sitter-cli
cargo install stylua
