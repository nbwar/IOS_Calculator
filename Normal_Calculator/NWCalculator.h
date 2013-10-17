//
//  NWCalculator.h
//  Normal_Calculator
//
//  Created by Nicholas Wargnier on 10/17/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NWCalculator : NSObject

@property (nonatomic) float firstNumber;
@property (nonatomic) float secondNumber;
@property (strong, nonatomic) NSString *operation;
@property (nonatomic) BOOL resetOrderOfOperation;

//-(void)clearCalc;
-(float)operationPushed:(NSString *)operaton number:(float)number;
@end
