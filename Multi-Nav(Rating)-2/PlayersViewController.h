//
//  PlayersViewController.h
//  Multi-Nav(Rating)-2
//
//  Created by xxd on 12-3-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController<PlayerDetailsViewControllerDelegate>

@property (nonatomic,strong) NSMutableArray *players;
-(UIImage *)imageForRating:(int)rating;
@end
