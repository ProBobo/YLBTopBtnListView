Pod::Spec.new do |s|
s.name = 'YLBTopBtnListView'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = 'A in iOS.'
s.homepage = 'https://github.com/ylb3303/YLBTopBtnListView'
s.authors = { '余礼钵' => '564885081@qq.com' }
s.source = { :git => "https://github.com/ylb3303/YLBTopBtnListView.git", :tag => s.version.to_s}
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = 'YLBTopBtnListView/*'
end
