class Snackmoney < Formula
  desc "CLI tool for sending USDC payments via Snack Money API"
  homepage "https://github.com/snack-money/snackmoney-cli"
  url "https://registry.npmjs.org/snackmoney/-/snackmoney-1.1.4.tgz"
  sha256 "9aebba2e8532ea3e2648f340936fc6234277f919b164414a50c80d6c1224fddc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/snackmoney", "--version"
  end
end
