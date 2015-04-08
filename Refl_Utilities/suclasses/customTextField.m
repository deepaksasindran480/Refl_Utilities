//
//  customTextField.m
//  Refl_Utilities
//
//  Created by Reflections\Reflections mac pro on 06/04/15.
//  Copyright (c) 2015 Reflections\Reflections mac pro. All rights reserved.
//

#import "customTextField.h"
#define FONT_NAME  @"archer-medium"
@implementation customTextField

-(void)leftPadding:(CGFloat)width
{
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 20)];
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
}
-(void)rightPadding:(CGFloat)width
{
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 20)];
    self.rightView = paddingView;
    self.rightViewMode = UITextFieldViewModeAlways;
}
-(void)setCustomFont
{
    self.font=[UIFont fontWithName:FONT_NAME size:16];
}

@end
