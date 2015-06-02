class GitSmb < Formula
  homepage "https://github.com/pascaldevink/git-smb"
  url "https://github.com/pascaldevink/git-smb/archive/1.2.tar.gz"
  sha256 "b6457516136197169427f701274fa6787f0b1013ed30684100f98909f7ef3d89"

  head "https://github.com/pascaldevink/git-smb.git", :branch => "master"

  depends_on :python if MacOS.version <= :snow_leopard
  depends_on "git" => :optional

  def install
    bin.mkpath
    bin.install "bin/git-smb"
    share.install "share/data"
    mkdir_p etc/"git-smb"
    mv "etc/config.json", etc/"git-smb/config.json"
  end

  test do
    system bin/git-smb
  end
end
