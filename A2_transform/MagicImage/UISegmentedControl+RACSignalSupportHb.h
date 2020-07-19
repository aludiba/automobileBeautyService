#import <UIKit/UIKit.h>
#import "UISegmentedControl+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UISegmentedControl (RACSignalSupportHb)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueHb:(NSInteger)hb;

@end
