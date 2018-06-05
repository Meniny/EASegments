Pod::Spec.new do |s|
  s.name        = 'EASegments'
  s.module_name = 'EASegments'
  s.version     = '1.0.1'
  s.summary     = 'A segments control for iOS.'

  s.homepage    = 'https://github.com/Meniny/EASegments'
  s.license     = { type: 'MIT', file: 'LICENSE.md' }
  s.authors     = { 'Elias Abel' => 'admin@meniny.cn' }
  s.social_media_url = 'https://meniny.cn/'

  s.ios.deployment_target     = '8.0'

  s.source              = { git: 'https://github.com/Meniny/EASegments.git', tag: s.version.to_s }
  s.source_files        = 'EASegments/**/*.swift'

  s.requires_arc        = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
  s.swift_version       = '4.1'
end
