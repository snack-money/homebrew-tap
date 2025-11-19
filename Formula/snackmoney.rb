class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/@snackmoney/snackmoney-cli/-/snackmoney-cli-1.0.11.tgz"
  sha256 "2c8fb97a15be260c26b2e2fa8005848cf7b21801819f5eeb77dff898edb87e39"
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
