class FinderSidebarEditor < Formula
  include Language::Python::Virtualenv

  desc "Python module for programmatically editing the Favorites entries of the Finder sidebar"
  homepage "https://github.com/Ajordat/finder-sidebar-editor"
  url "https://files.pythonhosted.org/packages/89/e7/b080d9f4d1b44300bf5ca6cebb414ca9f4fd7a22b0c4b2a87834db4777ab/finder_sidebar_editor-1.2.0.tar.gz"
  sha256 "040a85fc51e52e49ed4b2bbe577a873af65a9b9f8ba66db104f338537e3cd5f5"
  version "1.2.0"

  depends_on "python3"

  def install
    #venv = virtualenv_create(libexec, "python3")
    #venv.pip_install resources
    #venv.pip_install_and_link buildpath

    xy = Language::Python.major_minor_version "python3"
    site_packages = libexec/"lib/python#{xy}/site-packages"
    ENV.prepend_create_path "PYTHONPATH", site_packages

    system "python3", "-m", "pip", "install", , "--prefix", libexec

    # virtualenv_install_with_resources

    # Install dependencies
    #resources.each do |r|
    #  r.stage do
    #    system libexec/"bin/pip", "install", "--no-deps", "."
    #  end
    #end

    # Install the main package
    # system libexec/"bin/pip", "install", "--no-deps", buildpath

    # bin.install_symlink libexec/"bin/finder-sidebar-editor"
  end

  test do
    false
  end
end

# class FinderSidebarEditor < Formula
#   include Language::Python::Virtualenv

#   desc "Python module for programmatically editing the Favorites entries of the Finder sidebar"
#   homepage "https://github.com/Ajordat/finder-sidebar-editor"

#   version "1.2.0"
#   url "https://gist.github.com/jacobfg/c8fafe53649b8f9fda634b978e58548e/archive/75404255034526c720145409d3ebc92f5d46ef0f.zip"
#   sha256 "3110b960636bc6c9f126a03657396f8cdd63f5945bd1623a53adb989c67adfe1"

#   depends_on "python@3.13"

#   resource "finder-sidebar-editor" do
#     url "https://files.pythonhosted.org/packages/89/e7/b080d9f4d1b44300bf5ca6cebb414ca9f4fd7a22b0c4b2a87834db4777ab/finder_sidebar_editor-1.2.0.tar.gz"
#     sha256 "040a85fc51e52e49ed4b2bbe577a873af65a9b9f8ba66db104f338537e3cd5f5"
#   end

#   resource "pyobjc" do
#     url "https://files.pythonhosted.org/packages/e1/d6/27b1c9a02f6cb4954984ce1a0239618e52f78c329c7e7450bf1f219b0f0a/pyobjc-11.0.tar.gz"
#     sha256 "a8f7baed65797f67afd46290b02f652c23f4b158ddf960bce0441b78f6803418"
#   end

#   resource "pyobjc-core" do
#     url "https://files.pythonhosted.org/packages/5c/94/a111239b98260869780a5767e5d74bfd3a8c13a40457f479c28dcd91f89d/pyobjc_core-11.0.tar.gz"
#     sha256 "63bced211cb8a8fb5c8ff46473603da30e51112861bd02c438fbbbc8578d9a70"
#   end

#   resource "pyobjc-framework-Accessibility" do
#     url "https://files.pythonhosted.org/packages/b5/61/7484cc4ad3aa7854cd4c969379a5f044261259d08f7c20b6718493b484f9/pyobjc_framework_accessibility-11.0.tar.gz"
#     sha256 "097450c641fa9ac665199762e77867f2a82775be2f749b8fa69223b828f60656"
#   end

#   resource "pyobjc-framework-Accounts" do
#     url "https://files.pythonhosted.org/packages/c2/fa/b64f3f02e0a8b189dc07c391546e2dbe30ef1b3515d1427cdab743545b90/pyobjc_framework_accounts-11.0.tar.gz"
#     sha256 "afc4ae277be1e3e1f90269001c2fd886093a5465e365d7f9a3a0af3e17f06210"
#   end

#   resource "pyobjc-framework-AddressBook" do
#     url "https://files.pythonhosted.org/packages/68/ef/5b5f6b61907ae43509fbf1654e043115d9a64d97efdc28fbb90d06c199f6/pyobjc_framework_addressbook-11.0.tar.gz"
#     sha256 "87073c85bb342eb27faa6eceb7a0e8a4c1e32ad1f2b62bb12dafb5e7b9f15837"
#   end

#   resource "pyobjc-framework-AdServices" do
#     url "https://files.pythonhosted.org/packages/51/7c/0c6e01f83b0c5c7968564a40146f4d07080df278457bdb5a982c8f26a74d/pyobjc_framework_adservices-11.0.tar.gz"
#     sha256 "d2e1a2f395e93e1bbe754ab0d76ce1d64c0d3928472634437e0382eafc6765cd"
#   end

#   resource "pyobjc-framework-AdSupport" do
#     url "https://files.pythonhosted.org/packages/0c/07/b8b5f741d1e2cad97100444b255e6ecaca3668e7414039981799aa330035/pyobjc_framework_adsupport-11.0.tar.gz"
#     sha256 "20eb8a683d34fb7a6efeceaf964a24b88c3434875c44f66db5e1b609e678043a"
#   end

#   resource "pyobjc-framework-AppleScriptKit" do
#     url "https://files.pythonhosted.org/packages/14/c3/d7f9a33de7ab8e3950350e0862214e66f27ed6bff1a491bc391c377ab83e/pyobjc_framework_applescriptkit-11.0.tar.gz"
#     sha256 "4bafac4a036f0fb8ba01488b8e91d3ac861ce6e61154ffbd0b26f82b99779b50"
#   end

#   resource "pyobjc-framework-AppleScriptObjC" do
#     url "https://files.pythonhosted.org/packages/fb/9f/bb4fdbcea418f8472d7a67d4d2e4a15fca11fed04648db5208b0fce84807/pyobjc_framework_applescriptobjc-11.0.tar.gz"
#     sha256 "baff9988b6e886aed0e76441358417707de9088be5733f22055fed7904ca1001"
#   end

#   resource "pyobjc-framework-ApplicationServices" do
#     url "https://files.pythonhosted.org/packages/ba/fb/4e42573b0d3baa3fa18ec53614cf979f951313f1451e8f2e17df9429da1f/pyobjc_framework_applicationservices-11.0.tar.gz"
#     sha256 "d6ea18dfc7d5626a3ecf4ac72d510405c0d3a648ca38cae8db841acdebecf4d2"
#   end

#   resource "pyobjc-framework-AppTrackingTransparency" do
#     url "https://files.pythonhosted.org/packages/36/40/c1c48ed49b5e55c7a635aa1e7ca41ffa1c5547e26243f26489c4768cd730/pyobjc_framework_apptrackingtransparency-11.0.tar.gz"
#     sha256 "cd5c834b5b19c21ad6c317ba5d29f30a8d0ae5d14e7cf557da22abc0850f1e91"
#   end

#   resource "pyobjc-framework-AudioVideoBridging" do
#     url "https://files.pythonhosted.org/packages/89/5f/0bd5beded0415b53f443da804410eda6a53e1bc64f8779ed9a592719da8c/pyobjc_framework_audiovideobridging-11.0.tar.gz"
#     sha256 "dbc45b06418dd780c365956fdfd69d007436b5ee54c51e671196562eb8290ba6"
#   end

#   resource "pyobjc-framework-AuthenticationServices" do
#     url "https://files.pythonhosted.org/packages/31/0f/2de0d941e9c9b2eb1ce8b22eb31adc7227badfe1e53f615431d3a7fdcd48/pyobjc_framework_authenticationservices-11.0.tar.gz"
#     sha256 "6a060ce651df142e8923d1383449bc6f2c7f5eb0b517152dac609bde3901064e"
#   end

#   resource "pyobjc-framework-AutomaticAssessmentConfiguration" do
#     url "https://files.pythonhosted.org/packages/09/d5/5febfee260b88e426c7e799cc95990818feeaa9f740fb9dd516559c96520/pyobjc_framework_automaticassessmentconfiguration-11.0.tar.gz"
#     sha256 "5d3691af2b94e44ca594b6791556e15a9f0a3f9432df51cb891f5f859a65e467"
#   end

#   resource "pyobjc-framework-Automator" do
#     url "https://files.pythonhosted.org/packages/25/1b/1ba4eb296c3915f2e367e45470cb310a9c78b4dd65a37bd522f458f245aa/pyobjc_framework_automator-11.0.tar.gz"
#     sha256 "412d330f8c6f30066cad15e1bdecdc865510bbce469cc7d9477384c4e9f2550f"
#   end

#   resource "pyobjc-framework-AVFoundation" do
#     url "https://files.pythonhosted.org/packages/76/06/018ad0e2a38dbdbc5c126d7ce37488c4d581d4e2a2b9ef678162bb36d5f6/pyobjc_framework_avfoundation-11.0.tar.gz"
#     sha256 "269a592bdaf8a16948d8935f0cf7c8cb9a53e7ea609a963ada0e55f749ddb530"
#   end

#   resource "pyobjc-framework-AVKit" do
#     url "https://files.pythonhosted.org/packages/de/79/5b2fcb94b051da32a24b54bb0d90b1d01b190e1402b6303747de47fb17ac/pyobjc_framework_avkit-11.0.tar.gz"
#     sha256 "5fa40919320277b820df3e4c6e84cba91ef7221a28f4eb5374e3dbd80d1e521a"
#   end

#   resource "pyobjc-framework-AVRouting" do
#     url "https://files.pythonhosted.org/packages/d5/80/63680dc7788bc3573a20fc5421dfcf606970a0cd3b2457829d9b66603ae0/pyobjc_framework_avrouting-11.0.tar.gz"
#     sha256 "54ec9ea0b5adb5149b554e23c07c6b4f4bdb2892ca2ed7b3e88a5de936313025"
#   end

#   resource "pyobjc-framework-BackgroundAssets" do
#     url "https://files.pythonhosted.org/packages/a3/17/83b873069b0c0763365de88648ad4a2472e9e96fcac39fa534f3633552e8/pyobjc_framework_backgroundassets-11.0.tar.gz"
#     sha256 "9488c3f86bf427898a88b7100e77200c08a487a35c75c1b5735bd69c57ba38cb"
#   end

#   resource "pyobjc-framework-BrowserEngineKit" do
#     url "https://files.pythonhosted.org/packages/9f/2e/df3d2f7e53132d398c2922d331dd1d2aa352997a1a4a1390e59db51c1d13/pyobjc_framework_browserenginekit-11.0.tar.gz"
#     sha256 "51971527f5103c0e09a4ef438c352ebb037fcad8971f8420a781c72ee421f758"
#   end

#   resource "pyobjc-framework-BusinessChat" do
#     url "https://files.pythonhosted.org/packages/5a/f2/4541989f2c9c5fc3cdfc94ebf31fc6619554b6c22dafdbb57f866a392bc1/pyobjc_framework_businesschat-11.0.tar.gz"
#     sha256 "20fe1c8c848ef3c2e132172d9a007a8aa65b08875a9ca5c27afbfc4396b16dbb"
#   end

#   resource "pyobjc-framework-CalendarStore" do
#     url "https://files.pythonhosted.org/packages/9f/d3/722c1b16c7d9bdd5c408735c15193e8396f2d22ab6410b0af4569f39c46e/pyobjc_framework_calendarstore-11.0.tar.gz"
#     sha256 "40173f729df56b70ec14f9680962a248c3ce7b4babb46e8b0d760a13975ef174"
#   end

#   resource "pyobjc-framework-CallKit" do
#     url "https://files.pythonhosted.org/packages/e4/0a/9d39ebac92006960b8059f664d8eb7b9cdb8763fe4e8102b2d24b853004f/pyobjc_framework_callkit-11.0.tar.gz"
#     sha256 "52e44a05d0357558e1479977ed2bcb325fabc8d337f641f0249178b5b491fc59"
#   end

#   resource "pyobjc-framework-Carbon" do
#     url "https://files.pythonhosted.org/packages/22/15/51964f36a8ae1002b16d213d2e5ba11cc861bdd9369f1e3f116350d788c5/pyobjc_framework_carbon-11.0.tar.gz"
#     sha256 "476f690f0b34aa9e4cb3923e61481aefdcf33e38ec6087b530a94871eee2b914"
#   end

#   resource "pyobjc-framework-CFNetwork" do
#     url "https://files.pythonhosted.org/packages/4f/36/7cebdfb621c7d46eeab3173256bc2e1cba1bbbbe6c0ac8aeb9a4fe2a4627/pyobjc_framework_cfnetwork-11.0.tar.gz"
#     sha256 "eb742fc6a42b248886ff09c3cf247d56e65236864bbea4264e70af8377948d96"
#   end

#   resource "pyobjc-framework-Cinematic" do
#     url "https://files.pythonhosted.org/packages/33/ef/b5857d567cd6e0366f61c381ebea52383b98d1ac03341f39e779a085812a/pyobjc_framework_cinematic-11.0.tar.gz"
#     sha256 "94a2de8bf3f38bd190311b6bf98d1e2cea7888840b3ce3aa92e464c0216a5cdb"
#   end

#   resource "pyobjc-framework-ClassKit" do
#     url "https://files.pythonhosted.org/packages/f5/81/126075eaf5ccf254ddb4cfd99d92a266c30803c5b4572ea3a920fd85e850/pyobjc_framework_classkit-11.0.tar.gz"
#     sha256 "dc5b3856612cafdc7071fbebc252b8908dbf2433e0e5ddb15a0bcd1ee282d27c"
#   end

#   resource "pyobjc-framework-CloudKit" do
#     url "https://files.pythonhosted.org/packages/89/6c/b0709fed7fc5a1e81de311b9273bb7ba3820a636f8ba880e90510bb6d460/pyobjc_framework_cloudkit-11.0.tar.gz"
#     sha256 "e3f6bf2c3358dd394174b1e69fcec6859951fcd15f6433c6fa3082e3b7e2656d"
#   end

#   resource "pyobjc-framework-Cocoa" do
#     url "https://files.pythonhosted.org/packages/c5/32/53809096ad5fc3e7a2c5ddea642590a5f2cb5b81d0ad6ea67fdb2263d9f9/pyobjc_framework_cocoa-11.0.tar.gz"
#     sha256 "00346a8cb81ad7b017b32ff7bf596000f9faa905807b1bd234644ebd47f692c5"
#   end

#   resource "pyobjc-framework-Collaboration" do
#     url "https://files.pythonhosted.org/packages/6b/ee/1f6893eb882af5ecc6a6f4182b2ec85df777c4bc6b9a20a6b42c23abff3f/pyobjc_framework_collaboration-11.0.tar.gz"
#     sha256 "9f53929dd6d5b1a5511494432bf83807041c6f8b9ab6cf6ff184eee0b6f8226f"
#   end

#   resource "pyobjc-framework-ColorSync" do
#     url "https://files.pythonhosted.org/packages/9a/24/397a80cd2313cc9e1b73b9acb1de66b740bbece4fe87ed4ea158de8fcef8/pyobjc_framework_colorsync-11.0.tar.gz"
#     sha256 "4f531f6075d9cc4b9d426620a1b04d3aaeb56b5ff178d0a6b0e93d068a5db0d2"
#   end

#   resource "pyobjc-framework-Contacts" do
#     url "https://files.pythonhosted.org/packages/f5/a2/89053853b28c1f2f2e69092d3e81b7c26073bc8396fc87772b3b1bfb9d57/pyobjc_framework_contacts-11.0.tar.gz"
#     sha256 "fc215baa9f66dbf9ffa1cb8170d102a3546cfd708b2b42de4e9d43645aec03d9"
#   end

#   resource "pyobjc-framework-ContactsUI" do
#     url "https://files.pythonhosted.org/packages/3f/67/122b16fd7f2da7f0f48c1d7fcaf0f1951253ddd5489d909a1b5fb80f3925/pyobjc_framework_contactsui-11.0.tar.gz"
#     sha256 "d0f2a4afea807fbe4db1518c4f81f0dc9aa1817fe7cb16115308fc00375a70db"
#   end

#   resource "pyobjc-framework-CoreAudio" do
#     url "https://files.pythonhosted.org/packages/31/e6/3b7a8af3defec012d6cacf277fd8d5c3e254ceace63a05447dc1119f3a7e/pyobjc_framework_coreaudio-11.0.tar.gz"
#     sha256 "38b6b531381119be6998cf704d04c9ea475aaa33f6dd460e0584351475acd0ae"
#   end

#   resource "pyobjc-framework-CoreAudioKit" do
#     url "https://files.pythonhosted.org/packages/ef/1a/604cac8d992b6e66adbb98edb1f65820116f5d74d8decd6d43898ae2929d/pyobjc_framework_coreaudiokit-11.0.tar.gz"
#     sha256 "1a4c3de4a02b0dfa7410c012c7f0939edd2e127d439fb934aeafc68450615f1d"
#   end

#   resource "pyobjc-framework-CoreBluetooth" do
#     url "https://files.pythonhosted.org/packages/93/74/66a62a36da9db5924ee15de6fe1eb544930609b307b3bfbc021b5cf43781/pyobjc_framework_corebluetooth-11.0.tar.gz"
#     sha256 "1dcb7c039c2efa7c72dc14cdda80e677240b49fa38999941a77ee02ca142998d"
#   end

#   resource "pyobjc-framework-CoreData" do
#     url "https://files.pythonhosted.org/packages/84/22/6787205b91cb6d526b6b472ebaa5baff275200774050a55b4b25d2bd957a/pyobjc_framework_coredata-11.0.tar.gz"
#     sha256 "b11acb51ff31cfb69a53f4e127996bf194bcac770e8fa67cb5ba3fb16a496058"
#   end

#   resource "pyobjc-framework-CoreHaptics" do
#     url "https://files.pythonhosted.org/packages/2a/b8/66481497362171e7ad42fc8fcc0272c04b95a707c5c1e7e8f8a8bfe58917/pyobjc_framework_corehaptics-11.0.tar.gz"
#     sha256 "1949b56ac0bd4219eb04c466cdd0f7f93d6826ed92ee61f01a4b5e98139ee039"
#   end

#   resource "pyobjc-framework-CoreLocation" do
#     url "https://files.pythonhosted.org/packages/0a/2d/b21ca49a34db49390420a9d7d05fd9eb89850dbec0a555c9ee408f52609c/pyobjc_framework_corelocation-11.0.tar.gz"
#     sha256 "05055c3b567f7f8f796845da43fb755d84d630909b927a39f25cf706ef52687d"
#   end

#   resource "pyobjc-framework-CoreMedia" do
#     url "https://files.pythonhosted.org/packages/02/60/7c7b9f13c94910882de6cc08f48a52cce9739e75cc3b3b6de5c857e6536a/pyobjc_framework_coremedia-11.0.tar.gz"
#     sha256 "a414db97ba30b43c9dd96213459d6efb169f9e92ce1ad7a75516a679b181ddfb"
#   end

#   resource "pyobjc-framework-CoreMediaIO" do
#     url "https://files.pythonhosted.org/packages/a1/59/904af57d302caa4c20d3bfebb9fb9300ccc3c396134460821c9f1e8ab65b/pyobjc_framework_coremediaio-11.0.tar.gz"
#     sha256 "7d652cf1a2a75c78ea6e8dbc7fc8b782bfc0f07eafc84b700598172c82f373d8"
#   end

#   resource "pyobjc-framework-CoreMIDI" do
#     url "https://files.pythonhosted.org/packages/96/90/d004cdf4c52b8b16842e15135495de882d743b4f0217946bd8ae1a920173/pyobjc_framework_coremidi-11.0.tar.gz"
#     sha256 "acace4448b3e4802ab5dd75bbf875aae5e1f6c8cab2b2f1d58af20fc8b2a5a7f"
#   end

#   resource "pyobjc-framework-CoreML" do
#     url "https://files.pythonhosted.org/packages/2e/64/4f0a990ec0955fe9b88f1fa58303c8471c551996670216527b4ac559ed8f/pyobjc_framework_coreml-11.0.tar.gz"
#     sha256 "143a1f73a0ea0a0ea103f3175cb87a61bbcb98f70f85320ed4c61302b9156d58"
#   end

#   resource "pyobjc-framework-CoreMotion" do
#     url "https://files.pythonhosted.org/packages/be/79/5c4ff39a48f0dc0f764d1330b2360e9f31e3a32414e8690e7f20e4574e93/pyobjc_framework_coremotion-11.0.tar.gz"
#     sha256 "d1e7ca418897e35365d07c6fd5b5d625a3c44261b6ce46dcf80787f634ad6fa5"
#   end

#   resource "pyobjc-framework-CoreServices" do
#     url "https://files.pythonhosted.org/packages/ca/b5/19c096b9938d6e2fdb1b436f21ad989b77dbeb4e59b3db4bd344800fa1e8/pyobjc_framework_coreservices-11.0.tar.gz"
#     sha256 "ac96954f1945a1153bdfef685611665749eaa8016b5af6f34bd56a274952b03a"
#   end

#   resource "pyobjc-framework-CoreSpotlight" do
#     url "https://files.pythonhosted.org/packages/fc/6a/6707d7ef339b9ad2dd0994d1df42969ee3b231f2d098f3377d40aed60b4f/pyobjc_framework_corespotlight-11.0.tar.gz"
#     sha256 "a96c9b4ba473bc3ee19afa01a9af989458e6a56e9656c2cdea1850d2b13720e6"
#   end

#   resource "pyobjc-framework-CoreText" do
#     url "https://files.pythonhosted.org/packages/9d/e8/9b68dc788828e38143a3e834e66346713751cb83d7f0955016323005c1a2/pyobjc_framework_coretext-11.0.tar.gz"
#     sha256 "a68437153e627847e3898754dd3f13ae0cb852246b016a91f9c9cbccb9f91a43"
#   end

#   resource "pyobjc-framework-CoreWLAN" do
#     url "https://files.pythonhosted.org/packages/2e/a9/cda522b270adb75d62bae447b2131da62912b5eda058a07e3a433689116f/pyobjc_framework_corewlan-11.0.tar.gz"
#     sha256 "8803981d64e3eb4fa0ea56657a9b98e4004de5a84d56e32e5444815d8ed6fa6f"
#   end

#   resource "pyobjc-framework-CryptoTokenKit" do
#     url "https://files.pythonhosted.org/packages/b8/72/b871fa5476479e4a22a4a0e971fb4724b0eb94c721365539ad55f4dc3135/pyobjc_framework_cryptotokenkit-11.0.tar.gz"
#     sha256 "a1bbfe9170c35cb427d39167af55aefea651c5c8a45c0de60226dae04b61a6b1"
#   end

#   resource "pyobjc-framework-DataDetection" do
#     url "https://files.pythonhosted.org/packages/33/6b/b896feb16e914dc81b6ed6cdbd0b6e6390eaafc80fff5297ec17eb0bd716/pyobjc_framework_datadetection-11.0.tar.gz"
#     sha256 "9967555151892f8400cffac86e8656f2cb8d7866963fdee255e0747fa1386533"
#   end

#   resource "pyobjc-framework-DeviceCheck" do
#     url "https://files.pythonhosted.org/packages/de/f8/237a92dd9ba8a88b7027f78cba83e61b0011bfc2a49351ecaa177233f639/pyobjc_framework_devicecheck-11.0.tar.gz"
#     sha256 "66cff0323dc8eef1b76d60f9c9752684f11e534ebda60ecbf6858a9c73553f64"
#   end

#   resource "pyobjc-framework-DeviceDiscoveryExtension" do
#     url "https://files.pythonhosted.org/packages/e1/48/178a1879109128f34334fdae2fe4463c7620f169593bea96704f347d945e/pyobjc_framework_devicediscoveryextension-11.0.tar.gz"
#     sha256 "576dac3f418cfc4f71020a45f06231d14e4b2a8e182ef0020dd9da3cf238d02f"
#   end

#   resource "pyobjc-framework-DictionaryServices" do
#     url "https://files.pythonhosted.org/packages/d8/cf/2913c7df737eb8519acb7ef6429127e40d6c334415e38cfa18d6481150eb/pyobjc_framework_dictionaryservices-11.0.tar.gz"
#     sha256 "6b5f27c75424860f169e7c7e182fabffdba22854fedb8023de180e8770661dce"
#   end

#   resource "pyobjc-framework-DiscRecording" do
#     url "https://files.pythonhosted.org/packages/96/cc/f36612b67ca1fff7659d7933b563dce61f8c84dad0bf79fab08bb34949ad/pyobjc_framework_discrecording-11.0.tar.gz"
#     sha256 "6bdc533f067d049ea5032f65af70b5cdab68673574ac32dacb46509a9411d256"
#   end

#   resource "pyobjc-framework-DiscRecordingUI" do
#     url "https://files.pythonhosted.org/packages/d4/6b/3c120c59a939854dd4b7a162fad47011375c5ba00a12940f7217aea90eeb/pyobjc_framework_discrecordingui-11.0.tar.gz"
#     sha256 "bec8a252fd2022dce6c58b1f3366a7295efb0c7c77817f11f9efcce70527d7a2"
#   end

#   resource "pyobjc-framework-DiskArbitration" do
#     url "https://files.pythonhosted.org/packages/43/fb/5d3ff093144f499904b1e1bce18d010fe2171b9be62b4679d3dda8b3ad19/pyobjc_framework_diskarbitration-11.0.tar.gz"
#     sha256 "1c3e21398b366a1ce96cf68501a2e415f5ccad4b43a3e7cc901e09e896dfb545"
#   end

#   resource "pyobjc-framework-DVDPlayback" do
#     url "https://files.pythonhosted.org/packages/c0/89/89ebee4863fd6f173bff9373b5bda4ffa87eba6197337617ab086e23c7d5/pyobjc_framework_dvdplayback-11.0.tar.gz"
#     sha256 "9a005f441afbc34aea301857e166fd650d82762a75d024253e18d1102b21b2f8"
#   end

#   resource "pyobjc-framework-EventKit" do
#     url "https://files.pythonhosted.org/packages/54/13/38a98e5cee62e1655d84cfb88cad54fdec4ec272b5fd0c5ac3fc21e33e49/pyobjc_framework_eventkit-11.0.tar.gz"
#     sha256 "3d412203a510b3d62a5eb0987406e0951b13ed39c3351c0ec874afd72496627c"
#   end

#   resource "pyobjc-framework-ExceptionHandling" do
#     url "https://files.pythonhosted.org/packages/cc/46/6c2c4805697a0cfb8413eb7bc6901298e7a1febd49bb1ea960274fc33af3/pyobjc_framework_exceptionhandling-11.0.tar.gz"
#     sha256 "b11562c6eeaef5d8d43e9d817cf50feceb02396e5eb6a7f61df2c0cec93d912b"
#   end

#   resource "pyobjc-framework-ExecutionPolicy" do
#     url "https://files.pythonhosted.org/packages/ab/91/2e4cacbdabf01bc1207817edacc814b6bc486df12e857a8d86964d98fef4/pyobjc_framework_executionpolicy-11.0.tar.gz"
#     sha256 "de953a8acae98079015b19e75ec8154a311ac1a70fb6d885e17fab09464c98a9"
#   end

#   resource "pyobjc-framework-ExtensionKit" do
#     url "https://files.pythonhosted.org/packages/22/98/803e3cb000dac227eb0d223802a0aeb052d34a741e572d9584e7d83afca7/pyobjc_framework_extensionkit-11.0.tar.gz"
#     sha256 "82d9e79532e5a0ff0eadf1ccac236c5d3dca344e1090a0f3e88519faa24143c7"
#   end

#   resource "pyobjc-framework-ExternalAccessory" do
#     url "https://files.pythonhosted.org/packages/67/b0/ac0a02fe26e66c33fee751a65c1ed06bbd2934db8636e08bb491e8334bad/pyobjc_framework_externalaccessory-11.0.tar.gz"
#     sha256 "39e59331ced75cdcccf23bb5ffe0fa9d67e0c190c1da8887a0e4349b7e27584f"
#   end

#   resource "pyobjc-framework-FileProvider" do
#     url "https://files.pythonhosted.org/packages/44/fc/b8593d8645b9933e60a885f451d0c12d9c0e1b00e62121d8660d95852dff/pyobjc_framework_fileprovider-11.0.tar.gz"
#     sha256 "dcc3ac3c90117c1b8027ea5f26dad6fe5045f688ce3e60d07ece12ec56e17ab3"
#   end

#   resource "pyobjc-framework-FileProviderUI" do
#     url "https://files.pythonhosted.org/packages/3d/9d/ca4aed36e6188623e9da633634af772f239bee74934322e1c19ae7b79a53/pyobjc_framework_fileproviderui-11.0.tar.gz"
#     sha256 "cf5c7d32b29d344b65217397eea7b1a2913ce52ce923c9e04135a7a298848d04"
#   end

#   resource "pyobjc-framework-FinderSync" do
#     url "https://files.pythonhosted.org/packages/f6/e3/24df6e24b589073815be13f2943b93feb12afbf558f6e54c4033b57c29ee/pyobjc_framework_findersync-11.0.tar.gz"
#     sha256 "8dab3feff5debd6bc3746a21ded991716723d98713d1ba37cec1c5e2ad78ee63"
#   end

#   resource "pyobjc-framework-FSEvents" do
#     url "https://files.pythonhosted.org/packages/82/37/4c09cc7b8678e2bb5b68ebc62e817eb88c409b1c41bdc1510d7d24a0372d/pyobjc_framework_fsevents-11.0.tar.gz"
#     sha256 "e01dab04704a518e4c3e1f7d8722819a4f228d5082978e11618aa7abba3883fe"
#   end

#   resource "pyobjc-framework-GameCenter" do
#     url "https://files.pythonhosted.org/packages/7f/3b/e66caebc948d9fe3b2671659caab220aff6d5e80ac25442d83331b523d23/pyobjc_framework_gamecenter-11.0.tar.gz"
#     sha256 "18a05500dbcf2cca4a0f05839ec010c76ee08ab65b65020c9538a31feb274483"
#   end

#   resource "pyobjc-framework-GameController" do
#     url "https://files.pythonhosted.org/packages/fa/30/02ca5a4fb911acf3e8018abcbd29631a842aeac02958ae91fab1acb13ad1/pyobjc_framework_gamecontroller-11.0.tar.gz"
#     sha256 "6d62f4493d634eba03a43a14c4d1e4511e1e3a2ca2e9cbefa6ae9278a272c1d0"
#   end

#   resource "pyobjc-framework-GameKit" do
#     url "https://files.pythonhosted.org/packages/3f/df/c161460e5736a34f9b59aa0a3f2d6ad1d1cd9a913aa63c89c41a6ba3b6ae/pyobjc_framework_gamekit-11.0.tar.gz"
#     sha256 "29b5464ca78f0de62e6b6d56e80bbeccb96dc13820b6d5b4e835ab1cc127e5b9"
#   end

#   resource "pyobjc-framework-GameplayKit" do
#     url "https://files.pythonhosted.org/packages/41/f0/980c4fc3c594d9726b7eb6ae83f73127b22560e1541c7d272d23d17fdf0d/pyobjc_framework_gameplaykit-11.0.tar.gz"
#     sha256 "90eeec464fba992d75a406ccbddb35ed7420a4f5226f19c018982fa3ba7bf431"
#   end

#   resource "pyobjc-framework-HealthKit" do
#     url "https://files.pythonhosted.org/packages/7b/2f/d79d2ec7c23bfc94bfaa7b7c6f6487a8bffdb73263eea6900aab56135889/pyobjc_framework_healthkit-11.0.tar.gz"
#     sha256 "e78ccb05f747ae3e70b5d73522030b7ba01ef2d390155fba7d50c1c614ae241f"
#   end

#   resource "pyobjc-framework-ImageCaptureCore" do
#     url "https://files.pythonhosted.org/packages/38/fe/db1fc3ffd784a9010070cd87a05d7fd2542c400395589341fab5970a01e1/pyobjc_framework_imagecapturecore-11.0.tar.gz"
#     sha256 "f5d185d8c8b564f8b4a815381bcdb424b10d203ba5bdf0fc887085e007df6f7a"
#   end

#   resource "pyobjc-framework-InputMethodKit" do
#     url "https://files.pythonhosted.org/packages/e7/e9/13d007285582e598903264a7d25cc6771a2a52d6c2a96a68fe91db0844fb/pyobjc_framework_inputmethodkit-11.0.tar.gz"
#     sha256 "86cd648bf98c4e777c884b7f69ebcafba84866740430d297645bf388eee6ce52"
#   end

#   resource "pyobjc-framework-InstallerPlugins" do
#     url "https://files.pythonhosted.org/packages/f2/f3/0379655e8ea3566002768d5e7b3ccd72ca845390632a8dabf801348af3a7/pyobjc_framework_installerplugins-11.0.tar.gz"
#     sha256 "88ec84e6999e8b2df874758b09878504a4fbfc8471cf3cd589d57e556f5b916e"
#   end

#   resource "pyobjc-framework-InstantMessage" do
#     url "https://files.pythonhosted.org/packages/08/4d/6810a1f2039ff24d9498858b3ebb46357d4091aa5cec9ff4e41bbcdb25de/pyobjc_framework_instantmessage-11.0.tar.gz"
#     sha256 "ec5c4c70c9b0e61ae82888067246e4f931e700d625b3c42604e54759d4fbf65c"
#   end

#   resource "pyobjc-framework-Intents" do
#     url "https://files.pythonhosted.org/packages/56/88/07e47b0c5c46fe97c23c883ae7a053c2ca6f6fd6afe851d1c2c784644f0f/pyobjc_framework_intents-11.0.tar.gz"
#     sha256 "6405c816dfed8ffa8b3f8b0fae75f61d64787dbae8db1c475bb4450cf8fdf6b5"
#   end

#   resource "pyobjc-framework-IntentsUI" do
#     url "https://files.pythonhosted.org/packages/ee/96/3b3b367f70a4d0a60d2c6251e4a1f4bf470945ae939e0ba20e6d56d10c7a/pyobjc_framework_intentsui-11.0.tar.gz"
#     sha256 "4ce04f926c823fbc1fba7d9c5b33d512b514396719e6bc50ef65b82774e42bc5"
#   end

#   resource "pyobjc-framework-IOBluetooth" do
#     url "https://files.pythonhosted.org/packages/1e/46/62913f8e5ac307b154b3dd50a7a0b167c9d7ac2a579223e33208c141c387/pyobjc_framework_iobluetooth-11.0.tar.gz"
#     sha256 "869f01f573482da92674abbae4a154143e993b1fe4b2c3523f9e0f9c48b798d4"
#   end

#   resource "pyobjc-framework-IOBluetoothUI" do
#     url "https://files.pythonhosted.org/packages/76/55/d194de8cfa63c96970e6c90c35e80ce3fceb42934a85d3728736a0e416ff/pyobjc_framework_iobluetoothui-11.0.tar.gz"
#     sha256 "a583758d3e54149ee2dcf00374685aa99e8ae407e044f7c378acc002f9f27e63"
#   end

#   resource "pyobjc-framework-IOSurface" do
#     url "https://files.pythonhosted.org/packages/fb/91/ae9ca9e1a777eb786d9d43649437d01d24386736cffe9bb2f504b57e8db6/pyobjc_framework_iosurface-11.0.tar.gz"
#     sha256 "24da8d1cf9356717b1c7e75a1c61e9a9417b62f051d13423a4a7b0978d3dcda5"
#   end

#   resource "pyobjc-framework-iTunesLibrary" do
#     url "https://files.pythonhosted.org/packages/41/fe/881ab1058d795fe68ccc1e14df0d5e161601dced15d3be84105ecc44bae6/pyobjc_framework_ituneslibrary-11.0.tar.gz"
#     sha256 "2e15dcfbb9d5e95634ddff153de159a28f5879f1a13fdf95504e011773056c6e"
#   end

#   resource "pyobjc-framework-KernelManagement" do
#     url "https://files.pythonhosted.org/packages/4a/ea/8ef534fce78817fc577f18de2b34e363873f785894f2bbbfc694823f5088/pyobjc_framework_kernelmanagement-11.0.tar.gz"
#     sha256 "812479d5f85eae27aeeaa22f64c20b926b28b5b9b2bf31c8eab9496d3e038028"
#   end

#   resource "pyobjc-framework-LatentSemanticMapping" do
#     url "https://files.pythonhosted.org/packages/42/29/8838eefeb82da95931134b06624364812dedf7e9cc905f36d95d497f2904/pyobjc_framework_latentsemanticmapping-11.0.tar.gz"
#     sha256 "6f578c3e0a171706bdbfcfc2c572a8059bf8039d22c1475df13583749a35cec1"
#   end

#   resource "pyobjc-framework-LaunchServices" do
#     url "https://files.pythonhosted.org/packages/da/59/eb847389224c670c885ae3d008b1ffe3b996bbe094b43e49dfa84f3947a9/pyobjc_framework_launchservices-11.0.tar.gz"
#     sha256 "7c5c8a8cec013e2cb3fa82a167ca2d61505c36a79f75c718f3f913e597f9ffee"
#   end

#   resource "pyobjc-framework-libdispatch" do
#     url "https://files.pythonhosted.org/packages/ab/33/4ec96a9edd37948f09e94635852c2db695141430cc1adc7b25968e1f3a95/pyobjc_framework_libdispatch-11.0.tar.gz"
#     sha256 "d22df11b07b1c3c8e7cfc4ba9e876a95c19f44acd36cf13d40c5cccc1ffda04b"
#   end

#   resource "pyobjc-framework-libxpc" do
#     url "https://files.pythonhosted.org/packages/b9/7e/9fa73ce6925db9cfd8a6b45d97943af8fe59f92251e7fd201b6e4608c172/pyobjc_framework_libxpc-11.0.tar.gz"
#     sha256 "e0c336913ab6a526b036915aa9038de2a5281e696ac2d3db3347b3040519c11d"
#   end

#   resource "pyobjc-framework-LinkPresentation" do
#     url "https://files.pythonhosted.org/packages/95/5c/dac9fe4ad0a4076c863b5ac9925e751fc18c637ae411e4891c4b7558a5b3/pyobjc_framework_linkpresentation-11.0.tar.gz"
#     sha256 "bc4ace4aab4da4a4e4df10517bd478b6d51ebf00b423268ee8d9f356f9e87be9"
#   end

#   resource "pyobjc-framework-LocalAuthentication" do
#     url "https://files.pythonhosted.org/packages/ec/b1/bea4b5f8adbb69c0b34eddee63e052f35271cc630db43fbef6873352e21f/pyobjc_framework_localauthentication-11.0.tar.gz"
#     sha256 "eb55a3de647894092d6ed3f8f13fdc38e5dbf4850be320ea14dd2ac83176b298"
#   end

#   resource "pyobjc-framework-LocalAuthenticationEmbeddedUI" do
#     url "https://files.pythonhosted.org/packages/e1/ee/821f2d2e9da4cba3dc47e50c8367c6405e91551fb7d8ec842858d5b1d45d/pyobjc_framework_localauthenticationembeddedui-11.0.tar.gz"
#     sha256 "7e9bf6df77ff12a4e827988d8578c15b4431694b2fcfd5b0dad5d7738757ee6a"
#   end

#   resource "pyobjc-framework-MailKit" do
#     url "https://files.pythonhosted.org/packages/d8/79/9c9140f726ba14898762ddc19e7142724e0ce5930f08eb20f33f78b05be8/pyobjc_framework_mailkit-11.0.tar.gz"
#     sha256 "d08a2dcc95b5e7955c7c385fe6e018325113d02c007c4178d3fb3c9ab326c163"
#   end

#   resource "pyobjc-framework-MapKit" do
#     url "https://files.pythonhosted.org/packages/96/7e/ef86c6e218a58bb9497ce9754a77f12ffe01c4b3609279727b7d7e44655a/pyobjc_framework_mapkit-11.0.tar.gz"
#     sha256 "cd8a91df4c0b442fcf1b14d735e566a06b21b3f48a2a4afe269fca45bfa49117"
#   end

#   resource "pyobjc-framework-MediaAccessibility" do
#     url "https://files.pythonhosted.org/packages/81/8e/9fe2cb251ff6107a03bafa07f63b6593df145a2579fffb096023fb21b167/pyobjc_framework_mediaaccessibility-11.0.tar.gz"
#     sha256 "1298cc0128e1c0724e8f8e63a6167ea6809a985922c67399b997f8243de59ab4"
#   end

#   resource "pyobjc-framework-MediaExtension" do
#     url "https://files.pythonhosted.org/packages/18/1f/e31d9431bc71077b09583ea863b3c91b7de9371d0cc17a8be99be8119daa/pyobjc_framework_mediaextension-11.0.tar.gz"
#     sha256 "ecd8a64939e1c16be005690117c21fd406fc04d3036e2adea7600d2a0c53f4ea"
#   end

#   resource "pyobjc-framework-MediaLibrary" do
#     url "https://files.pythonhosted.org/packages/a8/a4/8c7d1635994800dc412a5db2c4b43ed499184651efcec0c8da3cf8e2bcc7/pyobjc_framework_medialibrary-11.0.tar.gz"
#     sha256 "692889fab1e479a9c207f0ff23c900dad5f47caf47c05cc995d9bb7c1e56e8b9"
#   end

#   resource "pyobjc-framework-MediaPlayer" do
#     url "https://files.pythonhosted.org/packages/a2/ce/3d2783f2f96ddf51bebcf6537a4a0f2a8a1fe4e520de218fc1b7c5b219ed/pyobjc_framework_mediaplayer-11.0.tar.gz"
#     sha256 "c61be0ba6c648db6b1d013a52f9afb8901a8d7fbabd983df2175c1b1fbff81e5"
#   end

#   resource "pyobjc-framework-MediaToolbox" do
#     url "https://files.pythonhosted.org/packages/da/46/cf5f3bde6cad32f10095850ca44f24ba241d18b26379187c412be1260f39/pyobjc_framework_mediatoolbox-11.0.tar.gz"
#     sha256 "de949a44f10b5a15e5a7131ee53b2806b8cb753fd01a955970ec0f475952ba24"
#   end

#   resource "pyobjc-framework-Metal" do
#     url "https://files.pythonhosted.org/packages/77/e0/a6d18a1183410a5d8610ca1ae6c065b8944586441f8669faee7509817246/pyobjc_framework_metal-11.0.tar.gz"
#     sha256 "cad390150aa63502d5cfe242026b55ed39ffaf816342ddf51e44a9aead6c24be"
#   end

#   resource "pyobjc-framework-MetalFX" do
#     url "https://files.pythonhosted.org/packages/68/cf/ff9367e4737a12ebd12a17e693ec247028cf065761acc073ebefb2b2393a/pyobjc_framework_metalfx-11.0.tar.gz"
#     sha256 "2ae41991bf7a733c44fcd5b6550cedea3accaaf0f529643975d3da113c9f0caa"
#   end

#   resource "pyobjc-framework-MetalKit" do
#     url "https://files.pythonhosted.org/packages/92/27/fb3c1b10914abf2ae6682837abf76bcd8cb7af2ba613fbc55fb9d055bb95/pyobjc_framework_metalkit-11.0.tar.gz"
#     sha256 "1bbbe35c7c6a481383d32f6eaae59a1cd8084319a65c1aa343d63a257d8b4ddb"
#   end

#   resource "pyobjc-framework-MetalPerformanceShaders" do
#     url "https://files.pythonhosted.org/packages/14/c2/c08996a8c6cfef09fb9e726cc99b0bf3ad0ffcef66d5c2543e6b35dd4e2e/pyobjc_framework_metalperformanceshaders-11.0.tar.gz"
#     sha256 "41179e3a11e55325153fffd84f48946d47c1dc1944677febd871a127021e056d"
#   end

#   resource "pyobjc-framework-MetalPerformanceShadersGraph" do
#     url "https://files.pythonhosted.org/packages/b5/b8/353852c76eb437e907ca0acf8a5b5f9255e9b9ee8c0706b69b0c17498f97/pyobjc_framework_metalperformanceshadersgraph-11.0.tar.gz"
#     sha256 "33077ebbbe1aa7787de2552a83534be6c439d7f4272de17915a85fda8fd3b72d"
#   end

#   resource "pyobjc-framework-MetricKit" do
#     url "https://files.pythonhosted.org/packages/28/82/605ad654f40ff4480ba9366ad3726da80c98e33b73f122fb91259be1ce81/pyobjc_framework_metrickit-11.0.tar.gz"
#     sha256 "ee3da403863beec181a2d6dc7b7eeb4d07e954b88bbabac58a82523b2f83fdc7"
#   end

#   resource "pyobjc-framework-MLCompute" do
#     url "https://files.pythonhosted.org/packages/c5/c9/22fe4720685724ec1444c8e5cdb41d360b1434d0971fb3e43cf3e9bf51fd/pyobjc_framework_mlcompute-11.0.tar.gz"
#     sha256 "1a1ee9ab43d1824300055ff94b042a26f38f1d18f6f0aa08be1c88278e7284d9"
#   end

#   resource "pyobjc-framework-ModelIO" do
#     url "https://files.pythonhosted.org/packages/ca/7c/b75b84d41e7854ffe9c9a42846f8105227a5fd0b02b690b4a75018b2caa3/pyobjc_framework_modelio-11.0.tar.gz"
#     sha256 "c875eb6ff7f94d18362a00faaa3016ae0c28140326338d18aa03c0b62f1c6b9d"
#   end

#   resource "pyobjc-framework-MultipeerConnectivity" do
#     url "https://files.pythonhosted.org/packages/14/80/4137cb9751aa3846c4954b3e61f948aae17afeb6851e01194aa50683caef/pyobjc_framework_multipeerconnectivity-11.0.tar.gz"
#     sha256 "8278a3483c0b6b88a8888ca76c46fd85808f9df56d45708cbc4e4182a5565cd3"
#   end

#   resource "pyobjc-framework-NaturalLanguage" do
#     url "https://files.pythonhosted.org/packages/62/64/63e97635fa637384bc8c980796573dc7a9e7074a6866aef073b1faf3e11d/pyobjc_framework_naturallanguage-11.0.tar.gz"
#     sha256 "4c9471fa2c48a8fd4899de4406823e66cb0292dbba7b471622017f3647d53fa4"
#   end

#   resource "pyobjc-framework-NetFS" do
#     url "https://files.pythonhosted.org/packages/c7/29/eb569870b52c7581104ed2806cae2d425d60b5ab304128cd58155d5b567f/pyobjc_framework_netfs-11.0.tar.gz"
#     sha256 "3de5f627a62addf4aab8a4d2d07213e9b2b6c8adbe6cc4c332ee868075785a6a"
#   end

#   resource "pyobjc-framework-Network" do
#     url "https://files.pythonhosted.org/packages/78/8e/18e55aff83549e041484d2ee94dd91b29cec9de40508e7fe9c4afec110a7/pyobjc_framework_network-11.0.tar.gz"
#     sha256 "d4dcc02773d7d642a385c7f0d951aeb7361277446c912a49230cddab60a65ab8"
#   end

#   resource "pyobjc-framework-NetworkExtension" do
#     url "https://files.pythonhosted.org/packages/59/90/97dcfac5895b07e891adf634c3a074b68992d132ccfab386c186ac1a598c/pyobjc_framework_networkextension-11.0.tar.gz"
#     sha256 "5ba2254e2c13010b6c4f1e2948047d95eff86bfddfc77716747718fa3a8cb1af"
#   end

#   resource "pyobjc-framework-NotificationCenter" do
#     url "https://files.pythonhosted.org/packages/d7/d0/f0a602e01173531a2b639e283a092cf1f307fd873abd2ed590b9c4122337/pyobjc_framework_notificationcenter-11.0.tar.gz"
#     sha256 "f878b318c693d63d6b8bd1c3e2ad4f8097b22872f18f40142e394d84f1ead9f6"
#   end

#   resource "pyobjc-framework-OpenDirectory" do
#     url "https://files.pythonhosted.org/packages/55/cf/ba0cf807758acdc6a19e4787fdcda2eb59034aa22c4203d04fd49b276981/pyobjc_framework_opendirectory-11.0.tar.gz"
#     sha256 "0c82594f4f0bcf2318c4641527f9243962d7b03e67d4f3fb111b899a299fc7eb"
#   end

#   resource "pyobjc-framework-OSAKit" do
#     url "https://files.pythonhosted.org/packages/d3/4a/e49680f7f3ab9c0632ed9be76a0a59299e7fd797335690b3da4d117f2d7b/pyobjc_framework_osakit-11.0.tar.gz"
#     sha256 "77ac18e2660133a9eeb01c76ad3df3b4b36fd29005fc36bca00f57cca121aac3"
#   end

#   resource "pyobjc-framework-OSLog" do
#     url "https://files.pythonhosted.org/packages/b0/93/0a72353d0212a815bd5e43aec528ce7b28b71d461d26e5fa3882ff96ffa3/pyobjc_framework_oslog-11.0.tar.gz"
#     sha256 "9d29eb7c89a41d7c702dffb6e2e338a2d5219387c8dae22b67754ddf9e2fcb3f"
#   end

#   resource "pyobjc-framework-PassKit" do
#     url "https://files.pythonhosted.org/packages/cb/f8/ebb2bc840f87292a4f60080463ee698ca08516cc958364741dfff2858b33/pyobjc_framework_passkit-11.0.tar.gz"
#     sha256 "2044d9d634dd98b7b624ee09487b27e5f26a7729f6689abba23a4a011febe19c"
#   end

#   resource "pyobjc-framework-PencilKit" do
#     url "https://files.pythonhosted.org/packages/f4/8d/1e97cd72b776e5e1294cbda84325b364702617dd435d32448dcc0a80bd93/pyobjc_framework_pencilkit-11.0.tar.gz"
#     sha256 "9598c28e83f5b7f091592cc1af2b16f7ae94cf00045d8d14ed2c17cb9e4ffd50"
#   end

#   resource "pyobjc-framework-PHASE" do
#     url "https://files.pythonhosted.org/packages/d2/a2/65182dcb44fceb2173f4134d6cd4325dfd0731225b621aa2027d2a03d043/pyobjc_framework_phase-11.0.tar.gz"
#     sha256 "e06a0f8308ae4f3731f88b3e1239b7bdfdda3eef97023e3ce972e2f386451d80"
#   end

#   resource "pyobjc-framework-Photos" do
#     url "https://files.pythonhosted.org/packages/f7/c3/fc755c1f8f411433d7ba2e92f3fe3e7b417e9629675ad6baf94ac8b01e64/pyobjc_framework_photos-11.0.tar.gz"
#     sha256 "cfdfdefb0d560b091425227d5c0e24a40b445b5251ff4d37bd326cd8626b80cd"
#   end

#   resource "pyobjc-framework-PhotosUI" do
#     url "https://files.pythonhosted.org/packages/e4/2c/70ac99fb2b7ba14d220c78cf6401c0c7a47992269f85f699220a6a2cff09/pyobjc_framework_photosui-11.0.tar.gz"
#     sha256 "3c65342e31f6109d8229992b2712b29cab1021475969b55f4f215dd97e2a99db"
#   end

#   resource "pyobjc-framework-PreferencePanes" do
#     url "https://files.pythonhosted.org/packages/35/01/81cc46e0a92d15f2b664b2efdcc8fd310acac570c9f63a99d446e0489784/pyobjc_framework_preferencepanes-11.0.tar.gz"
#     sha256 "ee000c351befeb81f4fa678ada85695ca4af07933b6bd9b1947164e16dd0b3e5"
#   end

#   resource "pyobjc-framework-PushKit" do
#     url "https://files.pythonhosted.org/packages/17/ab/7fe55ce5b32c434142be026ec27b1801a2d4694b159b502f9ecd568eebf2/pyobjc_framework_pushkit-11.0.tar.gz"
#     sha256 "df9854ed4065c50022863b3c11c2a21c4279b36c2b5c8f08b834174aacb44e81"
#   end

#   resource "pyobjc-framework-Quartz" do
#     url "https://files.pythonhosted.org/packages/a5/ad/f00f3f53387c23bbf4e0bb1410e11978cbf87c82fa6baff0ee86f74c5fb6/pyobjc_framework_quartz-11.0.tar.gz"
#     sha256 "3205bf7795fb9ae34747f701486b3db6dfac71924894d1f372977c4d70c3c619"
#   end

#   resource "pyobjc-framework-QuickLookThumbnailing" do
#     url "https://files.pythonhosted.org/packages/50/a1/35ca40d2d4ab05acbc9766986d482482d466529003711c7b4e52a8df4935/pyobjc_framework_quicklookthumbnailing-11.0.tar.gz"
#     sha256 "40763284bd0f71e6a55803f5234ad9cd8e8dd3aaaf5e1fd204e6c952b3f3530d"
#   end

#   resource "pyobjc-framework-ReplayKit" do
#     url "https://files.pythonhosted.org/packages/aa/43/c751c517dbb8ee599a31e59832c01080473c7964b6996ca29906f46c0967/pyobjc_framework_replaykit-11.0.tar.gz"
#     sha256 "e5693589423eb9ad99d63a7395169f97b484a58108321877b0fc27c748344593"
#   end

#   resource "pyobjc-framework-SafariServices" do
#     url "https://files.pythonhosted.org/packages/40/ec/c9a97b1aa713145cc8c522c4146af06b293cfe1a959a03ee91007949533b/pyobjc_framework_safariservices-11.0.tar.gz"
#     sha256 "dba416bd0ed5f4481bc400bf56ce57e982c19feaae94bc4eb75d8bda9af15b7e"
#   end

#   resource "pyobjc-framework-SafetyKit" do
#     url "https://files.pythonhosted.org/packages/4e/30/89bfdbdca93e57b19891ddeff1742b20a2019cdeb2e44902027dce2642e1/pyobjc_framework_safetykit-11.0.tar.gz"
#     sha256 "9ec996a6a8eecada4b9fd1138244bcffea96a37722531f0ec16566049dfd4cdb"
#   end

#   resource "pyobjc-framework-SceneKit" do
#     url "https://files.pythonhosted.org/packages/26/3f/a2761585399e752bce8275c9d56990d4b83e57b13d06dd98335891176a89/pyobjc_framework_scenekit-11.0.tar.gz"
#     sha256 "c0f37019f8de2a583f66e6d14dfd4ae23c8d8703e93f61c1c91728a21f62cd26"
#   end

#   resource "pyobjc-framework-ScreenCaptureKit" do
#     url "https://files.pythonhosted.org/packages/77/90/71f10db2f52ea324f82eaccc959442c43d21778cc5b1294c29e1942e635c/pyobjc_framework_screencapturekit-11.0.tar.gz"
#     sha256 "ca2c960e28216e56f33e4ca9b9b1eda12d9c17b719bae727181e8b96f0314c4b"
#   end

#   resource "pyobjc-framework-ScreenSaver" do
#     url "https://files.pythonhosted.org/packages/f6/b6/71c20259a1bfffcb5103be62564006b1bbc21f80180658101e2370683bcb/pyobjc_framework_screensaver-11.0.tar.gz"
#     sha256 "2e4c643624cc0cffeafc535c43faf5f8de8be030307fa8a5bea257845e8af474"
#   end

#   resource "pyobjc-framework-ScreenTime" do
#     url "https://files.pythonhosted.org/packages/42/a7/ee60ee5b0471a4367eaa1c8a243418874fd48fac5dbdfdd318a653d94aaa/pyobjc_framework_screentime-11.0.tar.gz"
#     sha256 "6dd74dc64be1865346fcff63b8849253697f7ac68d83ee2708019cf3852c1cd7"
#   end

#   resource "pyobjc-framework-ScriptingBridge" do
#     url "https://files.pythonhosted.org/packages/4d/f0/592af19047935e44c07ddd1eba4f05aa8eb460ee842f7d5d48501231cd69/pyobjc_framework_scriptingbridge-11.0.tar.gz"
#     sha256 "65e5edd0ea608ae7f01808b963dfa25743315f563705d75c493c2fa7032f88cc"
#   end

#   resource "pyobjc-framework-SearchKit" do
#     url "https://files.pythonhosted.org/packages/15/27/9676327cf7d13346d546325b411a5deaa072bd0fbe733c8aae8a9a00c0e0/pyobjc_framework_searchkit-11.0.tar.gz"
#     sha256 "36f3109e74bc5e6fab60c02be804d5ed1c511ad51ea0d597a6c6a9653573ddf5"
#   end

#   resource "pyobjc-framework-Security" do
#     url "https://files.pythonhosted.org/packages/c5/75/4b916bff8c650e387077a35916b7a7d331d5ff03bed7275099d96dcc6cd9/pyobjc_framework_security-11.0.tar.gz"
#     sha256 "ac078bb9cc6762d6f0f25f68325dcd7fe77acdd8c364bf4378868493f06a0758"
#   end

#   resource "pyobjc-framework-SecurityFoundation" do
#     url "https://files.pythonhosted.org/packages/84/d6/0d817edb11d2bdb0f536059e913191e587f1984e39397bb3341209d92c21/pyobjc_framework_securityfoundation-11.0.tar.gz"
#     sha256 "5ae906ded5dd40046c013a7e0c1f59416abafb4b72bc947b6cd259749745e637"
#   end

#   resource "pyobjc-framework-SecurityInterface" do
#     url "https://files.pythonhosted.org/packages/b1/88/d7c4942650707fe5b1d3b45b42684f58f2cab7d2772ec74ca96ecef575eb/pyobjc_framework_securityinterface-11.0.tar.gz"
#     sha256 "8843a27cf30a8e4dd6e2cb7702a6d65ad4222429f0ccc6c062537af4683b1c08"
#   end

#   resource "pyobjc-framework-SensitiveContentAnalysis" do
#     url "https://files.pythonhosted.org/packages/00/e4/f1e0f150ae6c6ad7dde9b248f34f324f4f8b1c42260dbf62420f80d79ba9/pyobjc_framework_sensitivecontentanalysis-11.0.tar.gz"
#     sha256 "0f09034688f894c0f4409c16adaf857d78714d55472de4aa2ac40fbd7ba233d6"
#   end

#   resource "pyobjc-framework-ServiceManagement" do
#     url "https://files.pythonhosted.org/packages/1b/59/8d38b5cdbcfb57ab842e080436dbd04d5a5d2080e99a2ea1e286cfad12a8/pyobjc_framework_servicemanagement-11.0.tar.gz"
#     sha256 "10b1bbcee3de5bb2b9fc3d6763eb682b7a1d9ddd4bd2c882fece62783cb17885"
#   end

#   resource "pyobjc-framework-SharedWithYou" do
#     url "https://files.pythonhosted.org/packages/20/84/db667061f815537717a6cac891df01a45b65e6feaa2dfa0c9d2e3803a1ef/pyobjc_framework_sharedwithyou-11.0.tar.gz"
#     sha256 "a3a03daac77ad7364ed22109ca90c6cd2dcb7611a96cbdf37d30543ef1579399"
#   end

#   resource "pyobjc-framework-SharedWithYouCore" do
#     url "https://files.pythonhosted.org/packages/52/2a/86904cd9cc3bf5cdb9101481e17e67358f39f81ffa0f36768097287e34b3/pyobjc_framework_sharedwithyoucore-11.0.tar.gz"
#     sha256 "3932452677df5d67ea27845ab26ccaaa1d1779196bf16b62c5655f13d822c82d"
#   end

#   resource "pyobjc-framework-ShazamKit" do
#     url "https://files.pythonhosted.org/packages/dd/2a/1f4ad92260860e500cb61119e8e7fe604b0788c32f5b00446b5a56705a2b/pyobjc_framework_shazamkit-11.0.tar.gz"
#     sha256 "cea736cefe90b6bb989d0a8abdc21ef4b3b431b27657abb09d6deb0b2c1bd37a"
#   end

#   resource "pyobjc-framework-Social" do
#     url "https://files.pythonhosted.org/packages/6f/56/ed483f85105ef929241ab1a6ed3dbfd0be558bb900e36b274f997db9c869/pyobjc_framework_social-11.0.tar.gz"
#     sha256 "ccedd6eddb6744049467bce19b4ec4f0667ec60552731c02dcbfa8938a3ac798"
#   end

#   resource "pyobjc-framework-SoundAnalysis" do
#     url "https://files.pythonhosted.org/packages/9a/14/697ca1b76228a96bb459f3cf43234798b05fdf11691202449d98d9d887af/pyobjc_framework_soundanalysis-11.0.tar.gz"
#     sha256 "f541fcd04ec5d7528dd2ae2d873a92a3092e87fb70b8df229c79defb4d807d1a"
#   end

#   resource "pyobjc-framework-Speech" do
#     url "https://files.pythonhosted.org/packages/5f/39/e9f0a73243c38d85f8da6a1a2afda73503e2fcc31a72f5479770bceae0c1/pyobjc_framework_speech-11.0.tar.gz"
#     sha256 "92a191c3ecfe7032eea2140ab5dda826a59c7bb84b13a2edb0ebc471a76e6d7b"
#   end

#   resource "pyobjc-framework-SpriteKit" do
#     url "https://files.pythonhosted.org/packages/b7/6e/642e64f5b62a7777c784931c7f018788b5620e307907d416c837fd0c4315/pyobjc_framework_spritekit-11.0.tar.gz"
#     sha256 "aa43927e325d4ac253b7c0ec4df95393b0354bd278ebe9871803419d12d1ef80"
#   end

#   resource "pyobjc-framework-StoreKit" do
#     url "https://files.pythonhosted.org/packages/69/ca/f4e5a1ff8c98bbbf208639b2bef7bf3b88936bccda1d8ed34aa7d052f589/pyobjc_framework_storekit-11.0.tar.gz"
#     sha256 "ef7e75b28f1fa8b0b6413e64b9d5d78b8ca358fc2477483d2783f688ff8d75e0"
#   end

#   resource "pyobjc-framework-Symbols" do
#     url "https://files.pythonhosted.org/packages/dc/92/a20a3d7af3c99e0ea086e43715675160a04b86c1d069bdaeb3acdb015d92/pyobjc_framework_symbols-11.0.tar.gz"
#     sha256 "e3de7736dfb8107f515cfd23f03e874dd9468e88ab076d01d922a73fefb620fa"
#   end

#   resource "pyobjc-framework-SyncServices" do
#     url "https://files.pythonhosted.org/packages/5a/22/642186906f672461bab1d7773b35ef74e432b9789ca2248186b766e9fd3b/pyobjc_framework_syncservices-11.0.tar.gz"
#     sha256 "7867c23895a8289da8d56e962c144c36ed16bd101dc07d05281c55930b142471"
#   end

#   resource "pyobjc-framework-SystemConfiguration" do
#     url "https://files.pythonhosted.org/packages/70/70/ebebf311523f436df2407f35d7ce62482c01e530b77aceb3ca6356dcef43/pyobjc_framework_systemconfiguration-11.0.tar.gz"
#     sha256 "06487f0fdd43c6447b5fd3d7f3f59826178d32bcf74f848c5b3ea597191d471d"
#   end

#   resource "pyobjc-framework-SystemExtensions" do
#     url "https://files.pythonhosted.org/packages/62/4b/904d818debf6216b7be009d492d998c819bf2f2791bfb75870a952e32cf9/pyobjc_framework_systemextensions-11.0.tar.gz"
#     sha256 "da293c99b428fb7f18a7a1d311b17177f73a20c7ffa94de3f72d760df924255e"
#   end

#   resource "pyobjc-framework-ThreadNetwork" do
#     url "https://files.pythonhosted.org/packages/c4/17/fc8fde4eeb6697e0a5ba1a306cd62d3a95b53f3334744cd22b87037d8a14/pyobjc_framework_threadnetwork-11.0.tar.gz"
#     sha256 "f5713579380f6fb89c877796de86cb4e98428d7a9cbfebe566fb827ba23b2d8e"
#   end

#   resource "pyobjc-framework-UniformTypeIdentifiers" do
#     url "https://files.pythonhosted.org/packages/56/4f/fd571c1f87d5ee3d86c4d2008806e9623d2662bbc788d9001b3fff35275f/pyobjc_framework_uniformtypeidentifiers-11.0.tar.gz"
#     sha256 "6ae6927a3ed1f0197a8c472226f11f46ccd5ed398b4449613e1d10346d9ed15d"
#   end

#   resource "pyobjc-framework-UserNotifications" do
#     url "https://files.pythonhosted.org/packages/78/f5/ca3e6a7d940b3aca4323e4f5409b14b5d2eb45432158430c584e3800ce4d/pyobjc_framework_usernotifications-11.0.tar.gz"
#     sha256 "7950a1c6a8297f006c26c3d286705ffc2a07061d6e844f1106290572097b872c"
#   end

#   resource "pyobjc-framework-UserNotificationsUI" do
#     url "https://files.pythonhosted.org/packages/e9/e8/f0d50cdc678260a628b92e55b5752155f941c2f72b96fe3f2412a28c5d79/pyobjc_framework_usernotificationsui-11.0.tar.gz"
#     sha256 "d0ec597d189b4d228b0b836474aef318652c1c287b33442a1403c49dc59fdb7f"
#   end

#   resource "pyobjc-framework-VideoSubscriberAccount" do
#     url "https://files.pythonhosted.org/packages/7e/2e/6a7debd84911a9384b4e7a9cc3f308e3461a00a9d74f33b153bdd872f15f/pyobjc_framework_videosubscriberaccount-11.0.tar.gz"
#     sha256 "163b32f361f48b9d20f317461464abd4427b3242693ae011633fc443c7d5449c"
#   end

#   resource "pyobjc-framework-VideoToolbox" do
#     url "https://files.pythonhosted.org/packages/ba/2d/c031a132b142fcd20846cc1ac3ba92abaa58ec04164fd36ca978d9374f1c/pyobjc_framework_videotoolbox-11.0.tar.gz"
#     sha256 "a54ed8f8bcbdd2bdea2a296dc02a8a7d42f81e2b6ccbf4d1f10cec5e7a09bec0"
#   end

#   resource "pyobjc-framework-Virtualization" do
#     url "https://files.pythonhosted.org/packages/65/8d/e57e1f2c5ac950dc3da6c977effde4a55b8b70424b1bdb97b5530559f5bc/pyobjc_framework_virtualization-11.0.tar.gz"
#     sha256 "03e1c1fa20950aa7c275e5f11f1257108b6d1c6a7403afb86f4e9d5fae87b73c"
#   end

#   resource "pyobjc-framework-Vision" do
#     url "https://files.pythonhosted.org/packages/ef/53/dc2e0562a177af9306efceb84bc21f5cf7470acaa8f28f64e62bf828b7e1/pyobjc_framework_vision-11.0.tar.gz"
#     sha256 "45342e5253c306dbcd056a68bff04ffbfa00e9ac300a02aabf2e81053b771e39"
#   end

#   resource "pyobjc-framework-WebKit" do
#     url "https://files.pythonhosted.org/packages/79/4f/02a6270acf225c2a34339677e796002c77506238475059ae6e855358a40c/pyobjc_framework_webkit-11.0.tar.gz"
#     sha256 "fa6bedf9873786b3376a74ce2ea9dcd311f2a80f61e33dcbd931cc956aa29644"
#   end

#   def install
#     virtualenv_install_with_resources
#   end
# end
