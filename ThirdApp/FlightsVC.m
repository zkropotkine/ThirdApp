//
//  FlightsVC.m
//  ThirdApp
//
//  Created by Daniel Rodriguez on 10/13/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import "FlightsVC.h"

@interface FlightsVC ()

@end

@implementation FlightsVC
NSMutableArray *friends;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.txtAeroline.enabled = NO;
    self.txtOrigin.enabled = NO;
    self.txtDestination.enabled = NO;
    
    friends = [NSMutableArray arrayWithObjects: @"Barto", @"Homero", @"Lisa", @"Marge", @"Santa", @"Dana", @"Bobo", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [friends count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return friends[row];
}

@end
