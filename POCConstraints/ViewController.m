//
//  ViewController.m
//  POCConstraints
//
//  Created by Bruno Medeiros Rafael on 12/06/17.
//  Copyright © 2017 Bruno Medeiros Rafael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self createCenterView];
    [self createMarginView];
}

-(void)createCenterView {
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    
    [view1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:view1];

    NSLayoutConstraint *x = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *y = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    
    [self.view addConstraint:x];
    [self.view addConstraint:y];
    [self.view addConstraint:height];
    [self.view addConstraint:width];
    
    [self.view layoutIfNeeded];
}

-(void)createMarginView {
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor blueColor];
    
    [view1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:view1];
    
    
    NSLayoutConstraint *topMargin = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTopMargin multiplier:1 constant:50];
    
    NSLayoutConstraint *leftMargin = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:50];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    
    NSArray *constraints = @[topMargin, leftMargin, height, width];
    
    [self.view addConstraints:constraints];
    
    [self.view layoutIfNeeded];
}

@end
