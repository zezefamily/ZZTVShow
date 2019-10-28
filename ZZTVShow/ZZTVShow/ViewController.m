//
//  ViewController.m
//  ZZTVShow
//
//  Created by 泽泽 on 2019/9/16.
//  Copyright © 2019 泽泽. All rights reserved.
/*
    *                *
            *
 
 
 
            *
 
 */

#import "ViewController.h"
#import "POP.h"
@interface ViewController ()
{
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBezierPath *totalPath = [UIBezierPath bezierPath];
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(self.view.center.x, self.view.center.y)];
    [path1 addQuadCurveToPoint:CGPointMake(self.view.center.x, self.view.center.y+150) controlPoint:CGPointMake(self.view.center.x-200, self.view.center.y-60)];
    [totalPath appendPath:path1];
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    [path2 moveToPoint:CGPointMake(self.view.center.x, self.view.center.y+150)];
    [path2 addQuadCurveToPoint:CGPointMake(self.view.center.x, self.view.center.y) controlPoint:CGPointMake(self.view.center.x+200, self.view.center.y-60)];
    [totalPath appendPath:path2];
    
    CAShapeLayer *heaterLayer = [CAShapeLayer new];
    heaterLayer.lineCap = kCALineCapRound;
    heaterLayer.lineJoin = kCALineJoinRound;
    heaterLayer.strokeColor = [UIColor redColor].CGColor;
    heaterLayer.fillColor = [UIColor clearColor].CGColor;
    heaterLayer.lineWidth = 3.0f;
    heaterLayer.path = totalPath.CGPath;
    
    [self.view.layer addSublayer:heaterLayer];
    
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPShapeLayerStrokeEnd];
    animation.fromValue = @(0.0);
    animation.toValue = @(1.0);
    heaterLayer.autoreverses = NO;
    animation.duration = 3.0;
    // 设置layer的animation
    [heaterLayer pop_addAnimation:animation forKey:nil];
    
    
}


@end
