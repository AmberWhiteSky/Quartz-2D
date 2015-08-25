//
//  AmTextImageView.m
//  Quartz-2D
//
//  Created by AmberWhiteSky on 15/8/25.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "AmTextImageView.h"

@implementation AmTextImageView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */



-(void)  drawRect:(CGRect)rect {
    
    //画文字
    //    drawText();
    
    //画图片
    drawImage();
    
}


//画文本

void  drawText(){
    
    //1. 上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    //2.画矩形
    CGRect cgrect = CGRectMake(100, 100, 200, 55);
    CGContextAddRect(context, cgrect);
    
    
    //3.将路径渲染到view上
    CGContextFillPath(context);
    
    
    
    //2.  绘制路径 画文字
    NSString  *str = @"一将功成万骨枯";
    
    //这个方法不需要上下文
    //    [str  drawAtPoint:CGPointZero withAttributes:nil];
    //    [str  drawInRect:CGRectMake(100, 100, 200, 55) withAttributes:nil];
    NSMutableDictionary  *attrs =[NSMutableDictionary  dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor  redColor];
    attrs[NSFontAttributeName] = [UIFont  systemFontOfSize:15];
    
    [str  drawInRect:cgrect withAttributes:attrs];
    
}

// 画图形

void  drawImage(){
    
    
    //1.获取图片
    UIImage  *image =[UIImage  imageNamed:@"maomao"];
    
    //2.画图片
    //    [image  drawAtPoint:CGPointMake(1, 1)];
    //    [image  drawInRect:CGRectMake(1, 1, 400, 400)];
    [image  drawAsPatternInRect:CGRectMake(0, 0, 350, 600)];
    
    
    NSString  *str = @"Amberwhitesky";
    [str  drawInRect:CGRectMake(0, 350, 100, 35) withAttributes:nil];
    
    
    
}
@end
