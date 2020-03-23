//
//  AJSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJSetTableViewCell.h"
#import "AJSetViewModel.h"
@interface AJSetTableViewCell()
@property(nonatomic, strong)UILabel *AJtitleLbl;
@property(nonatomic, strong)UILabel *AJcontentLbl;
@property(nonatomic, strong)UIImageView *AJarrowImgView;
@end
@implementation AJSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AJH_Color(44, 77, 93, 1);
        [self.contentView addSubview:self.AJtitleLbl];
        [self.contentView addSubview:self.AJcontentLbl];
        [self.contentView addSubview:self.AJarrowImgView];
        
        [self.AJtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(35);
            make.width.mas_equalTo(AJWIDTH * 0.5 - 20);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-35);
        }];
        [self.AJarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.AJcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.AJarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(AJWIDTH * 0.5 - 5 - 22 - 16);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setAJmodel:(AJSetViewModel *)AJmodel{
    _AJmodel = AJmodel;
    self.AJtitleLbl.text = _AJmodel.AJtitle;
    self.AJcontentLbl.text = _AJmodel.AJcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)AJtitleLbl{
    if (!_AJtitleLbl) {
        _AJtitleLbl = [[UILabel alloc] init];
        _AJtitleLbl.textColor = [UIColor blackColor];
        _AJtitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _AJtitleLbl;
}
- (UILabel *)AJcontentLbl{
    if (!_AJcontentLbl) {
        _AJcontentLbl = [[UILabel alloc] init];
        _AJcontentLbl.textAlignment = NSTextAlignmentRight;
        _AJcontentLbl.textColor = [UIColor blackColor];
        _AJcontentLbl.font = [UIFont boldSystemFontOfSize:22];
    }
    return _AJcontentLbl;
}
- (UIImageView *)AJarrowImgView{
    if (!_AJarrowImgView) {
        _AJarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AJ_arrow_right"]];
    }
    return _AJarrowImgView;
}
@end
