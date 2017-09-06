//
//  ViewController.m
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import "ViewController.h"

#import "StretchViewController.h"
#import "upDataSizeViewController.h"
#import "cutImageViewController.h"
#import "puzzleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//改变图片size
- (IBAction)upDataSizeClicked:(UIButton *)sender {
    upDataSizeViewController * viewController = [upDataSizeViewController new];
    [self push:viewController];
}

//图片拉伸
- (IBAction)StretchClicked:(UIButton *)sender {
    StretchViewController * viewController = [StretchViewController new];
    [self push:viewController];
}

//裁剪图片
- (IBAction)cuteImageClicked:(UIButton *)sender {
    cutImageViewController * viewController = [cutImageViewController new];
    [self push:viewController];
}

//图片拼接
- (IBAction)puzzleClicked:(UIButton *)sender {
    puzzleViewController * viewController = [puzzleViewController new];
    [self push:viewController];
}

@end
