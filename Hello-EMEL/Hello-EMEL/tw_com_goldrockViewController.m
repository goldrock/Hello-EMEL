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

@synthesize textField;

NSMutableString *_t;

- (void)viewDidLoad {
	[super viewDidLoad];
	_t = [[NSMutableString alloc] initWithString: @""];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstAction:(id)sender {
	[_t appendString:@"x"];
	self.textField.text = _t;
	//NSLog(@"%@", [sender name]);
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
	
	[self.textField resignFirstResponder];
	return YES;
}
@end
