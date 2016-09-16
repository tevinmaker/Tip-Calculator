//
//  ViewController.m
//  Tip Calculator
//
//  Created by Tevin Maker on 2016-09-16.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *billAmountField;
@property (strong, nonatomic) IBOutlet UIButton *calFixedTipButton;
@property (nonatomic) float billAmount;
@property (nonatomic) int tipPercentage;
@property (strong, nonatomic) IBOutlet UILabel *tipPercentageLabel;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
@property (strong, nonatomic) IBOutlet UISlider *tipSlider;
@property (strong, nonatomic) IBOutlet UILabel *tipAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    [self.billAmountField resignFirstResponder];
}

- (IBAction)inputBillAmount:(UITextField*)sender {
    NSString * userInput = sender.text;
    self.billAmount = [userInput intValue];
    [self updateTip];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    [self updateTip];
}

-(void) updateTip {
    self.tipPercentage = self.tipSlider.value;
    self.tipPercentageLabel.text = [NSString stringWithFormat:@"%d", self.tipPercentage];
    self.tipAmount.text = [NSString stringWithFormat:@"%f",(self.billAmount * self.tipPercentage)/ 100];
}

@end
