#import <UIKit/UIKit.h>
#import "UISegmentedControl+RACSignalSupport.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "UIControl+RACSignalSupportPrivate.h"

@interface UISegmentedControl (RACSignalSupportBm)
+ (BOOL)rac_newSelectedSegmentIndexChannelWithNilValueBm:(NSInteger)BM;

@end
