#import "RACChannel.h"
#import <ReactiveObjC/RACEXTKeyPathCoding.h>
#import "RACmetamacros.h"
#import "RACKVOChannel.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACKVOWrapper.h"
#import "NSString+RACKeyPathUtilities.h"
#import "RACChannel.h"
#import "RACCompoundDisposable.h"
#import "RACDisposable.h"
#import "RACSignal+Operations.h"

@interface RACKVOChannel (Hb)
+ (BOOL)currentThreadDataHb:(NSInteger)hb;
+ (BOOL)initWithTargetKeypathNilvalueHb:(NSInteger)hb;
+ (BOOL)createCurrentThreadDataHb:(NSInteger)hb;
+ (BOOL)destroyCurrentThreadDataHb:(NSInteger)hb;

@end
