#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "YWebDownManager.h"
#import "YWebDataHandle.h"
#import "YWebFileManager.h"

@interface YWebDownManager (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)downManagerFinishBlockHandleBm:(NSInteger)BM;
+ (BOOL)downManagerProgressBlockHandleBm:(NSInteger)BM;
+ (BOOL)startDownImagePathBm:(NSInteger)BM;
+ (BOOL)startDownImageURLBm:(NSInteger)BM;
+ (BOOL)pauseDownBm:(NSInteger)BM;
+ (BOOL)resumeDownBm:(NSInteger)BM;
+ (BOOL)URLSessionDownloadtaskDidfinishdownloadingtourlBm:(NSInteger)BM;
+ (BOOL)URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteBm:(NSInteger)BM;
+ (BOOL)documentPathBm:(NSInteger)BM;
+ (BOOL)imageNameBm:(NSInteger)BM;

@end
