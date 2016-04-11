# HYLabel
### 框架的作用
* 用于识别Label中的@用户-话题##-链接
* 框架地址:[https://github.com/coderwhy/HYLabel](https://github.com/coderwhy/HYLabel)

### 使用效果
* 如图所示
* 并且可以监听点击<br>
* ![image](https://raw.githubusercontent.com/coderwhy/HYLabel/master/ReadmeImage/image1.png)


### 使用方式
* 导入框架
	* 直接将HYLabel.swift拖入项目
	* 该框架支持cocoapods:pod 'HYLabel', '~> 1.0.1'
* 将UIlabel修改为HYLabel
* 按照下列方式监听点击即可
* OC监听方式

```objc

    self.demoLabel.userTapHandler = ^(HYLabel *label, NSString *user, NSRange range){
        NSLog(@"%@", label);
        NSLog(@"%@", user);
        NSLog(@"%@", NSStringFromRange(range));
    };
    
    self.demoLabel.linkTapHandler = ^(HYLabel *label, NSString *link, NSRange range){
        NSLog(@"%@", label);
        NSLog(@"%@", link);
        NSLog(@"%@", NSStringFromRange(range));
    };
    
    self.demoLabel.userTapHandler = ^(HYLabel *label, NSString *topic, NSRange range){
        NSLog(@"%@", label);
        NSLog(@"%@", topic);
        NSLog(@"%@", NSStringFromRange(range));
    };
```

* swift监听方式

```swift

    // 监听@谁谁谁的点击
    demoLabel.userTapHandler = { (label, user, range) in
        print(label)
        print(user)
        print(range)
    }
    
    // 监听链接的点击
    demoLabel.linkTapHandler = { (label, link, range) in
        print(label)
        print(link)
        print(range)
    }
    
    // 监听话题的点击
    demoLabel.topicTapHandler = { (label, topic, range) in
        print(label)
        print(topic)
        print(range)
    }
```



