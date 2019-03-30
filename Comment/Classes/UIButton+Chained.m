//
//  UIButton+Chained.m
//  Chained
//
//  Created by 这是一个笑脸 on 2019/3/30.
//  Copyright © 2019年 差的多先生的girl. All rights reserved.
//

#import "UIButton+Chained.h"

@implementation UIButton (Chained)
- (UIButton *(^)(UIEdgeInsets contentEdgeInsets))CH_ContentEdgeInsets{
    __weak typeof(self) wself = self;
    return ^id(UIEdgeInsets contentEdgeInsets){
        wself.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets titleEdgeInsets))CH_TitleEdgeInsets{
    __weak typeof(self) wself = self;
    return ^id(UIEdgeInsets titleEdgeInsets){
        wself.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets imageEdgeInsets))CH_ImageEdgeInsets{
    __weak typeof(self) wself = self;
    return ^id(UIEdgeInsets imageEdgeInsets){
        wself.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(UIColor *tintColor))CH_TintColor{
    __weak typeof(self) wself = self;
    return ^id(UIColor *tintColor){
        wself.tintColor = tintColor;
        return self;
    };
}

- (UIButton *(^)(NSString *title,UIControlState state))CH_TitleAndState{
    __weak typeof(self) wself = self;
    return ^id(NSString *title,UIControlState state){
        [wself setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIColor *color,UIControlState state))CH_TitleColorAndState{
    __weak typeof(self) wself = self;
    return ^id(UIColor *color,UIControlState state){
        [wself setTitleColor:color forState:state];
        return self;
    };
}
- (UIButton *(^)(UIColor *color,UIControlState state))CH_ShadowColorAndState{
    __weak typeof(self) wself = self;
    return ^id(UIColor *color,UIControlState state){
        [wself setTitleShadowColor:color forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *image,UIControlState state))CH_ImageAndState{
    __weak typeof(self) wself = self;
    return ^id(UIImage *image,UIControlState state){
        [wself setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIImage *image,UIControlState state))CH_BackgroundImageAndState{
    __weak typeof(self) wself = self;
    return ^id(UIImage *image,UIControlState state){
        [wself setBackgroundImage:image forState:state];
        return self;
    };
}
- (UIButton *(^)(NSAttributedString *title,UIControlState state))CH_AttributedTitleAndState{
    __weak typeof(self) wself = self;
    return ^id(NSAttributedString *title,UIControlState state){
        [wself setAttributedTitle:title forState:state];
        return self;
    };
}

- (NSString *(^)(UIControlState state))CH_TitleForState{
    __weak typeof(self) wself = self;
    return ^id(UIControlState state){
       return [wself titleForState:state];
    };
}
- (NSString *(^)(UIControlState state))CH_TitleColorForState{
    __weak typeof(self) wself = self;
    return ^id(UIControlState state){
        return [wself titleColorForState:state];
    };
}
- (NSString *(^)(UIControlState state))CH_TitleShadowColorForState{
    __weak typeof(self) wself = self;
    return ^id(UIControlState state){
        return [wself titleShadowColorForState:state];
    };
}
- (UIImage *(^)(UIControlState state))CH_ImageColorForState{
    __weak typeof(self) wself = self;
    return ^id(UIControlState state){
        return [wself imageForState:state];
    };
}
- (UIImage *(^)(UIControlState state))CH_BackgroundImageColorForState{
    __weak typeof(self) wself = self;
    return ^id(UIControlState state){
        return [wself backgroundImageForState:state];
    };
}
- (NSAttributedString *(^)(UIControlState state))CH_AttributedTitleForState{
    __weak typeof(self) wself = self;
    return ^id(UIControlState state){
        return [wself attributedTitleForState:state];
    };
}


@end
