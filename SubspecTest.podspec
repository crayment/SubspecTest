#
# Be sure to run `pod lib lint SubspecTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SubspecTest"
  s.version          = "0.1.0"
  s.summary          = "A short description of SubspecTest."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/<GITHUB_USERNAME>/SubspecTest"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Cody Rayment" => "crayment16@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/SubspecTest.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.resource_bundles = {
    'SubspecTest' => ['SubspecTest/Assets/*.png']
  }
  
  s.subspec 'Main' do |s|
    s.source_files = 'SubspecTest/Classes/Main/**/*'
    s.dependency 'Freddy'
  end
  
  s.subspec 'Sub1' do |s|
    s.source_files = 'SubspecTest/Classes/Sub1**/*'
    s.dependency 'Freddy'
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
