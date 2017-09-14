//
//  AppDelegate.h
//  UIVisualEffectView
//
//  Created by 威盛电气 on 2017/9/14.
//  Copyright © 2017年 fzy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

