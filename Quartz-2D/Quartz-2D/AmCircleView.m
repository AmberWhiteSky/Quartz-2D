
//
//  AmCircleView.m
//  Quartz-2D
//
//  Created by AmberWhiteSky on 15/8/24.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "AmCircleView.h"

@implementation AmCircleView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */



-(void) drawRect:(CGRect)rect {
    
    //调用画圆的方法
    //    drawCircle();
    
    //调用画圆弧的方法
    //    drawCircleShape();
    
    //另一周画圆的方法
    drawFillCircle();
}

//另一周画圆的方法
void  drawFillCircle(){
    //1.获取上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    //2.绘制路径
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 100, 169);
    CGContextAddArc(context, 100, 100, 69, M_PI_2, M_PI, 0);
    
    [[UIColor  greenColor] set];
    //3.将路径渲染到view上
    //    CGContextClosePath(context);
    CGContextFillPath(context);
    
    
    
}



//画圆的方法
void  drawCircle(){
    //1获得上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    //2绘制路径
    CGContextAddEllipseInRect(context, CGRectMake(100, 100, 90 ,60));
    CGContextSetLineWidth(context, 14);
    
    //3利用上下文把路径渲染到view上
    //    CGContextFillPath(context);
    CGContextStrokePath(context);
}

//画圆弧的方法

void  drawCircleShape(){
    
    //1  获得上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    //2  绘制路径
    //上下文参数
    //圆心x 轴
    //圆心 y轴
    //半径
    //开始角度
    //结束角度
    //圆弧的伸展方向（0  顺时针  ，1  逆时针）
    //M_PI  ＝ 180度
    //下半圆弧
    //    CGContextAddArc(context, 100, 100, 40, 0, M_PI, 1);
    //下半圆弧
    
    //    CGContextAddArc(context, 100, 100, 40, 0, M_PI, 0);
    
    //左边圆弧
    //        CGContextAddArc(context, 100, 100, 40, -M_PI_2, M_PI_2, 1);
    //右边圆弧
    //        CGContextAddArc(context, 100, 100, 40, -M_PI_2, M_PI_2, 0);
    
    
    //画四分之一圆弧
    //    CGContextAddArc(context, 100, 100, 40, M_PI_2, M_PI, 0);
    
    //画360度的圆弧
    CGContextAddArc(context, 200, 200, 40, 0, M_PI*2, 0);
    
    
    
    //3  利用上下文将路径渲染到view上
    CGContextStrokePath(context);
    
}

@end

