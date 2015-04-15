//
//  ViewController.m
//  ProgrammableViews
//
//  Created by Yung Dai on 2015-04-15.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen]bounds];
    UIView *view = [[UIView alloc]initWithFrame:viewRect];
    self.view = view;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // When the screen is touched, it will log the following text below to the console.
    NSLog(@"Touched From View Controller");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
