//
//  AmShape.m
//  Quarz-2D0824
//
//  Created by AmberWhiteSky on 15/8/24.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "AmShape.h"

@implementation AmShape

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

-(void)drawRect:(CGRect)rect {
    
    
    //画矩形
    
    drawSquare();
}


//画正方形
void drawSquare(){
    //上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    // 画矩形
    CGContextAddRect(context, CGRectMake(10, 10, 150, 200));
    
    //绘制矩形
    CGContextStrokePath(context);
    
}


//画三角形
void drawTriangle(){
    //1.获得上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    //2画三角形
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 80);
    // 关闭路径  （连接起点和终点）
    CGContextClosePath(context);
    CGContextStrokePath(context);
    
}

@end
