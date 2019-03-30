//
//  UILabel+Chained.m
//  iOS练习
//
//  Created by 这是一个笑脸 on 2019/3/30.
//  Copyright © 2019年 差的多先生的girl. All rights reserved.
//

#import "UILabel+Chained.h"

@implementation UILabel (Chained)
- (UILabel* (^)(CGFloat fontNumber))CH_FontNumber{
    __weak typeof(self) wself = self;
//    UILabel *(^result)(CGFloat) = ^(CGFloat value){
//        wself.font = [UIFont systemFontOfSize:value];
//        return self;
//    };
    return ^id(CGFloat value){
        wself.font = [UIFont systemFontOfSize:value];
        return self;
    };
    
}

- (UILabel* (^)(CGFloat fontNumber,NSString *fontname))CH_FontWithName{
    __weak typeof(self) wself = self;
    UILabel *(^result)(CGFloat,NSString*) = ^(CGFloat value,NSString *fontname){
        wself.font = [UIFont fontWithName:fontname size:value];
        return self;
    };
    return result;
}

- (UILabel * (^)(UIColor *textColor))CH_TextColor{
    __weak typeof(self) wself = self;
    UILabel *(^result)(UIColor*) = ^(UIColor *textColor){
        wself.textColor = textColor;
        return self;
    };
    return result;
}

- (UILabel * (^)(NSString *textString))CH_TextString{
    __weak typeof(self) wself = self;
    UILabel *(^result)(NSString*) = ^(NSString *textString){
        wself.text = textString;
        return self;
    };
    return result;
}

- (UILabel * (^)(UIColor *shadowColor))CH_ShadowColor{
    __weak typeof(self) wself = self;
    UILabel *(^result)(UIColor*) = ^(UIColor *shadowColor){
        wself.shadowColor = shadowColor;
        return self;
    };
    return result;
}

- (UILabel * (^)(CGSize shadowoffset))CH_ShadowOffset{
    __weak typeof(self) wself = self;
    UILabel *(^result)(CGSize) = ^(CGSize shadowoffset){
        wself.shadowOffset = shadowoffset;
        return self;
    };
    return result;
}

- (UILabel * (^)(NSTextAlignment textAlignment))CH_TextAlignment{
    __weak typeof(self) wself = self;
    UILabel *(^result)(NSTextAlignment) = ^(NSTextAlignment textAlignment){
        wself.textAlignment = textAlignment;
        return self;
    };
    return result;
}

- (UILabel * (^)(NSLineBreakMode lineBreakMode))CH_LineBreakMode{
    __weak typeof(self) wself = self;
    UILabel *(^result)(NSLineBreakMode) = ^(NSLineBreakMode lineBreakMode){
        wself.lineBreakMode = lineBreakMode;
        return self;
    };
    return result;
}

- (UILabel * (^)(NSInteger lineNumber))CH_NumberOfLines{
    __weak typeof(self) wself = self;
    UILabel *(^result)(NSInteger) = ^(NSInteger lineNumber){
        wself.numberOfLines = lineNumber;
        return self;
    };
    return result;
}

- (UILabel * (^)(NSAttributedString *attributedText))CH_AttributedText{
    __weak typeof(self) wself = self;
    UILabel *(^result)(NSAttributedString*) = ^(NSAttributedString *attributedText){
        wself.attributedText = attributedText;
        return self;
    };
    return result;

}

@end
