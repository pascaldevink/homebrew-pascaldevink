class GitSmb < Formula
  homepage "https://github.com/pascaldevink/git-smb"
  url "https://github.com/pascaldevink/git-smb/archive/1.1.tar.gz"
  sha256 "7452427a44d47a0b722c8b0007a2fc8b6aa27eedfacda2c8f74c104c78ee980a"

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
