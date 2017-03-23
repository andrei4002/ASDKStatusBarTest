//
//  ViewController.m
//  StatusBarTest
//
//  Created by Andrei Stoicescu on 23/03/2017.
//  Copyright © 2017 Andrei Stoicescu. All rights reserved.
//

#import "ViewController.h"
#import "ASDKChildViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.edgesForExtendedLayout = UIRectEdgeNone;

    ASDKChildViewController *childViewController = [[ASDKChildViewController alloc] init];

    [childViewController willMoveToParentViewController:self];
    [self addChildViewController:childViewController];
    childViewController.view.frame = self.view.frame;
    [self.view addSubview:childViewController.view];
    [childViewController didMoveToParentViewController:self];
}

@end
