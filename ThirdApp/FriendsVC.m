//
//  FriendsVC.m
//  ThirdApp
//
//  Created by Daniel Rodriguez on 10/13/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import "FriendsVC.h"
#import "FriendsCell.h"

@interface FriendsVC ()

@end

@implementation FriendsVC
NSMutableArray *friends;
NSMutableArray *friendImages;


- (void)viewDidLoad {
    [super viewDidLoad];

    friends       = [NSMutableArray arrayWithObjects: @"Barto Simpson", @"Homero Simpson", @"Lisa Simpson", @"Marge Bouvier", @"Santa's Little Helper ", @"Dana Scully", @"Bobo Burns", nil];
    friendImages  = [NSMutableArray arrayWithObjects: @"bart.png", @"homer.png", @"lisa.png", @"marge.png", @"ruprecht.png", @"scully.png", @"bobo.png", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [friends count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellFamily");
    static NSString *CellIdentifier = @"FriendsCell";
    
    FriendsCell *cell = (FriendsCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[FriendsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.txtFriend.text = friends[indexPath.row];
    cell.imgFriendCell.image = [UIImage imageNamed:friendImages[indexPath.row]];;

    
    return cell;
}

@end
