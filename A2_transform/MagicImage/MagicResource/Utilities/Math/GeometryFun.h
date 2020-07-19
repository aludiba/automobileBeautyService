#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
BOOL isPointZero(CGPoint p);
BOOL isSizeZero(CGSize s);
BOOL isRectZero(CGRect r);
CGFloat randian(CGFloat angle);
CGFloat angle(CGFloat radian);
CGPoint intersection(CGPoint point0, CGPoint point1, CGRect rect, BOOL *flag);
CGPoint lineIntersection(CGPoint point1, CGPoint point2, CGPoint point3, CGPoint point4, BOOL *flag);
CGFloat length(CGPoint point0, CGPoint point1);
CGFloat radian(CGPoint origin, CGPoint point0, CGPoint point1);
CGFloat lineRadian(CGPoint point0, CGPoint point1);
CGPoint outPoint(CGPoint startPoint, CGPoint endPoint, CGFloat len, BOOL *flag);
BOOL isPointInRect(CGPoint point, CGRect rect);
CGPoint projectionCoordinateInLine(CGPoint sourcePoint, CGPoint linePoint, CGFloat k);
CGPoint projectionCoordinateInLine2(CGPoint sourcePoint, CGPoint linePoint0, CGPoint linePoint1);
CGFloat getPointXWithPointYAndLine(CGFloat pointY, CGPoint linePoint0, CGPoint linePoint1);
CGFloat getPointYWithPointXAndLine(CGFloat pointX, CGPoint linePoint0, CGPoint linePoint1);
@interface GeometryFun : NSObject
@end
