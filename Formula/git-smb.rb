class GitSmb < Formula
  homepage "https://github.com/pascaldevink/git-smb"
  url "https://github.com/pascaldevink/git-smb/archive/1.0.2.tar.gz"
  sha256 "f8cbfeb0917133409443defcc3749ac6bab52bc6e1d8535e0c19726db3fbb74b"

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
