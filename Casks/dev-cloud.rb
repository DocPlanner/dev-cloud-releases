cask "dev-cloud" do

    version "2.17.0"
    sha256 "2AD52B7EDCEE543B28E01559C5DCC04B47244CD8A39A212613C1EC6117053E2C"

    url "https://github.com/DocPlanner/dev-cloud-releases/releases/download/#{version}/dev-#{version}-osx-x64.zip"
    name "Dev Cloud"
    desc "CLI to develop applications in the cloud"
    homepage "https://github.com/DocPlanner/dev-cloud"

    binary "dev"

    depends_on formula: "awscli"
    depends_on formula: "devspace"
    depends_on formula: "kubernetes-cli"
  end
