class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/@snackmoney/snackmoney-cli/-/snackmoney-cli-1.0.11.tgz"
  sha256 "7af8e24cacdbea39843dc41a6f50372ebe46292bb43cfc3b421301e8a5485503"
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
