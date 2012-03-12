//
//  GamePickerViewController.h
//  Multi-Nav(Rating)-2
//
//  Created by xxd on 12-3-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>
-(void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController
@property (nonatomic,weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic,strong) NSString *game;

@end
