#import "LCDMIHomeToolsView.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"

@implementation LCDMIHomeToolsView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        CGFloat LCDw = (ScreenWidth - 20)/2;
        CGFloat LCDh = LCDw * 2/5;
        
        NSArray * LCDimageArray = @[@"a",@"b"];
        NSArray * LCDtitleArray = @[@"Photo",@"Hotstickers"];
        NSArray * LCDcontentArray = @[@"Beautiful you",@"Hot post sticker"];
        UIColor *LCDColor4 = [UIColor colorWithHexString:@"#8C1BAB"];
        UIColor *LCDColor5 = [UIColor colorWithHexString:@"#28C76F"];
        for (NSInteger LCDi = 0; LCDi < 2; LCDi++) {
            UIView *LCDbgView = [[UIView alloc] init];
            LCDbgView.layer.cornerRadius = 6.0f;
            LCDbgView.layer.masksToBounds = YES;
            LCDbgView.userInteractionEnabled = YES;
            LCDbgView.tag = 104 + LCDi;
            UITapGestureRecognizer *LCDtap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDtap:)];
            [LCDbgView addGestureRecognizer:LCDtap];
            [self addSubview:LCDbgView];
            CGFloat leftMargin;
            if (LCDi == 0) {
                leftMargin = 5;
            }else{
                leftMargin = 15;
            }
            LCDbgView.sd_layout
            .leftSpaceToView(self, LCDi * (LCDw - 10) + leftMargin)
            .topEqualToView(self)
            .widthIs(LCDw - 10)
            .heightIs(LCDh);
            if (LCDi == 0) {
                 [LCDbgView setBackgroundColor:LCDColor5];
            }else{
                [LCDbgView setBackgroundColor:LCDColor4];
            }
            
            UIView * LCDoneView = [[UIView alloc] init];
            [LCDbgView addSubview:LCDoneView];
            LCDoneView.sd_layout
            .leftSpaceToView(LCDbgView, 0)
            .topEqualToView(LCDbgView)
            .rightSpaceToView(LCDbgView, 0)
            .bottomEqualToView(LCDbgView);
            UIImageView * LCDiconImageView = [[UIImageView  alloc] initWithImage:LCDImage(LCDimageArray[LCDi])];
            [LCDoneView addSubview:LCDiconImageView];
            LCDiconImageView.sd_layout
            .rightSpaceToView(LCDoneView, 15)
            .centerYEqualToView(LCDoneView)
            .widthIs(55)
            .heightIs(50);
            UILabel * LCDtitleLabel = [[UILabel alloc] init];
            LCDtitleLabel.font = FontBoldSize(17, ScreenWidth);
            LCDtitleLabel.textColor = UIColor.blackColor;
            LCDtitleLabel.text = LCDtitleArray[LCDi];
            [LCDoneView addSubview:LCDtitleLabel];
            LCDtitleLabel.sd_layout
            .leftSpaceToView(LCDoneView, 15)
            .centerYEqualToView(LCDoneView).offset(-10)
            .autoHeightRatio(0);
            [LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:180];
            UILabel * LCDcontentLabel = [[UILabel alloc] init];
            LCDcontentLabel.font = FontSize(13, ScreenWidth);
            LCDcontentLabel.textColor = UIColor.grayColor;
            LCDcontentLabel.text = LCDcontentArray[LCDi];
            [LCDoneView addSubview:LCDcontentLabel];
            LCDcontentLabel.sd_layout
            .leftEqualToView(LCDtitleLabel)
            .centerYEqualToView(LCDoneView).offset(10)
            .autoHeightRatio(0);
            [LCDcontentLabel setSingleLineAutoResizeWithMaxWidth:190];
        }
    }
    return self;
}
- (void)LCDtap:(UITapGestureRecognizer *)LCDtap{
    if (self.block) {
        self.block(LCDtap.view.tag-100);
    }
}
@end
