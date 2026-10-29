#!/usr/bin/env bash
# Regional installer endpoints can require more than three redirects.
# Exercise classification, buffered and streaming downloads, and the hop cap.
set -euo pipefail

ROOT=$(cd "$(dirname "$0")/../.." && pwd)
cd "$ROOT"

zig build test-bin
zig-out/test-bin/net_redirect_auth_test
