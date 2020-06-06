//
//  main.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/24.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        [NBSAppAgent startWithAppID:TingYunAPPKey location:YES];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
