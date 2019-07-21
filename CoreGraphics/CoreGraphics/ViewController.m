//
//  ViewController.m
//  CoreGraphics
//
//  Created by 谢鑫 on 2019/7/21.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyView *myView=[[MyView alloc]init];
    myView.frame=[UIScreen mainScreen].bounds;
    myView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:myView];
}


@end
