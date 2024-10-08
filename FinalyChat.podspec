#
# Be sure to run `pod lib lint FinalyChat.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FinalyChat'
  s.version          = '0.2.0'
  s.summary          = 'A ChatTestDemo App That is Demo. that is enough for now'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'A ChatTestDemo App That is Demo. Once Intalled and the use it Easily.'
                       DESC

  s.homepage         = 'https://github.com/sanjaykhatri02/FinalyChat'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sanjay.khatri02@outlook.com' => 'sanjay.khatri02@outlook.com' }
  s.source           = { :git => 'https://github.com/sanjaykhatri02/FinalyChat.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

    s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    
    #s.source       = { :http => 'https://github.com/sanjaykhatri02/FinalChat/raw/main//ChatDummyNewy.zip' }
    
    #s.source_files = 'Classes/**/*.{swift,h,m}'
    #s.resources = 'Resources/**/*.{storyboard,xib,xcassets,png,jpeg,jpg,gif}'
    

    #s.preserve_paths      = "ChatDummyNewy.xcframework"
    #s.vendored_frameworks = "ChatDummyNewy.xcframework"
    
    s.preserve_paths      = '**/ChatDummyNewy.xcframework'
    s.vendored_frameworks = '**/ChatDummyNewy.xcframework'
    
    s.frameworks = ['UIKit', 'Foundation', 'QuickLook', 'Photos', 'MobileCoreServices']

    # Static framework to avoid conflicts with dynamic frameworks
    s.static_framework = false

#    s.dependency 'Alamofire', '>= 5.0', '< 6.0'
#    s.dependency 'SwiftyJSON', '>= 5.0', '< 6.0'
#    s.dependency 'FMDB', '>= 2.7', '< 3.0'
#    s.dependency 'SwiftSignalRClient', '>= 0.8', '< 1.0'
#    s.dependency 'IQKeyboardManager', '>= 6.5', '< 7.0'
#    s.dependency 'Firebase/Core'
#    s.dependency 'Firebase/Messaging'
#    
#    s.dependency 'Cosmos', '>= 23.0', '< 24.0'


    
    #s.static_framework = true
    
    # Avoid exposing some dependencies to the main app
#     s.subspec 'Private' do |sp|
#       sp.dependency 'SwiftSignalRClient', '>= 0.8', '< 1.0'
#       sp.dependency 'IQKeyboardManager', '>= 6.5', '< 7.0'
#       sp.dependency 'Kingfisher', '>= 7.0.0', '< 8.0.3'
#     end
     
     s.subspec 'AlamofireSupport' do |sp|
       sp.dependency 'Alamofire', '>= 5.0', '< 6.0'
     end
     
     s.subspec 'SwiftyJSONSupport' do |sp|
       sp.dependency 'SwiftyJSON', '>= 5.0', '< 6.0'
     end
     
     s.subspec 'FMDBSupport' do |sp|
       sp.dependency 'FMDB', '>= 2.7', '< 3.0'
     end
     
     s.subspec 'SwiftSignalRClientSupport' do |sp|
       sp.dependency 'SwiftSignalRClient', '>= 0.8', '< 1.0'
     end
     
     s.subspec 'IQKeyboardManagerSupport' do |sp|
       sp.dependency 'IQKeyboardManager', '>= 6.5', '< 7.0'
     end
     
     s.subspec 'FirebaseCoreSupport' do |sp|
       sp.dependency 'Firebase/Core'
     end
     
     s.subspec 'FirebaseMessagingSupport' do |sp|
       sp.dependency 'Firebase/Messaging'
     end
     
     s.subspec 'CosmosSupport' do |sp|
       sp.dependency 'Cosmos', '>= 23.0', '< 24.0'
     end
     
#     s.subspec 'KingfisherSupport' do |sp|
#       sp.dependency 'Kingfisher', '>= 7.0', '< 8.0.3'
#     end
     
     s.static_framework = false

#     s.default_subspecs = 'Private'

    
  
  # s.resource_bundles = {
  #   'FinalyChat' => ['FinalyChat/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
