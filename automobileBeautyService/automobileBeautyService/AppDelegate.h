//
//  AppDelegate.h
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

