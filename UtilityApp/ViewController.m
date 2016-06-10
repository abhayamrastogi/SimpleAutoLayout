//
//  ViewController.m
//  UtilityApp
//
//  Created by abhayam rastogi on 23/11/15.
//  Copyright © 2015 Intelligrape. All rights reserved.
//

#import "ViewController.h"
#import "Utility.h"

@interface ViewController (){
    UIImageView *primaryImageView;
    UIImageView *secondaryImageView;
}

@end

@implementation ViewController

#pragma mark- Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set background color of self.view
    self.view.backgroundColor = UTColor(255, 255, 255);
    
    [self configureViews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark- Private Methods

-(void)configureViews{
    
    // Add secondaryImageView object
    secondaryImageView = IMAGEVIEW(@"blueflower.png")
    [self.view addSubview:secondaryImageView];
    PREPCONSTRAINTS(secondaryImageView);
    CENTER_VIEW(self.view, secondaryImageView);
    
    // Add primaryImageView object
    primaryImageView = IMAGEVIEW(@"redflower.png")
    [self.view addSubview:primaryImageView];
    PREPCONSTRAINTS(primaryImageView);
    CENTER_VIEW(self.view, primaryImageView);
    
    // Prepare secondary object
    secondaryImageView.alpha = 0.0f;
    secondaryImageView.transform = CGAffineTransformMakeScale(0.25f, 0.25f);
    
    self.navigationItem.rightBarButtonItem = BARBUTTON(@"Swap", @selector(swap:));
    
    
    // Use of UTLog
    UTLog(@"App version:%@",APP_VERSION);
    UTLog(@"App ID:%@",APP_ID);
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:button];
    [button setTitleColor:UTColor(0, 0, 0) forState:UIControlStateNormal];
    BUTTONTITLE(button, @"Static Button");
    PREPCONSTRAINTS(button);
    CENTER_VIEW_H(self.view, button);
    ALIGN_VIEW_TOP_TO_VIEW_BOTTOM_CONSTANT(self.view, button, primaryImageView, 50);
    BUTTON_ADD_TARGET(button, self, bottomButtonAction:);
    [button setBackgroundColor:UTColor(245, 245, 245)];
}

#pragma mark- Handler Methods

-(void)swap:(id)sender{
    
    self.navigationItem.rightBarButtonItem.enabled = NO;
    [UIView animateWithDuration:1.0f
                     animations:^{
                         primaryImageView.alpha = 0.0f;
                         secondaryImageView.alpha = 1.0f;
                         primaryImageView.transform = CGAffineTransformMakeScale(0.25f, 0.25f);
                         secondaryImageView.transform = CGAffineTransformIdentity;
                         [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
                     }
                     completion:^(BOOL done){
                         UIImageView *tmp = primaryImageView;
                         primaryImageView = secondaryImageView;
                         secondaryImageView = tmp;
                         self.navigationItem.rightBarButtonItem.enabled = YES;
                     }];
    
}

-(void)bottomButtonAction:(id)sender{
    UTLog(@"Bottom button pressed");
}


@end
