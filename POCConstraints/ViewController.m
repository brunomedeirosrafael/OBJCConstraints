//
//  ViewController.m
//  POCConstraints
//
//  Created by Bruno Medeiros Rafael on 12/06/17.
//  Copyright © 2017 Bruno Medeiros Rafael. All rights reserved.
//

#import "ViewController.h"
#import "TextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self createCenterView];
    //[self createMarginView];
    
    //[self createXIBView];
    //[self creteViewFull:self.view];
    
    [self createViewInView];
}

- (void)createCenterView {
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    
    [view1 setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:view1];

    NSLayoutConstraint *x = [NSLayoutConstraint constraintWithItem:view1
                                                         attribute:NSLayoutAttributeCenterX
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeCenterX
                                                        multiplier:1
                                                          constant:0];
    NSLayoutConstraint *y = [NSLayoutConstraint constraintWithItem:view1
                                                         attribute:NSLayoutAttributeCenterY
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:self.view
                                                         attribute:NSLayoutAttributeCenterY
                                                        multiplier:1
                                                          constant:0];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view1
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:100];
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view1
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:100];
    
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
    
    NSLayoutConstraint *topMargin = [NSLayoutConstraint constraintWithItem:view1
                                                                 attribute:NSLayoutAttributeTopMargin
                                                                 relatedBy:NSLayoutRelationEqual
                                                                    toItem:self.view
                                                                 attribute:NSLayoutAttributeTopMargin
                                                                multiplier:1
                                                                  constant:50];
    
    NSLayoutConstraint *leftMargin = [NSLayoutConstraint constraintWithItem:view1
                                                                  attribute:NSLayoutAttributeLeading
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeLeading
                                                                 multiplier:1
                                                                   constant:50];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view1
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:100];
    
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view1
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:nil
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:100];
    
    NSArray *constraints = @[topMargin, leftMargin, height, width];
    
    [self.view addConstraints:constraints];
    
    [self.view layoutIfNeeded];
}

- (void)createXIBView {
    TextView *view = [[TextView alloc] init];
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    view.label.text = @"Oi, eu sou o Goku!!!!";
    
    [self.view addSubview:view];
    
    //NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    
    NSLayoutConstraint *topMargin = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTopMargin multiplier:1 constant:50];
    
    NSLayoutConstraint *leftMargin = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:50];
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:20];
    
    NSArray *constraints = @[topMargin, leftMargin, height, width];
    [self.view addConstraints:constraints];
    
}

- (void)creteViewFull:(UIView *)parent{
    TextView *view = [[TextView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.label.text = @"bbbbbbbbbbb mmmmmmmmn nnnnnnnn kkkkkkk lllllll ooooooo iiiiii uuuuuu yyyyyyyy ttttttt rrrr ";

    [view setTranslatesAutoresizingMaskIntoConstraints:false];
    [self.view addSubview:view];
    [view creteViewFull:self.view];
}

-(void)createViewInView {
    UIView *container = [[UIView alloc] init];
    container.backgroundColor = [UIColor blueColor];
    
    [container setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:container];
    
    [self constraintCenterView:container];
    
    TextView *firstView = [[TextView alloc] init];
    firstView.backgroundColor = [UIColor redColor];
    firstView.label.text = @"bbbbbbbbbbb mmmmmmmmn nnnnnnnn kkkkkkk lllllll ooooooo iiiiii uuuuuu yyyyyyyy ttttttt rrrr ";

    [firstView setTranslatesAutoresizingMaskIntoConstraints:false];
    [container addSubview:firstView];

    NSLayoutConstraint *leadingView1 = [NSLayoutConstraint constraintWithItem:firstView
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:container
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1
                                                                constant:0];
    NSLayoutConstraint *trailingView1 = [NSLayoutConstraint constraintWithItem:firstView
                                                                attribute:NSLayoutAttributeTrailing
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:container
                                                                attribute:NSLayoutAttributeTrailing
                                                               multiplier:1
                                                                 constant:0];
    NSLayoutConstraint *topView1 = [NSLayoutConstraint constraintWithItem:firstView
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:container
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:16];
    
    NSLayoutConstraint *heightView1 = [NSLayoutConstraint constraintWithItem:firstView
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:20];
    
    NSArray *constraints = @[trailingView1, leadingView1, heightView1, topView1];
    [container addConstraints:constraints];

    
    
    
    TextView *secondView = [[TextView alloc] init];
    secondView.backgroundColor = [UIColor greenColor];
    secondView.label.text = @"bbbbbbbbbbb mmmmmmmmn nnnnnnnn kkkkkkk lllllll ooooooo iiiiii uuuuuu yyyyyyyy ttttttt rrrr ";
    
    [secondView setTranslatesAutoresizingMaskIntoConstraints:false];
    [container addSubview:secondView];
    
    NSLayoutConstraint *leadingView2 = [NSLayoutConstraint constraintWithItem:secondView
                                                                    attribute:NSLayoutAttributeLeading
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:container
                                                                    attribute:NSLayoutAttributeLeading
                                                                   multiplier:1
                                                                     constant:0];
    NSLayoutConstraint *trailingView2 = [NSLayoutConstraint constraintWithItem:secondView
                                                                     attribute:NSLayoutAttributeTrailing
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:container
                                                                     attribute:NSLayoutAttributeTrailing
                                                                    multiplier:1
                                                                      constant:0];
    NSLayoutConstraint *topView2 = [NSLayoutConstraint constraintWithItem:secondView
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:firstView
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1
                                                                 constant:0];
    
    NSLayoutConstraint *heightView2 = [NSLayoutConstraint constraintWithItem:secondView
                                                                   attribute:NSLayoutAttributeHeight
                                                                   relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                      toItem:nil
                                                                   attribute:NSLayoutAttributeNotAnAttribute
                                                                  multiplier:1
                                                                    constant:20];
    
    NSArray *constraints2 = @[trailingView2, leadingView2, heightView2, topView2];
    [container addConstraints:constraints2];
    
}

- (void)constraintCenterView:(UIView *)view {
    NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:view
                                                               attribute:NSLayoutAttributeLeading
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.view
                                                               attribute:NSLayoutAttributeLeading
                                                              multiplier:1
                                                                constant:0];
    NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:view
                                                                attribute:NSLayoutAttributeTrailing
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.view
                                                                attribute:NSLayoutAttributeTrailing
                                                               multiplier:1
                                                                 constant:0];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:view
                                                           attribute:NSLayoutAttributeTopMargin
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.view
                                                           attribute:NSLayoutAttributeTopMargin
                                                          multiplier:1
                                                            constant:8];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeBottomMargin
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeBottomMargin
                                                             multiplier:1
                                                               constant:8];

    
    NSArray *constraints = @[leading, trailing, top,bottom];
    
    [self.view addConstraints:constraints];
}

@end
