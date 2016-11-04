Pod::Spec.new do |s|
    s.name             = "MTLManagedObjectAdapter"
    s.version          = "1.1"
    s.summary          = "Model framework for Cocoa and Cocoa Touch."
    s.homepage         = "https://github.com/Mantle/Mantle"
    s.license          = "MIT"
    s.authors          = { "GitHub" => "support@github.com" }
    s.source           = { :git => "https://github.com/biowink/MTLManagedObjectAdapter.git", :tag => s.version.to_s }
    s.source_files     = "MTLManagedObjectAdapter"

    s.ios.deployment_target = '7.0'
    s.osx.deployment_target = '10.7'
    s.watchos.deployment_target = '2.0' 
    s.tvos.deployment_target = '9.0'
    
    s.dependencies     =  { :Mantle => ["~> 2.0"] }
    s.requires_arc     = true
    s.frameworks       = "Foundation", "CoreData"

    s.subspec 'extobjc' do |ss|
        ss.source_files         = 'MTLManagedObjectAdapter/extobjc'
        ss.private_header_files = 'MTLManagedObjectAdapter/extobjc/*.h'
    end
end
