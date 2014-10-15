//
//  FriendsCell.h
//  ThirdApp
//
//  Created by Daniel Rodriguez on 10/13/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *txtFriend;
@property (strong, nonatomic) IBOutlet UIImageView *imgFriendCell;
@property (strong, nonatomic) IBOutlet UIButton *btnShare;

@end
