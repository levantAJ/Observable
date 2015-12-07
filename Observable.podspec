Pod::Spec.new do |s|
  s.module_name = 'Observable'
  s.name = 'Observable'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'Observable utilities for @levantAJ team'
  s.homepage = 'https://github.com/levantAJ'
  s.authors = { 'Le Tai' => 'sirlevantai@gmail.com' }
  s.source = { :git => 'https://github.com/levantAJ/Observable.git', :tag => s.version }
  s.source_files = 'Observable/**/*.{h,swift}'
  s.resources = "Observable/**/*.{xib,strings}"
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
end
