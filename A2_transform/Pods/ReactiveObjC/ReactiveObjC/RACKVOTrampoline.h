#import <Foundation/Foundation.h>
#import "NSObject+RACKVOWrapper.h"
#import "RACDisposable.h"
@interface RACKVOTrampoline : RACDisposable
- (instancetype)initWithTarget:(__weak NSObject *)target observer:(__weak NSObject *)observer keyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options block:(RACKVOBlock)block;
@end
