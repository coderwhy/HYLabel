Pod::Spec.new do |s|
    s.name         = 'HYLabel'
    s.version      = '1.0.1'
    s.summary      = '用于识别Label中的@用户-话题##-链接'
    s.homepage     = 'https://github.com/coderwhy/HYLabel'
    s.license      = 'MIT'
    s.authors      = {'coderwhy' => '372623326@qq.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/coderwhy/HYLabel.git', :tag => s.version}
    s.source_files = 'HYLabel/Source/*.swift'
    s.framework    = 'UIKit'
    s.requires_arc = true
end