class Zev < Formula
  include Language::Python::Virtualenv

  desc "Lookup CLI commands easily using AI"
  homepage "https://github.com/dtnewman/zev"
  url "https://files.pythonhosted.org/packages/3b/2f/484de1194ed09c43d9fc9b6e7be341c647a3ba0eadf494792f84a8135132/zev-0.12.0.tar.gz"
  sha256 "81f716a0a5d5e80f97e24aff885349242bdaada4a47fedb39cb647ebb68263a9"
  license "MIT"
  preserve_rpath

  depends_on "python@3.12"

  on_arm do
    resource "jiter" do
      url "https://files.pythonhosted.org/packages/86/56/371651ed5fdbab064b9ca39f5ceddd1bad2175bc1d4c81915eb63ac1fa3d/jiter-0.19.0-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "730b0387fbea21b71b86b6975e20da7a364b04c4428eba0d15e6f0a7b20aa59b"
    end

    resource "pydantic_core" do
      url "https://files.pythonhosted.org/packages/9f/6f/4e172894c2a4ca3bacd6c5f823ea5576df25eafe7593ffeb3576895b92aa/pydantic_core-2.50.5-cp312-cp312-macosx_11_0_arm64.whl"
      sha256 "a9bcf23628860d5a90cacdc188ee3b7d0547a38eb985214f03e7002a6ca0e558"
    end
  end

  on_intel do
    resource "jiter" do
      url "https://files.pythonhosted.org/packages/8c/cd/88cf9efec4d4b6cb816233a6fbfcd842e9675012b2827c6abee4f87e53f1/jiter-0.19.0-cp312-cp312-macosx_10_12_x86_64.whl"
      sha256 "0282eae10bbccfabcb6001ced6a20abc5e05e26c6316e7729c8fc1510bd3b8e1"
    end

    resource "pydantic_core" do
      url "https://files.pythonhosted.org/packages/2e/ce/c79f87db419571137da902afa5cb16f7a981943bb9e0a520886fc4ed06e6/pydantic_core-2.50.5-cp312-cp312-macosx_10_12_x86_64.whl"
      sha256 "24d23de96195ff9637e5940a7fbde3bea6a355b26fb5f491737dd803aa5d5a93"
    end
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/5f/56/a8120250d128bed162cd73c76d45f6ef9991f3e068f62a8ee060afa3104a/annotated_types-0.8.0.tar.gz"
    sha256 "13b2beaad985e05e2d6407ee4c4f35590b11f8d693a258a561055cac8f64cab7"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a1/98/7e457a3b014976887a050561955c0b76e1e7e2d6e27b78ecef2ef80518f2/anyio-4.16.0.tar.gz"
    sha256 "59bb03251907983d1603d27c3087ddb1e93299ea2163adcdba37899a4fb12ffb"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore2" do
    url "https://files.pythonhosted.org/packages/92/9d/df40b41f7db0370f82019820709244e7b660c52aa3da3c9e5c4e8141f6e6/httpcore2-2.16.2.tar.gz"
    sha256 "6c519d0f7b44f7269fa9bbb4d2763db395a4a2370f046d8e8e0a4b38227815d2"
  end

  resource "httpx2" do
    url "https://files.pythonhosted.org/packages/1c/77/6515121dc5ac3c743ad1bff5afe635bcd1a3f23cc40db3c5c89f7d02917d/httpx2-2.16.2.tar.gz"
    sha256 "748b615678f07d8e3b183efe81ad13b655ca88bfc56ce4589219b2d442860574"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/16/fc/cee2c45553c9a9bf77d8b0c391560c556d7ed756b1f0bb35eb5d48db09ea/markdown_it_py-4.3.0.tar.gz"
    sha256 "91a58fa5b72c71a40cf7177250fd767480d7a2bb3ac426ccfb76fb90305fdaaa"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/ba/cb/7753707676a915df954b8239da0b4a1604b523bb2de32943fcb4053f60a6/openai-3.58.0.tar.gz"
    sha256 "8b9f4a166d6860a04f26e34de0ae9aa3f267cbe6da2df4ad7d4cfa8483f540b2"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/71/18/0b0d99f5bf164f04a7a9534c3dbdbe4d5fd2b382667685ad40c192c4d3d1/platformdirs-4.14.8.tar.gz"
    sha256 "96893d686e84e9e6f358a9ea41a8de544df66dbf2ba6cda250e7dc73acf85b9b"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/7d/ea/39b988c938f75cb75d7045b5c69f8bfed47ee2152c8837fb403de29d6fb8/prompt_toolkit-3.0.53.tar.gz"
    sha256 "9ec8a0ad96d5c56148b3f914aa79c1564c3fde5d2e6b876e7bc327e353cf8fa6"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/8e/25/3ec212432a6031b65f043eaca9c820ddf87c0d0aa330023e64f79fcb5db6/pydantic-2.14.4.tar.gz"
    sha256 "7c19f1d46f8accf55a4617a6116e1ade64840870f397b846a2c53fb9019414ba"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/49/2e/ced460408999b33da6b31b0021b0f37d329e202d4169aeb164493778f25b/pygments-2.21.0.tar.gz"
    sha256 "610ca751c9bc2492b38eb9a38a7fbc93edbbb2d7182edaf34e66ae493dee5c8c"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/e8/52/d87eba7cb129b81563019d1679026e7a112ef76855d6159d24754dbd2a51/pyperclip-1.11.0.tar.gz"
    sha256 "244035963e4428530d9e3a6101a1ef97209c6825edab1567beac148ccc1db1b6"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/74/26/2fbeedb218a787a5eea551c7532cac4e009f83d689dd2faa0d0353473f86/python_dotenv-1.2.4.tar.gz"
    sha256 "f0d53e69935a851c0dcc78f3ab7aaccd8cabef0b92382b576b824212902873c0"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/f6/45/eafb0bba0f9988f6a2520f9ca2df2c82ddfa8d67c95d6625452e97b204a5/questionary-2.1.1.tar.gz"
    sha256 "3d7e980292bb0107abaa79c68dd3eee3c561b83a0f89ae482860b181c8bd412d"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/c0/8f/0722ca900cc807c13a6a0c696dacf35430f72e0ec571c4275d2371fca3e9/rich-15.0.0.tar.gz"
    sha256 "edd07a4824c6b40189fb7ac9bc4c52536e9780fbbfbddf6f1e2502c31b068c36"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/ee/9f/c5201d42a484c061e528825fc8e2d565f5abd50a4ced6fb7d29c4ec99b2b/truststore-0.10.5.tar.gz"
    sha256 "30d36967ccaded5cbb38d602c433f53600036c79d502f4533a49b60a03bbefcd"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/ff/50/0195198eb1d75bab716bb0a813abea4cc394bfa17a92a189f021a34859af/typing_inspection-0.4.5.tar.gz"
    sha256 "7f16c411e7930dc79596d42ab44672a3fe5f60eb34b781a1647e7872363120c7"
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

