#import <UIKit/UIKit.h>
#import "UITableViewCell+RACSignalSupport.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACSelectorSignal.h"
#import "RACSignal+Operations.h"
#import "RACUnit.h"
#import <objc/runtime.h>

@interface UITableViewCell (RACSignalSupportBm)
+ (BOOL)rac_prepareForReuseSignalBm:(NSInteger)BM;

@end
