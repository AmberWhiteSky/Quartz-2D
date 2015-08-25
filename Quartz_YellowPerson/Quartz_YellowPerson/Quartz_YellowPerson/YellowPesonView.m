
//
//  YellowPesonView.m
//  Quartz_YellowPerson
//
//  Created by AmberWhiteSky on 15/8/25.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//


//设置宏
#define  AmRadius 70
#define TopY 100
#define AmColor(r,g,b) [UIColor  colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:0.7]


#import "YellowPesonView.h"

@implementation YellowPesonView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


-(void) drawRect:(CGRect)rect  {
    //1.获得上下文
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    //画身体
    drawYellowPersonBoady(context,rect);
    
    //画嘴巴
    drawYellowPersonMouth(context, rect);
    
    //画眼睛
    drawEyes(context,rect);
}


// 画小黄人
void  drawYellowPersonBoady(CGContextRef context,CGRect myrect){
    
    //2 . 先后顺序  先画后面的
    //2.1 身体
    //上半圆
    CGFloat  topCircleX =myrect.size.width*0.5;
    CGFloat  topCircleY =TopY;
    CGContextAddArc(context, topCircleX, topCircleY, AmRadius, 0, M_PI, 1);
    
    //向下延伸
    CGFloat middleX= topCircleX-AmRadius;
    //中间的身体长度
    CGFloat middleH=100;
    CGFloat middleY = topCircleY+middleH;
    CGContextAddLineToPoint(context, middleX, middleY);
    
    
    //圆弧 下半圆
    CGFloat  buttomX =topCircleX;
    CGFloat buttomY =middleY;
    CGFloat  buttomRadius=AmRadius;
    
    
    CGContextAddArc(context, buttomX, buttomY, buttomRadius, M_PI, 0, 1);
    
    //合并路径
    CGContextClosePath(context);
    //设置颜色
    [AmColor(252, 218, 0) set];
    
    //利用填充方式画出之前的路径
    CGContextFillPath(context);
    //3. 将path 渲染到view上
    CGContextStrokePath(context);
    
    
}


//画嘴  贝塞尔曲线
void  drawYellowPersonMouth(CGContextRef context,CGRect rect){
    
    //需要三个点   当前点  结束点   控制点 控制点越远，曲线越弯
    //中间的控制点
    CGFloat  middleControlPointX = rect.size.width*0.5;
    CGFloat middleControlPointY =rect.size.height*0.4;
    
    //当前点
    CGFloat marginX=10;
    CGFloat marginY=50;
    CGFloat currentX=middleControlPointX-marginX;
    CGFloat currentY=middleControlPointY-marginY;
    CGContextMoveToPoint(context, currentX, currentY);
    
    //结束点
    CGFloat endPointX=middleControlPointX+marginX;
    CGFloat endPointY=currentY;
    //贝塞尔曲线
    CGContextAddQuadCurveToPoint(context, currentX, currentY, endPointX,endPointY);
    
    //设置颜色
    [[UIColor  blackColor]set];
    //渲染
    CGContextStrokePath(context);
    
}

//画眼睛
void  drawEyes(CGContextRef context,CGRect rect){
    
    //黑色绑带开始点
    CGFloat startX= rect.size.width*0.5-AmRadius;
    CGFloat startY=TopY;
    
    CGContextMoveToPoint(context, startX, startY);

    //黑色绑带结束点
    CGFloat endPointX= startX+2*AmRadius;
    CGFloat endPointY=startY;
    
    //画直线
    CGContextAddLineToPoint(context, endPointX, endPointY);
    CGContextSetLineWidth(context, 15);

    [[UIColor  blackColor]set];
    CGContextStrokePath(context);
    
    //画最外面的眼镜框子
    AmColor(61, 63, 66);
    CGFloat  kuangY =startY;
    CGFloat  kuangRadius =AmRadius*0.3;

    CGFloat  kuangX=rect.size.width*0.5-kuangRadius;
    CGContextAddArc(context, kuangX, kuangY,  kuangRadius, 0,M_PI*2, 0);
    CGContextFillPath(context);
    
    //里面的白色
    [[UIColor  whiteColor]set];
    CGFloat whiteRadius= kuangRadius*0.6;
    CGFloat whiteX=kuangX;
    CGFloat whiteY=kuangY;
    CGContextAddArc(context, whiteX, whiteY, whiteRadius, 0, M_PI*2, 0);
    CGContextFillPath(context);

    
    
   
}

@end
