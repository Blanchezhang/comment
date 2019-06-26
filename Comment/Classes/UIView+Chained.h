//
//  UIView+Chained.h
//  Comment
//
//  Created by 这是一个笑脸 on 2019/4/1.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Chained)

+(UIView * (^)(void))CH_Alloc;

+(UIView * (^)(CGRect rect))CH_InitFrame;

+(UIView * (^)(void))CH_Init;

-(UIView * (^)(void))CH_init;

@end

NS_ASSUME_NONNULL_END
