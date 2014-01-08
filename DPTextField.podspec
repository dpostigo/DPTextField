Pod::Spec.new do |s|
  s.name         = "DPTextField"
  s.version      = "0.0.1"
  s.summary      = "In development."
  s.homepage     = "http://dpostigo.com"
  s.license      = 'BSD'
  s.author       = { "Dani Postigo" => "dani@firstperson.is" }
  s.source       = { :git => "https://github.com/dpostigo/DPTextField.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.source_files = 'DPTextField/*.{h,m}'
  s.requires_arc = true

end
