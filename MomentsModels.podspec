#
# Be sure to run `pod lib lint MomentsModels.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MomentsModels"
  s.version          = "0.0.0"
  s.summary          = "Realm Models for Moments."
  s.description      = <<-DESC
                       This is an internal pod for storing Models of Moments

                       * RealmSwift-based.
                       * Models only
                       * Unit Tests included (intend)
                       DESC
  # s.homepage         = "https://github.com/1request/MomentsModels"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Harry Ng" => "harryworld@gmail.com" }
  s.source           = { :git => "https://github.com/1request/MomentsModels.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/harryworld'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MomentsModels' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'RealmSwift', '~> 0.95'
end
