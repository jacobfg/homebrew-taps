class LinkSshAuthSock < Formula
  homepage "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e"
  version "0.0.3"

  desc "Link SSH Auth SOCK file for using in macOS GUI applications"
  url "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e/archive/75404255034526c720145409d3ebc92f5d46ef0f.zip"
  sha256 "3110b960636bc6c9f126a03657396f8cdd63f5945bd1623a53adb989c67adfe1"
  # url "empty", :using => NullDownloadStrategy

  def install
    man1.install "README.md" => "link_ssh_auth_sock.1"
  end

  test do
    # system "_link-ssh-auth-sock"
  end

  service do
    run [
      "sh", "-c", "ln", "-sf", "$(gpgconf --list-dirs agent-ssh-socket 2>/dev/null)", "$SSH_AUTH_SOCK"
    ]
    require_root false
    environment_variables PATH: HOMEBREW_PREFIX/"bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    environment_variables PATH: std_service_path_env
  end
end
