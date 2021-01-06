require "formula"

class Injector < Formula
  desc "CLI to do config replacements"
  homepage "https://github.com/hairymike/injector"
  url "https://github.com/HairyMike/injector/releases/download/1.0-alpha/injector-darwin-amd64.tar.gz", :using => :github_private_release
  sha256 "959c491bd1b5c007f7a7a2c6462bc9cc3fd65560a8a8a93d7dd6e9b8ff223366"
  head "https://github.com/hairymike/injector.git"

  def install
    bin.install "injector"
  end

  # Homebrew requires tests.
  test do
    shell_output("#{bin}/injector version", 0)
  end
end
