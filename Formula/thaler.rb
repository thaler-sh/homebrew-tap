# Written by interfaces/apps/cli/scripts/build.ts. Do not edit.
class Thaler < Formula
  desc "Figures from SEC filings, each with the filing it came from"
  homepage "https://thaler.sh/cli"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://dl.thaler.sh/cli/0.1.0/thaler-darwin-arm64.tar.gz"
      sha256 "46d1c059b7aa2000a97f86b2c5bb6f8973c16a5fe3f8bdbb4fb31d194a950267"
    end
    on_intel do
      url "https://dl.thaler.sh/cli/0.1.0/thaler-darwin-x64.tar.gz"
      sha256 "5084903504a814de52f590e7eab50d01c46e0d60d4d63d816a593c82ae777cb0"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.thaler.sh/cli/0.1.0/thaler-linux-arm64.tar.gz"
      sha256 "ef727bdb073fe055de23927f38200ebff2bcc9f64a9826262c7f16466069c6f7"
    end
    on_intel do
      url "https://dl.thaler.sh/cli/0.1.0/thaler-linux-x64.tar.gz"
      sha256 "35f2d042d11f029b2906055f364bba05dd47ea0bf46d3d28d237d4e120a68d1e"
    end
  end

  def install
    bin.install "thaler"
    generate_completions_from_executable(bin/"thaler", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/thaler --version")
  end
end
