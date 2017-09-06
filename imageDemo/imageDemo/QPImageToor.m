//
//  QPImageToor.m
//  imageDemo
//
//  Created by 枫、 on 2017/9/6.
//  Copyright © 2017年 枫、. All rights reserved.
//

#import "QPImageToor.h"

@implementation QPImageToor

+ (UIImage *)stretchiMage:(UIImage *)image{
    UIImage * newImage = nil;
    if([UIDevice currentDevice].systemVersion.floatValue > 5.0f) {
        //高于5.0
        if([UIDevice currentDevice].systemVersion.floatValue > 6.0f){
            //高于6.0
            CGFloat top = image.size.height * 0.5;
            CGFloat left = image.size.width * 0.5;
            CGFloat bottom = image.size.height * 0.5;
            CGFloat right = image.size.width * 0.5;
            
            UIEdgeInsets edgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
            UIImageResizingMode mode = UIImageResizingModeStretch;
            newImage = [image resizableImageWithCapInsets:edgeInsets resizingMode:mode];
        }else{
            //低于6.0
            CGFloat top = image.size.height * 0.5;
            CGFloat left = image.size.width * 0.5;
            CGFloat bottom = image.size.height * 0.5;
            CGFloat right = image.size.width * 0.5;
            UIEdgeInsets edgeInsets = UIEdgeInsetsMake(top, left, bottom, right);
            newImage = [image resizableImageWithCapInsets:edgeInsets];
        }
            
    }else{
        //低于5.0
        CGFloat leftCapWidth = image.size.width * 0.5;
        CGFloat topCapHeight = image.size.height * 0.5;
        newImage = [image stretchableImageWithLeftCapWidth:leftCapWidth topCapHeight:topCapHeight];
    }
    
    return newImage;
}
+ (UIImage *)upDataImageSize:(UIImage *)image andSize:(CGSize)size{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 2.0);
    [image drawInRect:rect];
    UIImage * scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}
/**切正方形*/
+ (UIImage *)cutImage:(UIImage *)image{
    
    CGRect rect = CGRectZero;
    if (image.size.width>image.size.height) {
        rect = CGRectMake((image.size.width-image.size.height)*0.5, 0, image.size.height, image.size.height);
    }else{
        rect = CGRectMake(0, (image.size.height-image.size.width)*0.5, image.size.width, image.size.width);
    }
    
    CGImageRef subImageRef = CGImageCreateWithImageInRect(image.CGImage, rect);
    CGRect smallBounds = CGRectMake(0, 0, CGImageGetWidth(subImageRef), CGImageGetHeight(subImageRef));
    UIGraphicsBeginImageContextWithOptions(smallBounds.size, NO, 2.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, smallBounds, subImageRef);
    UIImage * newImage = [UIImage imageWithCGImage:subImageRef];
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
