#import "BKMIMoreHeaderView.h"
@interface BKMIMoreHeaderView ()
@property (nonatomic, strong) UIImageView * BKiconImageView;
@property (nonatomic, strong) UILabel * BKnickLabel;
@property (nonatomic, strong) UIImageView * BKarrowImageView;
@end
@implementation BKMIMoreHeaderView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.BKiconImageView = [[UIImageView alloc] initWithImage:PEImage(@"")];
        self.BKiconImageView.layer.cornerRadius = 30;
        self.BKiconImageView.layer.masksToBounds = YES;
        [self addSubview:self.BKiconImageView];
        self.BKiconImageView.sd_layout
        .centerXEqualToView(self)
        .centerYEqualToView(self)
        .widthIs(60)
        .heightEqualToWidth();
        self.BKiconImageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *BKtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKtap:)];
        [self.BKiconImageView addGestureRecognizer:BKtap];
        self.BKnickLabel = [[UILabel alloc] init];
        self.BKnickLabel.text = @"No login";
        self.BKnickLabel.hidden = YES;
        self.BKnickLabel.userInteractionEnabled = YES;
        [self.BKnickLabel addGestureRecognizer:BKtap];
        self.BKnickLabel.textColor = UIColor.whiteColor;
        self.BKnickLabel.font = FontSize(18, ScreenWidth);
        [self addSubview:self.BKnickLabel];
        self.BKnickLabel.sd_layout
        .leftSpaceToView(self.BKiconImageView, 13)
        .centerYEqualToView(self.BKiconImageView)
        .autoHeightRatio(0)
        .rightSpaceToView(self, 50);
        self.BKarrowImageView = [[UIImageView alloc] initWithImage:PEImage(@"PEArrow")];
        self.BKarrowImageView.hidden = YES;
        [self addSubview:self.BKarrowImageView];
        self.BKarrowImageView.sd_layout
        .rightSpaceToView(self, 15)
        .centerYEqualToView(self.BKiconImageView)
        .heightEqualToWidth()
        .widthIs(20);
    }
    return self;
}
- (void)BKtap:(UITapGestureRecognizer *)BKtap{
    if (self.block) {
        self.block();
    }
}
- (void)BKupdateViews{
    if (UserId) {
        self.BKnickLabel.text = [UserDefaults objectForKey:@"nickName"];
        self.BKiconImageView.image = PEImage(@"logo");
        self.BKarrowImageView.hidden = YES;
    }else{
        self.BKnickLabel.text = @"No Login";
        self.BKiconImageView.image = PEImage(@"logo");
        self.BKarrowImageView.hidden = YES;
    }
}
@end
