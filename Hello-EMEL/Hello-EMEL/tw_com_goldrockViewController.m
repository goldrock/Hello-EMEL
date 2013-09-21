//
//  tw_com_goldrockViewController.m
//  Hello-EMEL
//
//  Created by ernist on 13/9/12.
//  Copyright (c) 2013年 Goldrock. All rights reserved.
//

#import "tw_com_goldrockViewController.h"
#import "tw_com_goldrock_SecondViewController.h"
#import "tw_com_goldrockAppDelegate.h"

@interface tw_com_goldrockViewController ()

@end


@implementation tw_com_goldrockViewController

@synthesize textField;

NSMutableString *_t;
NSTimer *_timer;
NSDateFormatter *_format;
int _timeCouter;
tw_com_goldrock_SecondViewController __weak *_nextVC;

- (void)viewDidLoad {
	[super viewDidLoad];
	_t = [[NSMutableString alloc] initWithString: @""];
	// Do any additional setup after loading the view, typically from a nib.
	
	_timeCouter = 0;
	_format = [[NSDateFormatter alloc] init];
	[_format setDateFormat: @"H:m:s"];
	_timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(ticker:) userInfo:nil repeats:YES];
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

-(void) ticker:(NSTimer *)  theTimer{
	
	_timeCouter++;
	NSString *today = [_format stringFromDate:[NSDate date]];
	if ( _nextVC == nil ){
		NSLog(@"_nextVC is nil");
	} else {
		//[_nextVC showText: today];
		/*if ( _timeCouter == 5 ){
			UIAlertView *va = [[UIAlertView alloc] initWithTitle:@"time ..." message:today delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[va show];
		}*/
		
		tw_com_goldrockAppDelegate *appDelegate = (tw_com_goldrockAppDelegate *) [[UIApplication sharedApplication] delegate];
		//appDelegate v
		//UIView *topView = appDelegate.viewController.view;
	}
	
	NSLog(@"%@", today);
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	
	if ([segue.identifier isEqualToString:@"segue1"] ){
		_nextVC = [segue destinationViewController];
	}
	NSLog(@"show next view...");
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
	
	[self.textField resignFirstResponder];
	return YES;
}
@end
