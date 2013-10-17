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
@property (nonatomic, strong) NWCalculator *calculator;
@end

@implementation NWViewController

@synthesize displayLabel = _displayLabel;
@synthesize enteringNumber = _enteringNumber;
@synthesize calculator = _calculator;

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

- (IBAction)clearButtonPressed:(UIButton *)sender
{
    
    self.displayLabel.text = @"0";
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









@end
