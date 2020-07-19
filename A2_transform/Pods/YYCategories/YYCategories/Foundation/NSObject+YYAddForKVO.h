#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
@interface NSObject (YYAddForKVO)
- (void)addObserverBlockForKeyPath:(NSString*)keyPath
                             block:(void (^)(id _Nonnull obj, id _Nonnull oldVal, id _Nonnull newVal))block;
- (void)removeObserverBlocksForKeyPath:(NSString*)keyPath;
- (void)removeObserverBlocks;
@end
NS_ASSUME_NONNULL_END
