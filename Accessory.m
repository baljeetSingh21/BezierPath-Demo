//
//  Accessory.m
//  demo
//
//  Created by Vicky Mathneja on 06/02/15.
//  Copyright (c) 2015 LPU. All rights reserved.
//

#import "Accessory.h"

@implementation Accessory

@synthesize style;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing
    self.layer.cornerRadius=40;
    self.clipsToBounds=YES;// code
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(85, 63), NO, 0);
    UIGraphicsEndImageContext();
    
    
    switch(style){
        case checkMarkStyle:
            [self drawCheckMark:[UIColor greenColor]];
            break;
        case ErrorMarkStyle:
            [self drawCrossWithColor:[UIColor redColor]];
            break;
        case NOTICEMARK:
            [self drawNoticeWithColor:[UIColor magentaColor]];
            break;
        case INFOMARK:
            [self drawInfoWithColor:[UIColor orangeColor]];
            break;
        case EDITMARK:
            [self drawEditWithColor:[UIColor lightTextColor]];
            break;
        case WARNINGMARK:
            [self drawWarningWithBGColor:[UIColor brownColor] forgroundColor:[UIColor grayColor]];
            break;
              default:
            break;
    }
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIImageView* imageView = [[UIImageView alloc] initWithImage:image];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:imageView];
    
}
-(void)drawCheckMark:(UIColor*)color{
    UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
    [bezier3Path moveToPoint: CGPointMake(12, 40)];
    [bezier3Path addLineToPoint: CGPointMake(30, 56)];
    [bezier3Path moveToPoint: CGPointMake(30, 56)];
    [bezier3Path addLineToPoint: CGPointMake(60, 15)];
    bezier3Path.lineCapStyle = kCGLineCapRound;
    
    [color setStroke];
    bezier3Path.lineWidth = 14;
    [bezier3Path stroke];
    
}
-(void)drawCrossWithColor:(UIColor*)color
{
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(20, 25)];
    [bezierPath addLineToPoint: CGPointMake(53, 53)];
    [bezierPath moveToPoint: CGPointMake(20, 53)];
    [bezierPath addLineToPoint: CGPointMake(53, 25)];
    bezierPath.lineCapStyle = kCGLineCapRound;
   
    [color setStroke];
    bezierPath.lineWidth = 11;
    [bezierPath stroke];
}

- (void)drawNoticeWithColor:(UIColor*)color
{
    // Notice Shape Drawing
    UIBezierPath *noticeShapePath = [[UIBezierPath alloc] init];
    [noticeShapePath moveToPoint:CGPointMake(72, 48.54)];
    [noticeShapePath addLineToPoint:CGPointMake(72, 39.9)];
    [noticeShapePath addCurveToPoint:CGPointMake(66.38, 34.01) controlPoint1: CGPointMake(72, 36.76) controlPoint2: CGPointMake(69.48, 34.01)];
    [noticeShapePath addCurveToPoint:CGPointMake(61.53, 35.97) controlPoint1: CGPointMake(64.82, 34.01) controlPoint2: CGPointMake(62.69, 34.8)];
    [noticeShapePath addCurveToPoint:CGPointMake(60.36, 35.78) controlPoint1: CGPointMake(61.33, 35.97) controlPoint2: CGPointMake(62.3, 35.78)];
    [noticeShapePath addLineToPoint:CGPointMake(60.36, 33.22)];
    [noticeShapePath addCurveToPoint:CGPointMake(54.16, 26.16) controlPoint1: CGPointMake(60.36, 29.3) controlPoint2: CGPointMake(57.65, 26.16)];
    [noticeShapePath addCurveToPoint:CGPointMake(48.73, 29.89) controlPoint1: CGPointMake(51.64, 26.16) controlPoint2: CGPointMake(50.67, 27.73)];
    [noticeShapePath addLineToPoint:CGPointMake(48.73, 28.71)];
    [noticeShapePath addCurveToPoint:CGPointMake(43.49, 21.64) controlPoint1: CGPointMake(48.73, 24.78) controlPoint2: CGPointMake(46.98, 21.64)];
    [noticeShapePath addCurveToPoint:CGPointMake(39.03, 25.37) controlPoint1: CGPointMake(40.97, 21.64) controlPoint2: CGPointMake(39.03, 23.01)];
    [noticeShapePath addLineToPoint:CGPointMake(39.03, 9.07)];
    [noticeShapePath addCurveToPoint:CGPointMake(32.24, 2) controlPoint1: CGPointMake(39.03, 5.14) controlPoint2: CGPointMake(35.73, 2)];
    [noticeShapePath addCurveToPoint:CGPointMake(25.45, 9.07) controlPoint1: CGPointMake(28.56, 2) controlPoint2: CGPointMake(25.45, 5.14)];
    [noticeShapePath addLineToPoint:CGPointMake(25.45, 41.47)];
    [noticeShapePath addCurveToPoint:CGPointMake(24.29, 43.44) controlPoint1: CGPointMake(25.45, 42.45) controlPoint2: CGPointMake(24.68, 43.04)];
    [noticeShapePath addCurveToPoint:CGPointMake(9.55, 43.04) controlPoint1: CGPointMake(16.73, 40.88) controlPoint2: CGPointMake(11.88, 40.69)];
    [noticeShapePath addCurveToPoint:CGPointMake(8, 46.58) controlPoint1: CGPointMake(8.58, 43.83) controlPoint2: CGPointMake(8, 45.2)];
    [noticeShapePath addCurveToPoint:CGPointMake(14.4, 55.81) controlPoint1: CGPointMake(8.19, 50.31) controlPoint2: CGPointMake(12.07, 53.84)];
    [noticeShapePath addLineToPoint:CGPointMake(27.2, 69.56)];
    [noticeShapePath addCurveToPoint:CGPointMake(42.91, 77.8) controlPoint1: CGPointMake(30.5, 74.47) controlPoint2: CGPointMake(35.73, 77.21)];
    [noticeShapePath addCurveToPoint:CGPointMake(43.88, 77.8) controlPoint1: CGPointMake(43.3, 77.8) controlPoint2: CGPointMake(43.68, 77.8)];
    [noticeShapePath addCurveToPoint:CGPointMake(47.18, 78) controlPoint1: CGPointMake(45.04, 77.8) controlPoint2: CGPointMake(46.01, 78)];
    [noticeShapePath addLineToPoint:CGPointMake(48.34, 78)];
    [noticeShapePath addLineToPoint:CGPointMake(48.34, 78)];
    [noticeShapePath addCurveToPoint:CGPointMake(71.61, 52.08) controlPoint1: CGPointMake(56.48, 78) controlPoint2: CGPointMake(69.87, 75.05)];
    [noticeShapePath addCurveToPoint:CGPointMake(72, 48.54) controlPoint1: CGPointMake(71.81, 51.29) controlPoint2: CGPointMake(72, 49.72)];
    [noticeShapePath closePath];
    noticeShapePath.miterLimit = 4;
    
    [color setFill];
    [noticeShapePath fill];
}

- (void)drawWarningWithBGColor:(UIColor*)backgroundColor forgroundColor:(UIColor*)forgroundColor
{
    //// Bezier Drawing
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(54, 10)];
    [bezierPath addLineToPoint: CGPointMake(11, 81)];
    [bezierPath addLineToPoint: CGPointMake(54, 81)];
    [bezierPath addLineToPoint: CGPointMake(97, 81)];
    [bezierPath addLineToPoint: CGPointMake(54, 10)];
    bezierPath.lineCapStyle = kCGLineCapRound;
    
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    
    [backgroundColor setFill];
    [bezierPath fill];
    [backgroundColor setStroke];
    bezierPath.lineWidth = 14;
    [bezierPath stroke];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
    [bezier2Path moveToPoint: CGPointMake(54, 48)];
    [bezier2Path addLineToPoint: CGPointMake(54, 71)];
    bezier2Path.lineCapStyle = kCGLineCapRound;
    
    bezier2Path.lineJoinStyle = kCGLineJoinRound;
    
    [forgroundColor setFill];
    [bezier2Path fill];
    [forgroundColor setStroke];
    bezier2Path.lineWidth = 14;
    [bezier2Path stroke];
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(47, 19, 14, 14)];
    [forgroundColor setFill];
    [ovalPath fill];
}

- (void)drawInfoWithColor:(UIColor*)color
{
    // Info Shape Drawing
    UIBezierPath *infoShapePath = [[UIBezierPath alloc] init];
    [infoShapePath moveToPoint:CGPointMake(45.66, 15.96)];
    [infoShapePath addCurveToPoint:CGPointMake(45.66, 5.22) controlPoint1: CGPointMake(48.78, 12.99) controlPoint2: CGPointMake(48.78, 8.19)];
    [infoShapePath addCurveToPoint:CGPointMake(34.34, 5.22) controlPoint1: CGPointMake(42.53, 2.26) controlPoint2: CGPointMake(37.47, 2.26)];
    [infoShapePath addCurveToPoint:CGPointMake(34.34, 15.96) controlPoint1: CGPointMake(31.22, 8.19) controlPoint2: CGPointMake(31.22, 12.99)];
    [infoShapePath addCurveToPoint:CGPointMake(45.66, 15.96) controlPoint1: CGPointMake(37.47, 18.92) controlPoint2: CGPointMake(42.53, 18.92)];
    [infoShapePath closePath];
    
    [infoShapePath moveToPoint:CGPointMake(48, 69.41)];
    [infoShapePath addCurveToPoint:CGPointMake(40, 77) controlPoint1: CGPointMake(48, 73.58) controlPoint2: CGPointMake(44.4, 77)];
    [infoShapePath addLineToPoint:CGPointMake(40, 77)];
    [infoShapePath addCurveToPoint:CGPointMake(32, 69.41) controlPoint1: CGPointMake(35.6, 77) controlPoint2: CGPointMake(32, 73.58)];
    [infoShapePath addLineToPoint:CGPointMake(32, 35.26)];
    [infoShapePath addCurveToPoint:CGPointMake(40, 27.67) controlPoint1: CGPointMake(32, 31.08) controlPoint2: CGPointMake(35.6, 27.67)];
    [infoShapePath addLineToPoint:CGPointMake(40, 27.67)];
    [infoShapePath addCurveToPoint:CGPointMake(48, 35.26) controlPoint1: CGPointMake(44.4, 27.67) controlPoint2: CGPointMake(48, 31.08)];
    [infoShapePath addLineToPoint:CGPointMake(48, 69.41)];
    [infoShapePath closePath];
    
    [color setFill];
    [infoShapePath fill];
}

- (void)drawEditWithColor:(UIColor*)color
{
    // Edit shape Drawing
    UIBezierPath *editPathPath = [[UIBezierPath alloc] init];
    [editPathPath moveToPoint:CGPointMake(71, 2.7)];
    [editPathPath addCurveToPoint:CGPointMake(71.9, 15.2) controlPoint1:CGPointMake(74.7, 5.9) controlPoint2:CGPointMake(75.1, 11.6)];
    [editPathPath addLineToPoint:CGPointMake(64.5, 23.7)];
    [editPathPath addLineToPoint:CGPointMake(49.9, 11.1)];
    [editPathPath addLineToPoint:CGPointMake(57.3, 2.6)];
    [editPathPath addCurveToPoint:CGPointMake(69.7, 1.7) controlPoint1:CGPointMake(60.4, -1.1) controlPoint2:CGPointMake(66.1, -1.5)];
    [editPathPath addLineToPoint:CGPointMake(71, 2.7)];
    [editPathPath addLineToPoint:CGPointMake(71, 2.7)];
    [editPathPath closePath];
    
    [editPathPath moveToPoint:CGPointMake(47.8, 13.5)];
    [editPathPath addLineToPoint:CGPointMake(13.4, 53.1)];
    [editPathPath addLineToPoint:CGPointMake(15.7, 55.1)];
    [editPathPath addLineToPoint:CGPointMake(50.1, 15.5)];
    [editPathPath addLineToPoint:CGPointMake(47.8, 13.5)];
    [editPathPath addLineToPoint:CGPointMake(47.8, 13.5)];
    [editPathPath closePath];
    
    [editPathPath moveToPoint:CGPointMake(17.7, 56.7)];
    [editPathPath addLineToPoint:CGPointMake(23.8, 62.2)];
    [editPathPath addLineToPoint:CGPointMake(58.2, 22.6)];
    [editPathPath addLineToPoint:CGPointMake(52, 17.1)];
    [editPathPath addLineToPoint:CGPointMake(17.7, 56.7)];
    [editPathPath addLineToPoint:CGPointMake(17.7, 56.7)];
    [editPathPath closePath];
    
    [editPathPath moveToPoint:CGPointMake(25.8, 63.8)];
    [editPathPath addLineToPoint:CGPointMake(60.1, 24.2)];
    [editPathPath addLineToPoint:CGPointMake(62.3, 26.1)];
    [editPathPath addLineToPoint:CGPointMake(28.1, 65.7)];
    [editPathPath addLineToPoint:CGPointMake(25.8, 63.8)];
    [editPathPath addLineToPoint:CGPointMake(25.8, 63.8)];
    [editPathPath closePath];
    
    [editPathPath moveToPoint:CGPointMake(25.9, 68.1)];
    [editPathPath addLineToPoint:CGPointMake(4.2, 79.5)];
    [editPathPath addLineToPoint:CGPointMake(11.3, 55.5)];
    [editPathPath addLineToPoint:CGPointMake(25.9, 68.1)];
    [editPathPath closePath];
    
    editPathPath.miterLimit = 4;
    editPathPath.usesEvenOddFillRule = YES;
    [color setFill];
    [editPathPath fill];
}


@end
