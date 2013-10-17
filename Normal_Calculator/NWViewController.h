//
//  NWViewController.h
//  Normal_Calculator
//
//  Created by Nicholas Wargnier on 10/17/13.
//  Copyright (c) 2013 Nicholas Wargnier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NWViewController : UIViewController

// Outlets
@property (strong, nonatomic) IBOutlet UILabel *displayLabel;




// IBActions

- (IBAction)clearButtonPressed:(UIButton *)sender;
- (IBAction)numberButtonPressed:(UIButton *)sender;
- (IBAction)posnegButtonPressed:(UIButton *)sender;

@end
