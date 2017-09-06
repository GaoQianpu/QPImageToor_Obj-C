//
//  QPBaseViewController.m
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import "QPBaseViewController.h"

@interface QPBaseViewController ()

@end

@implementation QPBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)push:(UIViewController *)viewController{
    [self.navigationController pushViewController:viewController animated:YES];
}
//显示原图
-(void)showOriginalImage:(NSString *)named{
    UIImage * image = QPImage(named);
    CGSize size = image.size;
    UIImageView * imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame = CGRectMake(0, 64, size.width, size.height);
    imageView.tag = 1;
    [self.view addSubview:imageView];
}
//添加右侧按钮
-(void)addRightBarBtn{
    UIBarButtonItem * rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"item" style:UIBarButtonItemStylePlain target:self action:@selector(rightClick:)];
    self.navigationItem.rightBarButtonItem = rightBtn;
}

-(void)rightClick:(UIBarButtonItem *)item{
}
@end
