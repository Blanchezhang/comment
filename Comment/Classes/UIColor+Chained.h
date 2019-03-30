//
//  UIColor+Chained.h
//  Chained
//
//  Created by 这是一个笑脸 on 2019/3/30.
//  Copyright © 2019年 差的多先生的girl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Chained)
/**
 *  将#(XXXXXX)的16位进制色值转换为UIColor对象
 *
 *  @param hexString 色值字符串
 *  @param alpha     透明度（0 - 1）
 *
 *  @return UIColor对象
 */
+ (UIColor *(^)(NSString* hexString,CGFloat alpha))colorWithHexStringAndAlpha;

/**
 *  将#(XXXXXX)的16位进制色值转换为UIColor对象
 *
 *  @param hexString 色值字符串
 *
 *  @return UIColor对象
 */
+ (UIColor *(^)(NSString* hexString))colorWithHexString;

@end

NS_ASSUME_NONNULL_END
