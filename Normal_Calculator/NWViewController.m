//
//  NWViewController.m
//  Normal_Calculator
//
//  Created by Nicholas Wargnier on 10/17/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import "NWViewController.h"
#import "NWCalculator.h"

@interface NWViewController ()
@property (nonatomic) BOOL enteringNumber;
@property (nonatomic) BOOL decimalPressed;
@property (nonatomic, strong) NWCalculator *calculator;
@end

@implementation NWViewController

//@synthesize displayLabel = _displayLabel;
//@synthesize enteringNumber = _enteringNumber;
//@synthesize decimalPressed = _decimalPressed;
//@synthesize calculator = _calculator;

-(NWCalculator *)calculator
{
    if(!_calculator) _calculator = [[NWCalculator alloc]init];
    return _calculator;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// IBActions
#pragma mark - IBAction

- (IBAction)clearButtonPressed:(UIButton *)sender
{
    
    self.displayLabel.text = @"0";
    self.enteringNumber = NO;
    self.decimalPressed = NO;
    

}

- (IBAction)numberButtonPressed:(UIButton *)sender
{
    NSString *number = sender.currentTitle;
    if (self.enteringNumber) {
        self.displayLabel.text = [self.displayLabel.text stringByAppendingString:number];
    } else {
        self.displayLabel.text = number;
        self.enteringNumber = YES;
    }
}

- (IBAction)posnegButtonPressed:(UIButton *)sender
{
    float number = [self.displayLabel.text floatValue];
    if (number < 0) {
        self.displayLabel.text = [self.displayLabel.text substringWithRange:NSMakeRange(1, [self.displayLabel.text length] - 1)];
    } else if (number == 0) {
        
    } else {
        self.displayLabel.text = [@"-" stringByAppendingString:self.displayLabel.text];
    }
    
    
}

- (IBAction)decimalButtonPressed:(UIButton *)sender
{
    if (self.decimalPressed) {
        return;
    } else {
        [self numberButtonPressed:sender];
        self.decimalPressed = YES;
    }
    
}

- (IBAction)operationButtonPressed:(UIButton *)sender
{
    float result = [self.calculator operationPushed:sender.currentTitle number:[self.displayLabel.text floatValue]];
    self.displayLabel.text = [NSString stringWithFormat:@"%g", result];
    self.enteringNumber = NO;
    
    
    
}

- (IBAction)equalButtonPressed:(UIButton *)sender
{
    self.calculator.secondNumber = [self.displayLabel.text floatValue];
    float result = [self.calculator calculateResult];
    self.displayLabel.text = [NSString stringWithFormat:@"%g", result];
    self.enteringNumber = NO;
}









@end
