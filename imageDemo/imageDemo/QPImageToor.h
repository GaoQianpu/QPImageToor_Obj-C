//
//  QPImageToor.h
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface QPImageToor : NSObject

+ (UIImage *)stretchiMage:(UIImage *)image;

+ (UIImage *)upDataImageSize:(UIImage *)image andSize:(CGSize)size;

+ (UIImage *)cutImage:(UIImage *)image;
@end
