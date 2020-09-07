#import "LCDMIHomeHeaderView.h"
@implementation LCDMIHomeHeaderView
- (instancetype)initWithFrame:(CGRect)LCDframe{
    if (self = [super initWithFrame:LCDframe]) {
        self.LCDpicImageView = [[UIImageView alloc] init];
        self.LCDpicImageView.layer.cornerRadius = 8;
        self.LCDpicImageView.layer.masksToBounds = YES;
        [self addSubview:self.LCDpicImageView];
        self.LCDpicImageView.sd_layout
        .leftSpaceToView(self, 10)
        .rightSpaceToView(self, 10)
        .topSpaceToView(self, 5)
        .bottomSpaceToView(self, 5);
    }
    return self;
}
@end
