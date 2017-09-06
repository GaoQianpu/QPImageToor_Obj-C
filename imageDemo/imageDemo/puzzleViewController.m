//
//  puzzleViewController.m
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import "puzzleViewController.h"

@interface puzzleViewController ()

@end

@implementation puzzleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self puzzImage];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)puzzImage{
    UIImage * image1 = QPImage(@"2");
    UIImage * image2 = QPImage(@"3");
    //将两张图设置为等宽
    UIImage * im1 = [QPImageToor upDataImageSize:image1 andSize:CGSizeMake(200, 200*image1.size.height/image1.size.width)];
    UIImage * im2 = [QPImageToor upDataImageSize:image2 andSize:CGSizeMake(200, 200*image2.size.height/image2.size.width)];

    //拼接尺寸及坐标
    CGRect rect1 = CGRectMake(0, 0, im1.size.width , im1.size.height);
    CGRect rect2 = CGRectMake(0, im1.size.height + 5, im2.size.width, im2.size.height);

    CGSize size = CGSizeMake(200, im1.size.height + im2.size.height + 5);
    UIGraphicsBeginImageContextWithOptions(size, false, 2.0);
    [im1 drawInRect:rect1];
    [im2 drawInRect:rect2];
    UIImage * drawImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //展示
    UIImageView * imageView = [[UIImageView alloc]initWithImage:drawImage];
    imageView.frame = CGRectMake(100, 64, drawImage.size.width, drawImage.size.height);
    [self.view addSubview:imageView];
}

@end
