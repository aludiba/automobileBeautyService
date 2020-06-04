//
//  FBDressUpTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDressUpTableViewCell.h"
#import "FBDressUpModel.h"
@interface FBDressUpTableViewCell()
@property(nonatomic, strong)UILabel *FBTipsLbl;
@property(nonatomic, strong)UILabel *FBContentLbl;
@end

@implementation FBDressUpTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBTipsLbl];
        [self.contentView addSubview:self.FBContentLbl];
        
        [self.FBTipsLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(FBHEIGHT);
        }];
        [self.FBContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBTipsLbl.mas_bottom).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(FBHEIGHT);
            make.bottom.equalTo(self.contentView).offset(-12);

        }];
    }
    return self;
}
#pragma mark - actions
- (void)setFBdressUpModel:(FBDressUpModel *)FBdressUpModel{
    _FBdressUpModel = FBdressUpModel;
    self.FBTipsLbl.text = [NSString stringWithFormat:@"穿搭标题：%@",_FBdressUpModel.FBTitle];
    CGSize FBSize = [self.FBTipsLbl sizeThatFits:CGSizeMake(FBWIDTH - 32, MAXFLOAT)];
    [self.FBTipsLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(FBSize.height);
    }];
    [self.FBTipsLbl layoutIfNeeded];
    self.FBContentLbl.text = [NSString stringWithFormat:@"穿搭内容：%@",_FBdressUpModel.FBContent];
    FBSize = [self.FBContentLbl sizeThatFits:CGSizeMake(FBWIDTH - 32, MAXFLOAT)];
    [self.FBContentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(FBSize.height);
    }];
    [self.FBContentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)FBTipsLbl{
    if (!_FBTipsLbl) {
        _FBTipsLbl = [[UILabel alloc] init];
        _FBTipsLbl.textColor = [UIColor systemBlueColor];
        _FBTipsLbl.font = [UIFont systemFontOfSize:16];
        _FBTipsLbl.numberOfLines = 0;
        [_FBTipsLbl sizeToFit];
    }
    return _FBTipsLbl;
}
- (UILabel *)FBContentLbl{
    if (!_FBContentLbl) {
        _FBContentLbl = [[UILabel alloc] init];
        _FBContentLbl.backgroundColor = [UIColor grayColor];
        _FBContentLbl.layer.cornerRadius = 6.0f;
        _FBContentLbl.layer.masksToBounds = YES;
        _FBContentLbl.textColor = [UIColor whiteColor];
        _FBContentLbl.font = [UIFont systemFontOfSize:18];
        _FBContentLbl.numberOfLines = 0;
        [_FBContentLbl sizeToFit];
    }
    return _FBContentLbl;
}
@end
