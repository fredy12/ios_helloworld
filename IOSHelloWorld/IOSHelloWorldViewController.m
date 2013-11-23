//
//  IOSHelloWorldViewController.m
//  IOSHelloWorld
//
//  Created by Para Yang on 13-6-10.
//  Copyright (c) 2013年 Para Yang. All rights reserved.
//

#import "IOSHelloWorldViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface IOSHelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation IOSHelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // add a button - tongkai
    
    [[self.button layer] setBorderWidth: 1.0f];
    [[self.button layer] setBorderColor:[UIColor whiteColor].CGColor];
    [[self.button layer] setCornerRadius: 10.0f];
    [[self.button layer] setMasksToBounds: YES];  /* means is the first layer */
    
    /*  add a button by code
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(0, 0, 80, 40);
    
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:10.0]; //设置矩形四个圆角半径
    
    [btn.layer setBorderWidth:5.0];   //边框宽度
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    CGColorRef colorref = CGColorCreate(colorSpace,(CGFloat[]){ 1, 0, 0, 1 });
    
    [btn.layer setBorderColor:colorref];//边框颜色
    
    [self.view addSubview:btn];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
