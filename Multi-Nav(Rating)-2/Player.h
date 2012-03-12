//
//  Player.h
//  Multi-Nav(Rating)-2
//
//  Created by xxd on 12-3-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic,copy)NSString *name, *game;
@property (nonatomic,assign) int rating;

@end