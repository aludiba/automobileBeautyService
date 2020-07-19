#import <UIKit/UIKit.h>
#import "UITableViewHeaderFooterView+RACSignalSupport.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACSelectorSignal.h"
#import "RACSignal+Operations.h"
#import "RACUnit.h"
#import <objc/runtime.h>

@interface UITableViewHeaderFooterView (RACSignalSupportBm)
+ (BOOL)rac_prepareForReuseSignalBm:(NSInteger)BM;

@end
