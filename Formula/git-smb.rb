class GitSmb < Formula
  homepage "https://github.com/pascaldevink/git-smb"
  url "https://github.com/pascaldevink/git-smb/archive/1.0.2.tar.gz"
  sha256 "53820a5c11e43899c7c2abcd432b6c24e0719d36067e3a119cac5afce91a7baa"

  head "https://github.com/pascaldevink/git-smb.git", :branch => "master"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "git" => :optional

  def install
    bin.mkpath
    bin.install "bin/git-smb"
    share.install "share/data"
  end

  test do
    system bin/git-smb
  end
end
