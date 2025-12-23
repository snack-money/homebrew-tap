class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/snackmoney/-/snackmoney-1.2.0.tgz"
  sha256 "d484a907bd5fcaad5f36c0c6dc0f2e94fb114c91e2633b1baa87656315ffdf41"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    system "#{bin}/snackmoney", "--version"
  end
end
