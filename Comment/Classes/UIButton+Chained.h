//
//  UIButton+Chained.h
//  Chained
//
//  Created by 这是一个笑脸 on 2019/3/30.
//  Copyright © 2019年 差的多先生的girl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Chained)
//set
- (UIButton *(^)(UIEdgeInsets contentEdgeInsets))CH_ContentEdgeInsets;
- (UIButton *(^)(UIEdgeInsets titleEdgeInsets))CH_TitleEdgeInsets;
- (UIButton *(^)(UIEdgeInsets imageEdgeInsets))CH_ImageEdgeInsets;

- (UIButton *(^)(UIColor *tintColor))CH_TintColor;

- (UIButton *(^)(NSString *title,UIControlState state))CH_TitleAndState;

- (UIButton *(^)(UIColor *color,UIControlState state))CH_TitleColorAndState;
- (UIButton *(^)(UIColor *color,UIControlState state))CH_ShadowColorAndState;

- (UIButton *(^)(UIImage *image,UIControlState state))CH_ImageAndState;

- (UIButton *(^)(UIImage *image,UIControlState state))CH_BackgroundImageAndState;
- (UIButton *(^)(NSAttributedString *title,UIControlState state))CH_AttributedTitleAndState;


//get
- (NSString *(^)(UIControlState state))CH_TitleForState;
- (NSString *(^)(UIControlState state))CH_TitleColorForState;
- (NSString *(^)(UIControlState state))CH_TitleShadowColorForState;
- (UIImage *(^)(UIControlState state))CH_ImageColorForState;
- (UIImage *(^)(UIControlState state))CH_BackgroundImageColorForState;
- (NSAttributedString *(^)(UIControlState state))CH_AttributedTitleForState;

@end

NS_ASSUME_NONNULL_END
