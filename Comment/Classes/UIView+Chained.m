//
//  UIView+Chained.m
//  Comment
//
//  Created by 这是一个笑脸 on 2019/4/1.
//

#import "UIView+Chained.h"

@implementation UIView (Chained)
+(UIView * (^)(void))CH_Alloc{
    __weak typeof(self) wself = self;
    return ^id(){
        return [wself alloc];
    };
}

+(UIView * (^)(CGRect rect))CH_InitFrame{
    __weak typeof(self) wself = self;
    return ^id(CGRect rect){
        return [[wself alloc]initWithFrame:rect];
    };
}

+(UIView * (^)(void))CH_Init{
    __weak typeof(self) wself = self;
    return ^id(void){
        return [[wself alloc]init];
    };
}

-(UIView * (^)(void))CH_init{
    __weak typeof(self) wself = self;
    return ^id(void){
        return [wself init];
    };
}

@end
