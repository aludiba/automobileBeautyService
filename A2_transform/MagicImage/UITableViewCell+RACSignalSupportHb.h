#import <UIKit/UIKit.h>
#import "UITableViewCell+RACSignalSupport.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACSelectorSignal.h"
#import "RACSignal+Operations.h"
#import "RACUnit.h"
#import <objc/runtime.h>

@interface UITableViewCell (RACSignalSupportHb)
+ (BOOL)rac_prepareForReuseSignalHb:(NSInteger)hb;

@end
