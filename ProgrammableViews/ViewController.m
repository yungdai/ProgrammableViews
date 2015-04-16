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
    
    // creating a button
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // button is located at x = 100, y = 100, width = 100, height = 44
    buttonOne.frame = CGRectMake(100, 100, 100, 44);
    
    // set the title for the button
    [buttonOne setTitle:@"Click Me" forState:UIControlStateNormal];
    
    // add the button on top of the view
    [self.view addSubview:buttonOne];
    
    // add a UIlabel and set it's position
    
    _labelOne = [[UILabel alloc]initWithFrame:CGRectMake(50, 30, 200, 44)];
    
    // set text for the label
    _labelOne.text = @"Hello, from Bitmaker Labs";
    
    // add the label to the subview
    [self.view addSubview:_labelOne];
    
    // connect the button to our buttonPressed method
    [buttonOne addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

- (void)buttonPressed:(UIButton *)sender {
    _labelOne.text = @"You pressed the button!";
    NSLog(@"Message From Button");
}

- (void)loadView {
    // creating the view controller ont the fly
    CGRect viewRect = [[UIScreen mainScreen]bounds];
    UIView *view = [[UIView alloc]initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // When the screen is touched, it will log the following text below to the console.
    NSLog(@"Touched From View Controller");
}



@end
