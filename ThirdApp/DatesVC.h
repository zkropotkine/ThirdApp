//
//  DatesVC.h
//  ThirdApp
//
//  Created by Daniel Rodriguez on 10/13/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatesVC : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *dpStartDate;
@property (strong, nonatomic) IBOutlet UIDatePicker *dpFinishDate;
- (IBAction)startDateEditingFinished:(id)sender;
- (IBAction)finishDateEditiingFinished:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtDateDiff;
- (IBAction)chan:(id)sender;

@end
