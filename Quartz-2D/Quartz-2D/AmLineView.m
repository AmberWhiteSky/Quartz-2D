//
//  AmView.m
//  Quarz-2D0824
//
//  Created by AmberWhiteSky on 15/8/24.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "AmLineView.h"

@implementation AmLineView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


/**
 *实现draw方法
 **/

-(void)drawRect:(CGRect)rect  {
    // draw  codeing
    
    //1.获得图形上下文
    CGContextRef  context =UIGraphicsGetCurrentContext();
    //设置线条宽度
    CGContextSetLineWidth(context, 20);
    
    //设置线段头尾的样式
    CGContextSetLineCap(context, kCGLineCapRound);
    
    //设置线段转折样
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    
    //2.拼接图形（路径） 上下文
    //起点
    CGContextMoveToPoint(context, 10, 10);
    
    CGContextAddLineToPoint(context, 100, 100);
    
    CGContextAddLineToPoint(context, 150, 40);
    
    CGContextAddLineToPoint(context, 150, 40);
    
    CGContextAddLineToPoint(context, 400, 300);
    
    CGContextAddLineToPoint(context, 40, 268);
    
    //设置颜色
    CGContextSetRGBStrokeColor(context, 0, 1.0, 0.3, 0.3);
    
    //3 对图形进行渲染到view上面

    CGContextStrokePath(context);
    
    
    
    //线段起点
    CGContextMoveToPoint(context, 40, 40);
    CGContextAddLineToPoint(context, 100, 268);
    
    
    //设置颜色
    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 0.8);
    
    //3 对图形进行渲染到view上面
    
    CGContextStrokePath(context);
    
    
}
@end
