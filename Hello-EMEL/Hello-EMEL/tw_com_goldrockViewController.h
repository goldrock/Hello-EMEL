//
//  tw_com_goldrockViewController.h
//  Hello-EMEL
//
//  Created by ernist on 13/9/12.
//  Copyright (c) 2013年 Goldrock. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tw_com_goldrockViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)firstAction:(id)sender;

@end
