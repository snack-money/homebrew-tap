class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/@snackmoney/snackmoney-cli/-/snackmoney-cli-1.0.11.tgz"
  sha256 "7c72b494334d0ef3bd560d9c8e42e7eb75c22fd9279ba36ba3ea28482468a92b"
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
