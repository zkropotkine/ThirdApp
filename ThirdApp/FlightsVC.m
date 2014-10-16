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
NSMutableArray *aerolines;
NSMutableArray *destinationFlight;
NSMutableArray *originFlight;
NSMutableArray *friendImages;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.txtAeroline.enabled = NO;
    self.txtOrigin.enabled = NO;
    self.txtDestination.enabled = NO;
    
    aerolines = [NSMutableArray arrayWithObjects: @"Volaris", @"Aeromexico", @"Viva Aerobus", @"Delta", nil];
    originFlight = [NSMutableArray arrayWithObjects: @"La Paz", @"Cabo", @"San Jose del Cabo", @"Guerrero Negro", @"Otro", nil];
    destinationFlight = [NSMutableArray arrayWithObjects: @"Guadalajara", @"Cancun", @"Chiapas", @"Tijuana", @"Monterrey", nil];
    friendImages  = [NSMutableArray arrayWithObjects: @"bart.png", @"homer.png", @"lisa.png", @"marge.png", @"ruprecht.png", @"scully.png", @"bobo.png", nil];
    
     [self btnSeePressed:nil];
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
    return [aerolines count];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    NSLog(@"CCCCc");
    if (component == 0)
    {
        return 90;
    }
    else if (component == 1)
    {
        return 90;
    }
    else
    {
        return 90;
    }
}


- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel* tView = (UILabel*)view;
    if (!tView)
    {
        tView = [[UILabel alloc] init];
        [tView setFont:[UIFont fontWithName:@"Helvetica" size:14]];
        //[tView setTextAlignment:UITextAlignmentLeft];
        [tView setTextAlignment:NSTextAlignmentCenter];
        tView.numberOfLines=3;
    }
    
    if (component == 0)
    {
        tView.text = aerolines[row];
    }
    else if(component == 1)
    {
        tView.text = originFlight[row];
    }
    else if (component == 2)
    {
        tView.text = destinationFlight[row];
    }
    
    
    return tView;
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"%i, %i", component, row);
    
    if (component == 0) {
        if (row == 0)
        {
            [originFlight removeAllObjects];
            [originFlight addObjectsFromArray: @[@"La Paz", @"Cabo", @"San Jose", @"Acapulco", @"Otro"]];
            
            [destinationFlight removeAllObjects];
            [destinationFlight addObjectsFromArray:@[@"Guadalajara", @"Cancun", @"Chiapas", @"Tijuana", @"Monterrey"]];
        }
        else if (row == 1)
        {
            [originFlight removeAllObjects];
            [originFlight addObjectsFromArray: @[ @"Guadalajara", @"Tijuana", @"Oaxaca", @"Veracruz", @"Merida"]];
            
            [destinationFlight removeAllObjects];
            [destinationFlight addObjectsFromArray:@[@"Cancun", @"Chicago", @"Denver", @"Portland", @"Chiapas"]];
        }
        else if (row == 2)
        {
            [originFlight removeAllObjects];
            [originFlight addObjectsFromArray: @[ @"Culiacan", @"Mazatlan", @"Mochis", @"Tampico", @"Toluca"]];
            
            [destinationFlight removeAllObjects];
            [destinationFlight addObjectsFromArray:@[@"Ixtapa", @"Guatemala", @"Cuba", @"Belice", @"Chicago"]];
        }
        else if (row == 3)
        {
            [originFlight removeAllObjects];
            [originFlight addObjectsFromArray: @[ @"Cancun", @"Mochis", @"Oaxaca", @"Chiapas", @"Monterrey"]];
            
            [destinationFlight removeAllObjects];
            [destinationFlight addObjectsFromArray:@[@"La Paz", @"Cabo", @"Dresden", @"Tijuana", @"Panama"]];
        }
                  
        NSLog(@"The content of arry is%@",originFlight);

    }
    
    [pickerView reloadAllComponents];
}



- (IBAction)btnSeePressed:(id)sender {
    self.txtAeroline.text = aerolines[[self.pvAeroDatos selectedRowInComponent:0]];
    self.txtOrigin.text = originFlight[[self.pvAeroDatos selectedRowInComponent:1]];
    self.txtDestination.text = destinationFlight[[self.pvAeroDatos selectedRowInComponent:2]];
}

- (IBAction)btnSharePressed:(id)sender {
    NSString *strShareMsg = [NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@.", @"Saliendo de", self.txtOrigin.text, @"hacia", self.txtDestination.text , @"por", self.txtAeroline.text];
    UIImage *imgShare    = [UIImage imageNamed:friendImages[[self.pvAeroDatos selectedRowInComponent:0]]];
    NSArray *aShareItems = @[imgShare, strShareMsg];
    
    UIActivityViewController *actViewController = [[UIActivityViewController alloc] initWithActivityItems:aShareItems applicationActivities:nil];
    
    actViewController.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, UIActivityTypeMail, nil];
    
    [self presentViewController:actViewController animated:YES completion:nil];
}

@end
