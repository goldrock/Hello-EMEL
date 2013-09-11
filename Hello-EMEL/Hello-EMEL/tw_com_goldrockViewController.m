//
//  tw_com_goldrockViewController.m
//  Hello-EMEL
//
//  Created by ernist on 13/9/12.
//  Copyright (c) 2013年 Goldrock. All rights reserved.
//

#import "tw_com_goldrockViewController.h"

@interface tw_com_goldrockViewController ()

@end

@implementation tw_com_goldrockViewController

@synthesize display, counter;

-(id)init {
	if (self = [super init])  {
		self.counter = 1;
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) click1{
	@autoreleasepool {
		display.text = [NSString stringWithFormat:@"%d", self.counter++];
	}
}

@end
