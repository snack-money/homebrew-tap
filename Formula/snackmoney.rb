class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/@snackmoney/snackmoney-cli/-/snackmoney-cli-1.0.11.tgz"
  sha256 "4921db425f62f1248de92fa6b39e2a6323c96d35ce66189ec10a406b228b8b9d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/snackmoney", "--version"
  end
end
