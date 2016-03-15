//
//  ViewController.m
//  HYLabelDemoOC
//
//  Created by apple on 16/3/15.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "ViewController.h"
#import "HYLabelDemoOC-Swift.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet HYLabel *demoLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.demoLabel.text = @"作者:@coderwhy 话题:#Label字符串识别# 网址:http://www.520it.com";
}

@end
