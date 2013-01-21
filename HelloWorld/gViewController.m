//
//  gViewController.m
//  HelloWorld
//
//  Created by JACOB WORKMAN on 1/17/13.
//  Copyright (c) 2013 JACOB WORKMAN. All rights reserved.
//

#import "gViewController.h"

@interface gViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation gViewController

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

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textfield.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textfield) {
        self.userName = self.textfield.text;
        
        NSString *nameString = self.userName;
        if ([nameString length] == 0) {
            nameString = @"World";
        }
        NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
        self.label.text = greeting;        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
