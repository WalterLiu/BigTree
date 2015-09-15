//
//  ViewController.m
//  HomePages
//
//  Created by 刘艳峰 on 9/14/15.
//  Copyright (c) 2015 刘艳峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *title = @"abcdefdfdfjkfjfkdsajfkdjsfkjdkfjdkfjdkjfkdjfkdjfdjkfdjfkdjfkdjfkjdkfjdkafjdkjfkdjfkdjfdkjfkdjfkdjfkjdkfjkdfj";
    [self.myBtn setTitle:title forState:UIControlStateNormal];
    [self.myBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.myBtn.titleLabel.numberOfLines = 0;
//    self.myBtn.titleLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myBtnClicked:(id)sender {
}
@end

@interface UIButton (CustomeCategory)

@end

@implementation UIButton (CustomeCategory)

//- (CGRect)contentRectForBounds:(CGRect)bounds {
//    CGRect rect = bounds;
//    rect.size.height = 10.0;
//    NSLog(@"bounds: %@", NSStringFromCGRect(bounds));
//    NSLog(@"rect: %@", NSStringFromCGRect(rect));
//    return rect;
//}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGRect rect = contentRect;
    rect.size.height = 40.0;
    NSLog(@"bounds: %@", NSStringFromCGRect(contentRect));
    NSLog(@"rect: %@", NSStringFromCGRect(rect));
    return rect;
}

@end
