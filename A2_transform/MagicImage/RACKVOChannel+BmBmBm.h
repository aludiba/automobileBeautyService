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
#import "RACKVOChannel+Bm.h"
#import "RACKVOChannel+BmBm.h"

@interface RACKVOChannel (BmBmBm)
+ (BOOL)currentThreadDataBmBmBm:(NSInteger)BM;
+ (BOOL)initWithTargetKeypathNilvalueBmBmBm:(NSInteger)BM;
+ (BOOL)createCurrentThreadDataBmBmBm:(NSInteger)BM;
+ (BOOL)destroyCurrentThreadDataBmBmBm:(NSInteger)BM;

@end
