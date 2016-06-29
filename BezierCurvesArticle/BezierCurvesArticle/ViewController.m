//
//  ViewController.m
//  BezierCurvesArticle
//
//  Created by Dmitry Kotenko on 17.06.16.
//  Copyright © 2016 Dmitry Kotenko. All rights reserved.
//
@import AVFoundation;

#import "ViewController.h"
#import "BezierExampleView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *pencil;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
    
    //get path
    UIBezierPath * path = [BezierCreator fitherPath];
    [path closePath];
    [path fill];

    //fit to screen size
    CGSize pathSize = path.bounds.size;
    CGRect screenRect = self.view.frame;
    CGRect aspectedSize = AVMakeRectWithAspectRatioInsideRect(pathSize, screenRect);
    [path applyTransform:CGAffineTransformMakeScale(aspectedSize.size.width/pathSize.width, aspectedSize.size.height/pathSize.height)];
    
    //draw feather
    CAShapeLayer * layer = [CAShapeLayer new];
    layer.path = path.CGPath;
    layer.fillColor = [UIColor colorWithRed:138.f/255.f green:81.f/255.f blue:155.f/255.f alpha:1.f].CGColor;//fill with magenta color
    layer.zPosition = -1.f;
    [self.view.layer addSublayer: layer];
    
    //Animation of pencil
    CAKeyframeAnimation *move = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    move.path = path.CGPath;
    move.duration = 10.0f;
    move.repeatCount = HUGE_VALF;
    
    self.pencil.layer.anchorPoint = CGPointMake(0.f, 1.f);// move image anchor to the tip of the pencil
    
    self.pencil.layer.position = path.currentPoint; // end point
    [self.pencil.layer addAnimation:move forKey:@"move the view"];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
