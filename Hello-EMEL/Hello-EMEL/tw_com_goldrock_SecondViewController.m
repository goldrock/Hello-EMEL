//
//  tw_com_goldrock_SecondViewController.m
//  
//
//  Created by ernist on 13/9/18.
//
//

#import "tw_com_goldrock_SecondViewController.h"

@interface tw_com_goldrock_SecondViewController ()

@end

@implementation tw_com_goldrock_SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)done:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void) showText:(NSString *) text{
	NSLog(@"%@", text);
}
@end
