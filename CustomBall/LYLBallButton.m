//
//  LYLBallButton.m
//  CustomBall
//
//  Created by 卢奕霖 on 16/8/16.
//  Copyright © 2016年 卢奕霖. All rights reserved.
//

#import "LYLBallButton.h"

@implementation LYLBallButton


- (instancetype)initWithFrame:(CGRect)frame btnTitle:(NSString *)title handel:(LYLTouchBlock)handel{
    self = [super initWithFrame:frame];
    if (self) {
//        self.layer.borderWidth = 1;
//        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
//        self.layer.cornerRadius = 3;
//        self.layer.masksToBounds = YES;
        
        // 为按钮添加阴影
//        self.layer.shadowColor = [UIColor blackColor].CGColor;
//        self.layer.shadowOffset = CGSizeMake(3, 3);
//        self.layer.shadowRadius = 3;
        self.backgroundColor = [UIColor clearColor];
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _lylblock = handel;
        // 调用此方法以触发block
        [self addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


- (void)clickAction:(LYLBallButton *)button {
    _lylblock(button);
}



//+ (instancetype)actionWithTitle:(nullable NSString *)title style:(UIAlertActionStyle)style handler:(void (^ __nullable)(UIAlertAction *action))handler;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
