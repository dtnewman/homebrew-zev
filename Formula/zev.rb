class Zev < Formula
  include Language::Python::Virtualenv

  desc "Lookup CLI commands easily using AI"
  homepage "https://github.com/dtnewman/zev"
  url "https://files.pythonhosted.org/packages/c1/c1/956f28a1dfc2d36bd91192febb7d23b101fae138f5d7c9ebcfecd466a136/zev-0.12.1.tar.gz"
  sha256 "353e235fef87eea2ace89eef2b39dcb7d6a450a1b4df67dec8295271a65296a4"
  license "MIT"
  preserve_rpath

  depends_on "python@3.12"

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/16/fc/cee2c45553c9a9bf77d8b0c391560c556d7ed756b1f0bb35eb5d48db09ea/markdown_it_py-4.3.0.tar.gz"
    sha256 "91a58fa5b72c71a40cf7177250fd767480d7a2bb3ac426ccfb76fb90305fdaaa"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/7d/ea/39b988c938f75cb75d7045b5c69f8bfed47ee2152c8837fb403de29d6fb8/prompt_toolkit-3.0.53.tar.gz"
    sha256 "9ec8a0ad96d5c56148b3f914aa79c1564c3fde5d2e6b876e7bc327e353cf8fa6"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/f6/45/eafb0bba0f9988f6a2520f9ca2df2c82ddfa8d67c95d6625452e97b204a5/questionary-2.1.1.tar.gz"
    sha256 "3d7e980292bb0107abaa79c68dd3eee3c561b83a0f89ae482860b181c8bd412d"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/8e/da/d59374b2c893ae70a41fdb064637ccef218f25df8c67e5431a96708235d9/wcwidth-0.9.5.tar.gz"
    sha256 "713534e2ecb16e0fc39f19e0a5dda997da76d010953e9e8f803e7971f8accd80"
  end

  def install_resource(venv, resource)
    if resource.url&.end_with?(".whl")
      wheel_dir = buildpath/"homebrew-wheels"
      wheel_dir.mkpath
      wheel_name = resource.url.to_s.split("/").last
      wheel_path = wheel_dir/wheel_name
      FileUtils.cp(resource.cached_download, wheel_path)
      system "python3.12", "-m", "pip", "--python=#{venv.root}/bin/python", "install",
             "--verbose", "--no-deps", "--ignore-installed", "--no-compile", wheel_path
    else
      venv.pip_install resource
    end
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")
    resources.each { |r| install_resource(venv, r) }
    venv.pip_install_and_link buildpath
  end

  test do
    (testpath/".zevrc").write("LLM_PROVIDER=openai\nOPENAI_API_KEY=test\n")
    output = shell_output("HOME=\#{testpath} \#{bin}/zev --version")
    assert_match "zev version", output
  end
end

