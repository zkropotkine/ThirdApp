//
//  FlightsVC.h
//  ThirdApp
//
//  Created by Daniel Rodriguez on 10/13/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlightsVC : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtAeroline;
@property (strong, nonatomic) IBOutlet UITextField *txtOrigin;
@property (strong, nonatomic) IBOutlet UITextField *txtDestination;
@property (strong, nonatomic) IBOutlet UIPickerView *pvAeroDatos;
- (IBAction)btnSeePressed:(id)sender;
- (IBAction)btnSharePressed:(id)sender;

@end
