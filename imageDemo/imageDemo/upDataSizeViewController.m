//
//  upDataSizeViewController.m
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import "upDataSizeViewController.h"

@interface upDataSizeViewController ()

@property (nonatomic, strong) UIImage * upDataImage;

@property (nonatomic, strong) UIImageView * upDataImageView;

@end

@implementation upDataSizeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addRightBarBtn];
    [self showOriginalImage:@"1"];
    [self createImageView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)rightClick:(UIBarButtonItem *)item{
    UIImageView * imageView = [self.view viewWithTag:1];
    if (imageView.hidden) {
        imageView.hidden = NO;
        _upDataImageView.hidden = YES;
    }else{
        imageView.hidden = YES;
        _upDataImageView.hidden = NO;
    }
}
-(void)createImageView{
    UIImage * aImage = QPImage(@"1");
    UIImage * bImage = [QPImageToor upDataImageSize:aImage andSize:CGSizeMake(aImage.size.width * 0.3, aImage.size.height * 0.3)];
    _upDataImageView = [[UIImageView alloc]initWithImage:bImage];
    _upDataImageView.frame = CGRectMake(0, 64, bImage.size.width, bImage.size.height);
    [self.view addSubview:_upDataImageView];
    _upDataImageView.hidden = YES;
}
@end
