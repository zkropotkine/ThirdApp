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
    
    self.txtDateDiff.enabled = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)startDateEditingFinished:(id)sender
{
    NSLog(@"FAD");
    NSLocale *usLocale = [[NSLocale alloc]
                          initWithLocaleIdentifier:@"en_US"];
    
    NSDate *pickerDate = [self.dpStartDate date];
    
    NSString *selectionString = [[NSString alloc]
                                 initWithFormat:@"%@",
                                 [pickerDate descriptionWithLocale:usLocale]];
    
    self.txtDateDiff.text = selectionString;
    self.txtDateDiff.adjustsFontSizeToFitWidth = YES;
}

- (IBAction)finishDateEditiingFinished:(id)sender
{
    NSLocale *usLocale = [[NSLocale alloc]
                          initWithLocaleIdentifier:@"en_US"];
    
    NSDate *pickerDate = [self.dpFinishDate date];
    
    NSString *selectionString = [[NSString alloc]
                                 initWithFormat:@"%@",
                                 [pickerDate descriptionWithLocale:usLocale]];
    
    self.txtDateDiff.text = selectionString;
    self.txtDateDiff.adjustsFontSizeToFitWidth = YES;
}
- (IBAction)chan:(id)sender
{
    NSLog(@"FAD");
    NSLocale *usLocale = [[NSLocale alloc]
                          initWithLocaleIdentifier:@"en_US"];
    
    NSDate *pickerDate = [self.dpStartDate date];
    
    NSString *selectionString = [[NSString alloc]
                                 initWithFormat:@"%@",
                                 [pickerDate descriptionWithLocale:usLocale]];
    
    self.txtDateDiff.text = selectionString;
    self.txtDateDiff.adjustsFontSizeToFitWidth = YES;
}
@end
