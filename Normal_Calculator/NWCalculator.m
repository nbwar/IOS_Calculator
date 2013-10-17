//
//  NWCalculator.m
//  Normal_Calculator
//
//  Created by Nicholas Wargnier on 10/17/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import "NWCalculator.h"

@implementation NWCalculator

@synthesize firstNumber = _firstNumber;
@synthesize operation = _operation;
@synthesize resetOrderOfOperation = _resetOrderOfOperation;

-(float)operationPushed:(NSString *)operation number:(float)number
{

    _operation = operation;

    if (_resetOrderOfOperation == NO) {
        _firstNumber = number;
        number = 0;
        
    } else {
        _secondNumber = number;
        number = [self calculateResult];
    }
    [self setOrderOfOperation];
    return number;
}

-(void)setOrderOfOperation
{
    NSLog(@"%@", _resetOrderOfOperation ? @"YES" : @"NO");
    if (_resetOrderOfOperation == YES) {
        _resetOrderOfOperation = NO;
    } else {
        _resetOrderOfOperation = YES;
    }
}

-(float)calculateResult
{
    NSLog(@"%@", _operation);
    if ([_operation isEqualToString:@"/"]) {
        return _firstNumber / _secondNumber;
    } else if ([_operation isEqualToString:@"+"]) {
        return _firstNumber + _secondNumber;
    } else if ([_operation isEqualToString:@"-"]) {
        return _firstNumber - _secondNumber;
    } else if ([_operation isEqualToString:@"x"]) {
        return _firstNumber * _secondNumber;
    } else {
        return _secondNumber;
    }
    
}

@end
