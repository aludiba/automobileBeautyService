//
//  FBWardrobeTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBWardrobeTableViewCell.h"
#import "FBWardrobeModel.h"

@interface FBWardrobeTableViewCell()
@property(nonatomic, strong)UILabel *FBtypesTitleLbl;//类型标题
@property(nonatomic, strong)UILabel *FBtypesContentLbl;//类型内容
@property(nonatomic, strong)UILabel *FBnumberTitleLbl;//尺寸标题
@property(nonatomic, strong)UILabel *FBnumberContentLbl;//尺寸内容
@property(nonatomic, strong)UILabel *FBstorageTitleLbl;//储藏地点标题
@property(nonatomic, strong)UILabel *FBstorageContentLbl;//储藏地点内容
@property(nonatomic, strong)UILabel *FBpurchasetimeTitleLbl;//购买时间标题
@property(nonatomic, strong)UILabel *FBpurchasetimeContentLbl;//购买时间内容
@property(nonatomic, strong)UIView *FBLine;//底线
@end
@implementation FBWardrobeTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBtypesTitleLbl];
        [self.contentView addSubview:self.FBtypesContentLbl];
        [self.contentView addSubview:self.FBnumberTitleLbl];
        [self.contentView addSubview:self.FBnumberContentLbl];
        [self.contentView addSubview:self.FBstorageTitleLbl];
        [self.contentView addSubview:self.FBstorageContentLbl];
        [self.contentView addSubview:self.FBpurchasetimeTitleLbl];
        [self.contentView addSubview:self.FBpurchasetimeContentLbl];
        [self.contentView addSubview:self.FBLine];
        
        [self.FBtypesTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.FBtypesContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBtypesTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.FBnumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBtypesContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.FBnumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBnumberTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.FBstorageTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBnumberContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.FBstorageContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBstorageTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.FBpurchasetimeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBstorageContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(18);
        }];
        [self.FBpurchasetimeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBpurchasetimeTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(21);
        }];
        [self.FBLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBpurchasetimeContentLbl.mas_bottom).offset(11); make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - action
- (void)setFBWardrobemodel:(FBWardrobeModel *)FBWardrobemodel{
    _FBWardrobemodel = FBWardrobemodel;
    self.FBtypesContentLbl.text = _FBWardrobemodel.FBtypes;
    self.FBnumberContentLbl.text = _FBWardrobemodel.FBnumber;
    self.FBstorageContentLbl.text = _FBWardrobemodel.FBstorage;
    self.FBpurchasetimeContentLbl.text = _FBWardrobemodel.FBpurchasetime;
}
#pragma mark - 属性懒加载
- (UILabel *)FBtypesTitleLbl{
    if (!_FBtypesTitleLbl) {
        _FBtypesTitleLbl = [[UILabel alloc] init];
        _FBtypesTitleLbl.textColor = [UIColor blueColor];
        _FBtypesTitleLbl.font = [UIFont systemFontOfSize:15];
        _FBtypesTitleLbl.text = @"类型:";
    }
    return _FBtypesTitleLbl;
}
- (UILabel *)FBtypesContentLbl{
    if (!_FBtypesContentLbl) {
        _FBtypesContentLbl = [[UILabel alloc] init];
        _FBtypesContentLbl.textColor = [UIColor darkGrayColor];
        _FBtypesContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _FBtypesContentLbl;
}
- (UILabel *)FBnumberTitleLbl{
    if (!_FBnumberTitleLbl) {
        _FBnumberTitleLbl = [[UILabel alloc] init];
        _FBnumberTitleLbl.textColor = [UIColor blueColor];
        _FBnumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _FBnumberTitleLbl.text = @"尺码:";
    }
    return _FBnumberTitleLbl;
}
- (UILabel *)FBnumberContentLbl{
    if (!_FBnumberContentLbl) {
        _FBnumberContentLbl = [[UILabel alloc] init];
        _FBnumberContentLbl.textColor = [UIColor darkGrayColor];
        _FBnumberContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _FBnumberContentLbl;
}
- (UILabel *)FBstorageTitleLbl{
    if (!_FBstorageTitleLbl) {
        _FBstorageTitleLbl = [[UILabel alloc] init];
        _FBstorageTitleLbl.textColor = [UIColor blueColor];
        _FBstorageTitleLbl.font = [UIFont systemFontOfSize:15];
        _FBstorageTitleLbl.text = @"储存位置:";
    }
    return _FBstorageTitleLbl;
}
- (UILabel *)FBstorageContentLbl{
    if (!_FBstorageContentLbl) {
        _FBstorageContentLbl = [[UILabel alloc] init];
        _FBstorageContentLbl.textColor = [UIColor darkGrayColor];
        _FBstorageContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _FBstorageContentLbl;
}
- (UILabel *)FBpurchasetimeTitleLbl{
    if (!_FBpurchasetimeTitleLbl) {
        _FBpurchasetimeTitleLbl = [[UILabel alloc] init];
        _FBpurchasetimeTitleLbl.textColor = [UIColor blueColor];
        _FBpurchasetimeTitleLbl.font = [UIFont systemFontOfSize:15];
        _FBpurchasetimeTitleLbl.text = @"购买时间:";
    }
    return _FBpurchasetimeTitleLbl;
}
- (UILabel *)FBpurchasetimeContentLbl{
    if (!_FBpurchasetimeContentLbl) {
        _FBpurchasetimeContentLbl = [[UILabel alloc] init];
        _FBpurchasetimeContentLbl.textColor = [UIColor darkGrayColor];
        _FBpurchasetimeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _FBpurchasetimeContentLbl;
}
- (UIView *)FBLine{
    if (!_FBLine) {
        _FBLine = [[UIView alloc] init];
        _FBLine.backgroundColor = FBH_Color(242, 242, 242, 1);
    }
    return _FBLine;
}
@end
