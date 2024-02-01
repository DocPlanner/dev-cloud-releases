cask "dev-cloud" do
    config_file = './local_config.rb'
    require config_file if File.file? config_file
    VENV_VERSION ||= '.'

    version VENV_VERSION
    sha256 :no_check

    url "https://github.com/DocPlanner/dev-cloud-releases/releases/download/#{version}/dev-#{version}-osx-x64.zip"
    name "Dev Cloud"
    desc "CLI to develop applications in the cloud"
    homepage "https://github.com/DocPlanner/dev-cloud"

    binary "dev"
    auto_updates true

    livecheck do
      url "https://github.com/DocPlanner/dev-cloud-releases"
      strategy :github_latest
    end

    depends_on formula: "awscli"
    depends_on formula: "devspace"
    depends_on formula: "kubernetes-cli"
  end
