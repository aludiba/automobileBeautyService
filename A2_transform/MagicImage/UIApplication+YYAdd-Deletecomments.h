#import <UIKit/UIKit.h>
#import "UIApplication+YYAdd.h"
#import "NSArray+YYAdd.h"
#import "NSObject+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIDevice+YYAdd.h"
#import <sys/sysctl.h>
#import <mach/mach.h>
#import <objc/runtime.h>

@interface UIApplication (YYAdd-Deletecomments)
+ (BOOL)documentsURL-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)documentsPath-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cachesURL-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cachesPath-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)libraryURL-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)libraryPath-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isPirated-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_yy_fileExistInMainBundle-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)appBundleName-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)appBundleID-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)appVersion-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)appBuildVersion-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isBeingDebugged-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)memoryUsage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cpuUsage-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_delaySetActivity-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)_changeNetworkActivityCount-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)incrementNetworkActivityCount-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)decrementNetworkActivityCount-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)isAppExtension-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)sharedExtensionApplication-Deletecomments:(NSInteger)-deleteComments;

@end
