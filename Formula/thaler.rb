# Written by interfaces/apps/cli/scripts/build.ts. Do not edit.
class Thaler < Formula
  desc "Figures from SEC filings, each with the filing it came from"
  homepage "https://thaler.sh/cli"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://dl.thaler.sh/cli/0.1.5/thaler-darwin-arm64.tar.gz"
      sha256 "fbf0f76780388db478d8dc4776eb8e6bacac96fe438354cc2d6400dfe34b568e"
    end
    on_intel do
      url "https://dl.thaler.sh/cli/0.1.5/thaler-darwin-x64.tar.gz"
      sha256 "7c4f9a85691f0629ee76980d84f9d8b231664b8df09067fb5c24888ed6c022b4"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.thaler.sh/cli/0.1.5/thaler-linux-arm64.tar.gz"
      sha256 "1bd6b87052aae23f77831bbf32dce0a46afc9bfa39ebcc39f15620ae7c605baa"
    end
    on_intel do
      url "https://dl.thaler.sh/cli/0.1.5/thaler-linux-x64.tar.gz"
      sha256 "ec0fd5c20a51dc1f99f7d37e5eb5e685056ebf4629383fdca7cddadb41cf7ee0"
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
