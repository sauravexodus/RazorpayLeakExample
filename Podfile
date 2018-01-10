# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'RazorpayLeakExample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for RazorpayLeakExample
  pod 'razorpay-pod'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.0'
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
end
