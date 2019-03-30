//
//  UIColor+Chained.m
//  Chained
//
//  Created by 这是一个笑脸 on 2019/3/30.
//  Copyright © 2019年 差的多先生的girl. All rights reserved.
//

#import "UIColor+Chained.h"

@implementation UIColor (Chained)
/**
 *  将#(XXXXXX)的16位进制色值转换为UIColor对象
 *
 *  @param hexString 色值字符串
 *  @param alpha     透明度（0 - 1）
 *
 *  @return UIColor对象
 */
+ (UIColor *(^)(NSString* hexString,CGFloat alpha))colorWithHexStringAndAlpha{
    return ^id(NSString* hexString,CGFloat alpha){
        if ([hexString length] != 7) {
            return [UIColor whiteColor];
        }else{
            NSRange range = NSMakeRange(1, 2);
            NSString *red = [hexString substringWithRange:range];
            range.location = 3;
            NSString *green = [hexString substringWithRange:range];
            range.location = 5;
            NSString *blue = [hexString substringWithRange:range];
            
            unsigned int r,g,b;
            [[NSScanner scannerWithString:red] scanHexInt:&r];
            [[NSScanner scannerWithString:green] scanHexInt:&g];
            [[NSScanner scannerWithString:blue] scanHexInt:&b];
            return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
        }
    };
}

/**
 *  将#(XXXXXX)的16位进制色值转换为UIColor对象
 *
 *  @param hexString 色值字符串
 *
 *  @return UIColor对象
 */
+ (UIColor *(^)(NSString* hexString))colorWithHexString{
    return ^id (NSString* hexString){
        return UIColor.colorWithHexStringAndAlpha(hexString,1);
    };
}
@end
