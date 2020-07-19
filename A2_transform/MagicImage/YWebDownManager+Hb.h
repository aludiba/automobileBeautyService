#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "YWebDownManager.h"
#import "YWebDataHandle.h"
#import "YWebFileManager.h"

@interface YWebDownManager (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)downManagerFinishBlockHandleHb:(NSInteger)hb;
+ (BOOL)downManagerProgressBlockHandleHb:(NSInteger)hb;
+ (BOOL)startDownImagePathHb:(NSInteger)hb;
+ (BOOL)startDownImageURLHb:(NSInteger)hb;
+ (BOOL)pauseDownHb:(NSInteger)hb;
+ (BOOL)resumeDownHb:(NSInteger)hb;
+ (BOOL)URLSessionDownloadtaskDidfinishdownloadingtourlHb:(NSInteger)hb;
+ (BOOL)URLSessionDownloadtaskDidwritedataTotalbyteswrittenTotalbytesexpectedtowriteHb:(NSInteger)hb;
+ (BOOL)documentPathHb:(NSInteger)hb;
+ (BOOL)imageNameHb:(NSInteger)hb;

@end
