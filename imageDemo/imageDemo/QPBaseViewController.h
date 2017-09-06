//
//  QPBaseViewController.h
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QPBaseViewController : UIViewController

-(void)push:(UIViewController *)viewController;

-(void)showOriginalImage:(NSString *)named;

-(void)addRightBarBtn;

@end
