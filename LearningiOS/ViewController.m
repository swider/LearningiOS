//
//  ViewController.m
//  LearningiOS
//
//  Created by swider on 12/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#include <stdlib.h>

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];
	[self setRandomBGColor];
}

- (void)loadView
{
	CGRect viewRect = [[UIScreen mainScreen] bounds];
	UIView *view = [[UIView alloc] initWithFrame:viewRect];
	self.view = view;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	} else {
	    return YES;
	}
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSLog(@"Touched!");
	[self setRandomBGColor];
}

- (void)setRandomBGColor
{
	float low_bound = 0;      
	float high_bound = 1;
	float red = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
	float green = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
	float blue = (((float)arc4random()/0x100000000)*(high_bound-low_bound)+low_bound);
	self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
