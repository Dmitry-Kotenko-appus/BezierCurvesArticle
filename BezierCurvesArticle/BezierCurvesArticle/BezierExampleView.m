//
//  BezierExampleView.m
//  BezierCurvesArticle
//
//  Created by Dmitry Kotenko on 17.06.16.
//  Copyright © 2016 Dmitry Kotenko. All rights reserved.
//

#import "BezierExampleView.h"

@interface UIBezierPath (HTMLLikeBezierCurveExtension)

-(void)moveToCarthesianPoint: (CGPoint) point;

-(void) bezierCurveToCarthesianCx1: (int) cx1 Cy1: (int) cy1 Cx2: (int) cx2 Cy2: (int) cy2 x: (int) x y: (int) y;

@end

@implementation BezierCreator

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


+(UIBezierPath*) fitherPath{
    
    UIBezierPath * ctx = [UIBezierPath bezierPath];
    
    [ctx moveToCarthesianPoint:CGPointMake(153.084710, 505.346270)];
    [ctx bezierCurveToCarthesianCx1:146.045220 Cy1:482.835300 Cx2:138.909000 Cy2:461.239140 x:137.114400 y:437.991580];
    [ctx bezierCurveToCarthesianCx1:137.469890 Cy1:447.919470 Cx2:133.911170 Cy2:461.681210 x:128.602260 y:442.987240];
    [ctx bezierCurveToCarthesianCx1:106.997580 Cy1:405.107440 Cx2:70.601576 Cy2:378.539920 x:48.120232 y:341.484860];
    [ctx bezierCurveToCarthesianCx1:38.659280 Cy1:322.863740 Cx2:39.860624 Cy2:300.534700 x:30.588504 y:282.028580];
    [ctx bezierCurveToCarthesianCx1:21.934672 Cy1:294.577870 Cx2:43.893480 Cy2:342.407100 x:16.176496 y:314.235110];
    [ctx bezierCurveToCarthesianCx1:-2.267312 Cy1:300.394670 Cx2:-26.339848 Cy2:283.846610 x:-22.210520 y:257.412810];
    [ctx bezierCurveToCarthesianCx1:-18.736304 Cy1:244.670940 Cx2:-31.452544 Cy2:222.821350 x:-30.662184 y:249.471870];
    [ctx bezierCurveToCarthesianCx1:-29.528128 Cy1:283.371080 Cx2:-50.280216 Cy2:227.470860 x:-59.366672 y:218.098450];
    [ctx bezierCurveToCarthesianCx1:-86.378224 Cy1:174.584880 Cx2:-102.022130 Cy2:123.251340 x:-96.513288 y:71.774120];
    [ctx bezierCurveToCarthesianCx1:-95.032840 Cy1:24.158200 Cx2:-77.258840 Cy2:-20.353344 x:-60.227896 y:-64.118536];
    [ctx bezierCurveToCarthesianCx1:-50.058552 Cy1:-89.963624 Cx2:-41.645552 Cy2:-117.212350 x:-29.750256 y:-141.931930];
    [ctx bezierCurveToCarthesianCx1:-22.409632 Cy1:-138.503650 Cx2:-32.976112 Cy2:-126.570730 x:-33.681696 y:-119.476020];
    [ctx bezierCurveToCarthesianCx1:-41.727936 Cy1:-90.716312 Cx2:-55.556736 Cy2:-61.869088 x:-51.957824 y:-31.457688];
    [ctx bezierCurveToCarthesianCx1:-36.170432 Cy1:-7.234528 Cx2:-1.859872 Cy2:-6.657624 x:19.890808 y:11.258368];
    [ctx bezierCurveToCarthesianCx1:50.168368 Cy1:28.752328 Cx2:73.239184 Cy2:56.243216 x:92.417528 y:85.011904];
    [ctx bezierCurveToCarthesianCx1:81.095248 Cy1:82.728136 Cx2:56.527152 Cy2:90.519872 x:80.252216 y:96.455296];
    [ctx bezierCurveToCarthesianCx1:104.450980 Cy1:100.564610 Cx2:125.972190 Cy2:115.985840 x:135.640580 y:138.858570];
    [ctx bezierCurveToCarthesianCx1:148.821840 Cy1:162.404740 Cx2:158.772660 Cy2:187.511180 x:168.659710 y:212.558780];
    [ctx bezierCurveToCarthesianCx1:159.149940 Cy1:211.042900 Cx2:120.893830 Cy2:197.639980 x:146.963060 y:213.075350];
    [ctx bezierCurveToCarthesianCx1:167.888600 Cy1:224.373700 Cx2:192.263950 Cy2:234.912960 x:199.893300 y:259.719690];
    [ctx bezierCurveToCarthesianCx1:205.478580 Cy1:277.008050 Cx2:222.794910 Cy2:307.302340 x:216.959220 y:317.964810];
    [ctx bezierCurveToCarthesianCx1:195.476440 Cy1:304.953370 Cx2:177.615600 Cy2:283.799580 x:152.397410 y:278.307800];
    [ctx bezierCurveToCarthesianCx1:163.930640 Cy1:296.439980 Cx2:194.417760 Cy2:305.000820 x:207.763570 y:325.632890];
    [ctx bezierCurveToCarthesianCx1:230.384400 Cy1:352.767160 Cx2:232.189320 Cy2:389.232850 x:231.000340 y:422.911900];
    [ctx bezierCurveToCarthesianCx1:219.683250 Cy1:413.278590 Cx2:206.923520 Cy2:396.627090 x:192.676900 y:395.615020];
    [ctx bezierCurveToCarthesianCx1:205.246560 Cy1:413.838700 Cx2:236.476960 Cy2:429.658120 x:222.750270 y:456.017570];
    [ctx bezierCurveToCarthesianCx1:211.150060 Cy1:484.438140 Cx2:181.270980 Cy2:498.630510 x:153.084710 y:505.346270];
    
    //move top left to 0 , 0
    [ctx applyTransform:CGAffineTransformMakeTranslation(-ctx.bounds.origin.x, -ctx.bounds.origin.y)];
        
    
    return ctx;
}

@end


@implementation UIBezierPath (HTMLLikeBezierCurveExtension)

-(void)moveToCarthesianPoint: (CGPoint) point{
    
    [self moveToPoint:CGPointMake(point.x, -point.y)];
}

-(void)bezierCurveToCarthesianCx1:(int)cx1 Cy1:(int)cy1 Cx2:(int)cx2 Cy2:(int)cy2 x:(int)x y:(int)y{
    
    [self addCurveToPoint:CGPointMake(x, -y) controlPoint1:CGPointMake(cx1, -cy1) controlPoint2:CGPointMake(cx2, -cy2)];
}

@end