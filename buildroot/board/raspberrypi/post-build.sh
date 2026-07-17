#!/bin/sh

set -e

TARGET_DIR="$1"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(realpath "$SCRIPT_DIR/../../..")"

mkdir -p "$TARGET_DIR/opt"

rm -rf "$TARGET_DIR/opt/GATEWAY"

cp -a "$PROJECT_ROOT/GATEWAY" "$TARGET_DIR/opt/"

# Xóa dữ liệu không cần thiết
rm -rf "$TARGET_DIR/opt/GATEWAY/.git"
rm -rf "$TARGET_DIR/opt/GATEWAY/logs"
rm -rf "$TARGET_DIR/opt/GATEWAY/tests"
rm -rf "$TARGET_DIR/opt/GATEWAY/Tai_lieu"

echo "Gateway installed."
