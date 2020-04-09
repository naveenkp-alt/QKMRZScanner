Pod::Spec.new do |s|
  s.name     = "MRZScanner"
  s.version  = "1.0.2"
  s.platform = :ios, "11"
  s.swift_version = "4.2"

  s.summary  = "Scans MRZ (Machine Readable Zone) from identity documents (passport, id, visa)."
  s.author   = { "Matej Dorcak" => "sss.mado@gmail.com" }
  s.homepage = "https://github.com/naveenkp-alt/QKMRZScanner"
  s.license  = { :type => "MIT", :file => "LICENSE.md" }

  s.source   = { :git => "https://github.com/naveenkp-alt/QKMRZScanner.git", :tag => "v#{s.version}" }
  s.source_files = "QKMRZScanner/**/*.{swift}"
  s.resources    = "QKMRZScanner/Supporting Files/tessdata"
  s.frameworks   =  "Foundation", "UIKit", "AVFoundation", "CoreImage", "AudioToolbox"
  
  s.dependency "QKMRZParser"
  s.dependency "SwiftyTesseract"
end