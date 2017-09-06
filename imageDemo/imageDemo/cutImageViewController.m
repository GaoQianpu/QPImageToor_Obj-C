//
//  cutImageViewController.m
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import "cutImageViewController.h"

@interface cutImageViewController ()

@end

@implementation cutImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createImage];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createImage{
    UIImage * aImage = QPImage(@"2");
    //得到正方形image
    UIImage * newImage = [QPImageToor cutImage:aImage];
    //把图片缩小一点，因为太大的话，第一屏幕放不下，第二占内存
    UIImage * sizeImage = [QPImageToor upDataImageSize:newImage andSize:CGSizeMake(newImage.size.width*0.3, newImage.size.height*0.3)];
    UIImageView * imageView = [[UIImageView alloc]initWithImage:sizeImage];
    imageView.frame = CGRectMake(0, 64, sizeImage.size.width, sizeImage.size.height);
    [self.view addSubview:imageView];
}

@end
