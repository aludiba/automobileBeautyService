#import "SDWebImageCompat.h"
#import "SDImageCache.h"
#import "SDWebImageTransition.h"
#import <QuartzCore/QuartzCore.h>

@interface SDWebImageTransition (ConveniencesBm)
+ (BOOL)fadeTransitionBm:(NSInteger)BM;
+ (BOOL)flipFromLeftTransitionBm:(NSInteger)BM;
+ (BOOL)flipFromRightTransitionBm:(NSInteger)BM;
+ (BOOL)flipFromTopTransitionBm:(NSInteger)BM;
+ (BOOL)flipFromBottomTransitionBm:(NSInteger)BM;
+ (BOOL)curlUpTransitionBm:(NSInteger)BM;
+ (BOOL)curlDownTransitionBm:(NSInteger)BM;

@end
