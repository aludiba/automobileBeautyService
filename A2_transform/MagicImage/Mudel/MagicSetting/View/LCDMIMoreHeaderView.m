#import "LCDMIMoreHeaderView.h"
@interface LCDMIMoreHeaderView ()
@property (nonatomic, strong) UIImageView * LCDiconImageView;
@property (nonatomic, strong) UILabel * LCDnickLabel;
@property (nonatomic, strong) UIImageView * LCDarrowImageView;
@end
@implementation LCDMIMoreHeaderView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.LCDiconImageView = [[UIImageView alloc] initWithImage:LCDImage(@"")];
        self.LCDiconImageView.layer.cornerRadius = 30;
        self.LCDiconImageView.layer.masksToBounds = YES;
        [self addSubview:self.LCDiconImageView];
        self.LCDiconImageView.sd_layout
        .centerXEqualToView(self)
        .centerYEqualToView(self)
        .widthIs(60)
        .heightEqualToWidth();
        self.LCDiconImageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *LCDtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDtap:)];
        [self.LCDiconImageView addGestureRecognizer:LCDtap];
        self.LCDnickLabel = [[UILabel alloc] init];
        self.LCDnickLabel.text = @"No login";
        self.LCDnickLabel.hidden = YES;
        self.LCDnickLabel.userInteractionEnabled = YES;
        [self.LCDnickLabel addGestureRecognizer:LCDtap];
        self.LCDnickLabel.textColor = UIColor.whiteColor;
        self.LCDnickLabel.font = FontSize(18, ScreenWidth);
        [self addSubview:self.LCDnickLabel];
        self.LCDnickLabel.sd_layout
        .leftSpaceToView(self.LCDiconImageView, 13)
        .centerYEqualToView(self.LCDiconImageView)
        .autoHeightRatio(0)
        .rightSpaceToView(self, 50);
        self.LCDarrowImageView = [[UIImageView alloc] initWithImage:LCDImage(@"PEArrow")];
        self.LCDarrowImageView.hidden = YES;
        [self addSubview:self.LCDarrowImageView];
        self.LCDarrowImageView.sd_layout
        .rightSpaceToView(self, 15)
        .centerYEqualToView(self.LCDiconImageView)
        .heightEqualToWidth()
        .widthIs(20);
    }
    return self;
}
- (void)LCDtap:(UITapGestureRecognizer *)LCDtap{
    if (self.block) {
        self.block();
    }
}
- (void)LCDupdateViews{
    if (UserId) {
        self.LCDnickLabel.text = [UserDefaults objectForKey:@"nickName"];
        self.LCDiconImageView.image = LCDImage(@"logo");
        self.LCDarrowImageView.hidden = YES;
    }else{
        self.LCDnickLabel.text = @"No Login";
        self.LCDiconImageView.image = LCDImage(@"logo");
        self.LCDarrowImageView.hidden = YES;
    }
}
@end
