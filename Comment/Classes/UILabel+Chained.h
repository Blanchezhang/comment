//
//  UILabel+Chained.h
//  iOS练习
//
//  Created by 这是一个笑脸 on 2019/3/30.
//  Copyright © 2019年 差的多先生的girl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Chained)
- (UILabel * (^)(CGFloat fontNumber))CH_FontNumber;
- (UILabel * (^)(CGFloat fontNumber,NSString *fontname))CH_FontWithName;
- (UILabel * (^)(UIColor *textColor))CH_TextColor;
- (UILabel * (^)(NSString *textString))CH_TextString;
- (UILabel * (^)(UIColor *shadowColor))CH_ShadowColor;
- (UILabel * (^)(CGSize shadowoffset))CH_ShadowOffset;
- (UILabel * (^)(NSTextAlignment textAlignment))CH_TextAlignment;
- (UILabel * (^)(NSLineBreakMode lineBreakMode))CH_LineBreakMode;
- (UILabel * (^)(NSInteger lineNumber))CH_NumberOfLines;
- (UILabel * (^)(NSAttributedString *attributedText))CH_AttributedText;



+(UILabel * (^)(void))CH_Alloc;

+(UILabel * (^)(CGRect rect))CH_InitFrame;

+(UILabel * (^)(void))CH_Init;

-(UILabel * (^)(void))CH_init;

@end

NS_ASSUME_NONNULL_END
