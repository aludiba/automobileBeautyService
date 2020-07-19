#import <Foundation/Foundation.h>
#import "YWebDataHandle.h"

@interface YWebDataHandle (Hb)
+ (BOOL)imageNameForBase64HandleHb:(NSInteger)hb;
+ (BOOL)stringForBase64HandleHb:(NSInteger)hb;
+ (BOOL)documentPathHb:(NSInteger)hb;
+ (BOOL)documentAppendPathHb:(NSInteger)hb;
+ (BOOL)documentAppendPathsHb:(NSInteger)hb;
+ (BOOL)documentYWebImageFileWithFolderHb:(NSInteger)hb;
+ (BOOL)documentYWebImageFileAppendWithFolderWithfileHb:(NSInteger)hb;
+ (BOOL)documentYWebImageFileAppendBase64WithFolderWithfileHb:(NSInteger)hb;

@end
