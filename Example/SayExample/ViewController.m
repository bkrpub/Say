//
//  ViewController.m
//  SayExample
//
//  Created by Watanabe Toshinori on 2013/10/01.
//  Copyright (c) 2013 Watanabe Toshinori. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Say.h"

@interface ViewController ()
@property (nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"%@", say(@"view did appear!"));
}

- (IBAction)say:(id)sender
{
    if (self.textField.text.length > 0) {
        say(self.textField.text);
    }
}

@end
