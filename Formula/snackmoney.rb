class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/@snackmoney/snackmoney-cli/-/snackmoney-cli-1.0.11.tgz"
  sha256 "c4f2f365719acfaf3c532d22800af30aabb890f16bbb3d3484f6cd031fe84876"
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
