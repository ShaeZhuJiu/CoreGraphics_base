//
//  MyView.m
//  CoreGraphics
//
//  Created by 谢鑫 on 2019/7/21.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)drawRect:(CGRect)rect{
    [self myDrawEllipse];
}
-(void)myDrawLine{
    //重写绘图方法
    //获取上下文/环境
    CGContextRef context=UIGraphicsGetCurrentContext();
    //设置画笔宽度
    CGContextSetLineWidth(context, 3.0);
    //设置画笔颜色
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    
    //绘图
    //创建绘图路径
    UIBezierPath *path=[UIBezierPath bezierPath];
    //设置起始点
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(200, 200)];
    //添加到上下文
    CGContextAddPath(context, path.CGPath);
    //渲染上下文
    CGContextStrokePath(context);
}
-(void)myDrawTriangle{
    //1.获取绘图上下文
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    //2.设置绘图路径
    //2.1创建路径
    UIBezierPath *path=[UIBezierPath bezierPath];
    //2.2创建起始点
    CGPoint startPoint=CGPointMake(5, 5);
    CGPoint secondPoint=CGPointMake(50, 95);
    CGPoint thirdPoint=CGPointMake(95, 5);
    //2.3画线
    [path moveToPoint:startPoint];
    [path addLineToPoint:secondPoint];
    [path addLineToPoint:thirdPoint];
    //2.4设置线的属性
    [[UIColor redColor] setStroke];
    [[UIColor yellowColor]setFill];
    [path fill];
    
    //3.设置边线的宽度
    CGContextSetLineWidth(context, 3.0);
    
    //4.添加路径到上下文
    CGContextAddPath(context, path.CGPath);
    
    //5.渲染上下文
    CGContextStrokePath(context);
}
-(void)myDrawRect{
    //获取上下文/环境
    CGContextRef context=UIGraphicsGetCurrentContext();
    //设置画笔宽度
    CGContextSetLineWidth(context, 3.0);
    //设置画笔颜色
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    //绘图
    //设置矩形的位置和大小
    CGRect myrect=CGRectMake(50, 50, 100, 100);
    //创建绘图路径
    UIBezierPath *path=[UIBezierPath bezierPathWithRect:myrect];
    [[UIColor yellowColor]setFill];
    [path fill];
    //添加到上下文
    CGContextAddPath(context, path.CGPath);
    //渲染上下文
    CGContextStrokePath(context);
}
-(void)myDrawEllipse{
    //获取上下文/环境
    CGContextRef context=UIGraphicsGetCurrentContext();
    //设置画笔宽度
    CGContextSetLineWidth(context, 3.0);
    //设置画笔颜色
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    //绘图
    //设置矩形的位置和大小
    CGRect myrect=CGRectMake(50, 50, 200, 100);
    //创建绘图路径
    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:myrect];
    [[UIColor yellowColor]setFill];
    [path fill];
    //添加到上下文
    CGContextAddPath(context, path.CGPath);
    //渲染上下文
    CGContextStrokePath(context);
}
@end
