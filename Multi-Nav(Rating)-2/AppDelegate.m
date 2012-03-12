//
//  AppDelegate.m
//  Multi-Nav(Rating)-2
//
//  Created by xxd on 12-3-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Player.h"
#import "PlayersViewController.h"

@implementation AppDelegate {
    NSMutableArray *players;
}

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    players = [NSMutableArray arrayWithCapacity:20];
    
    Player *player = [[Player alloc] init];
	player.name = @"xxd";
	player.game = @"游泳";
	player.rating = 5;
	[players addObject:player];
    
	player = [[Player alloc] init];
	player.name = @"张三";
	player.game = @"足球";
	player.rating = 4;
	[players addObject:player];
    
	player = [[Player alloc] init];
	player.name = @"李四";
	player.game = @"篮球";
	player.rating = 3;
	[players addObject:player];
    
    //此为storyboard的局限，在Interface Builder时代，在MainWindow.xib中可以链接view controllers到App Delegate的outlets，但是现在不可以，只能写代码设置第一个controller是什么
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    
    //同样UINavigationController也只能这样设置，指定UINavigationController是tabBarController的第一个显示
    UINavigationController *navigationController = [[tabBarController viewControllers] objectAtIndex:0];
    
    //指定PlayersViewController是navigationController的第一个显示
    PlayersViewController *playersViewController = [[navigationController viewControllers] objectAtIndex:0];
    
    //我认为上边的三句都是为了设定这一句而写，因为不写默认就是上边的顺序，但是不写就没有这个和players链接的接口了
	playersViewController.players = players;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
