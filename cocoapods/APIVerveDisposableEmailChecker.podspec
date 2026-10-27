Pod::Spec.new do |s|
  s.name             = 'APIVerveDisposableEmailChecker'
  s.version          = '1.2.3'
  s.summary          = 'Disposable Email Checker is a disposable email detection API that tests whether an email address belongs to a disposable or temp mail...'
  s.description      = <<-'DESC'
Disposable Email Checker is a disposable email detection API that tests whether an email address belongs to a disposable or temp mail provider. Pass any email to get back the domain parsed from it and a true or false flag showing whether it is temporary. That also makes it a quick way to drop throwaway domains when you derive a company domain from a list of emails.

This iOS/macOS SDK provides a convenient way to access the Disposable Email Checker from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/emaildisposablechecker?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/emaildisposablechecker-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDisposableEmailChecker/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
