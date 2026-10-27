Pod::Spec.new do |s|
  s.name             = 'APIVerveTimezoneLookup'
  s.version          = '1.2.3'
  s.summary          = 'Timezone Lookup resolves any city or IANA zone name to its local time, UTC offset, and calendar date.'
  s.description      = <<-'DESC'
Timezone Lookup resolves any city or IANA zone name to its local time, UTC offset, and calendar date. Responses include 12-hour and 24-hour clocks plus the minute offset from GMT.

This iOS/macOS SDK provides a convenient way to access the Timezone Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/timezonelookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/timezonelookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTimezoneLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
