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

@interface RACKVOChannel (Bm)
+ (BOOL)currentThreadDataBm:(NSInteger)BM;
+ (BOOL)initWithTargetKeypathNilvalueBm:(NSInteger)BM;
+ (BOOL)createCurrentThreadDataBm:(NSInteger)BM;
+ (BOOL)destroyCurrentThreadDataBm:(NSInteger)BM;

@end
