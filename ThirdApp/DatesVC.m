//
//  DatesVC.m
//  ThirdApp
//
//  Created by Daniel Rodriguez on 10/13/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import "DatesVC.h"

@interface DatesVC ()

@end

@implementation DatesVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self chan:nil];
    self.txtDateDiff.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chan:(id)sender
{
    NSLog(@"FAD");
    //NSLocale *usLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    
    NSDate *startPickerDate = [self.dpStartDate date];
    NSDate *finishPickerDate = [self.dpFinishDate date];
    
    NSCalendar *c = [NSCalendar currentCalendar];
    NSDateComponents *components = [c components:NSDayCalendarUnit fromDate:startPickerDate toDate:finishPickerDate options:0];
    NSInteger diff = components.day;
    
    NSString *string = [NSString stringWithFormat:@"%d days", ABS(diff)];
    
    self.txtDateDiff.text = string;
    self.txtDateDiff.adjustsFontSizeToFitWidth = YES;
    
}

- (IBAction)shareButtonPressed:(id)sender {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMMM-dd-yyyy"];
    NSString *strDate = [dateFormatter stringFromDate:self.dpStartDate.date];
    NSString *finishDate = [dateFormatter stringFromDate:self.dpFinishDate.date];
    
    
    
    NSString *strShareMsg = [NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@.", @"Los dias de diferencia entre", strDate, @"y", finishDate, @"son", self.txtDateDiff.text];
    
    NSArray *aShareItems = @[strShareMsg];
    
    UIActivityViewController *actViewController = [[UIActivityViewController alloc] initWithActivityItems:aShareItems applicationActivities:nil];
    
    actViewController.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, UIActivityTypeMail, nil];
    
    [self presentViewController:actViewController animated:YES completion:nil];
}
@end
