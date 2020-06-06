//
//  FBWardrobeAddTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBWardrobeAddTableViewCell.h"
#import "FBWardrobeAddModel.h"

@interface FBWardrobeAddTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *FBeditableView;
@property(nonatomic, strong)UILabel *FBtitleLbl;
@property(nonatomic, strong)UILabel *FBhiddenLbl;
@property(nonatomic, strong)UIView *FBline;

@end
@implementation FBWardrobeAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.FBtitleLbl];
        [self.contentView addSubview:self.FBeditableView];
        [self.FBeditableView addSubview:self.FBhiddenLbl];
        [self.contentView addSubview:self.FBline];
        
        [self.FBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.FBeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12.5);
            
            make.leading.equalTo(self.FBtitleLbl.mas_trailing).offset(8);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(22);
        }];
        [self.FBhiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.FBeditableView);
            
            make.leading.equalTo(self.FBeditableView).offset(4);
            make.trailing.equalTo(self.FBeditableView);
            make.height.mas_equalTo(18);
        }];
        [self.FBline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBeditableView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView).offset(0);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setFBViewModel:(FBWardrobeAddModel *)FBViewModel{
    _FBViewModel = FBViewModel;
    if ([_FBViewModel.FBTitle length]){
        self.FBtitleLbl.text = _FBViewModel.FBTitle;
    }else{
        self.FBtitleLbl.text = @"";
    }
    if ([_FBViewModel.FBDefault length]) {
        self.FBhiddenLbl.text = _FBViewModel.FBDefault;
    } else {
        self.FBhiddenLbl.text = @"";
    }
    if (_FBViewModel.FBContent.length) {
        self.FBeditableView.text = _FBViewModel.FBContent;
        self.FBhiddenLbl.hidden = YES;
    } else {
        self.FBeditableView.text = @"";
        self.FBhiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.FBhiddenLbl.hidden = NO;
    } else {
        self.FBhiddenLbl.hidden = YES;
    }
    CGRect FBbounds = textView.bounds;
    CGSize FBsize = [self.FBeditableView sizeThatFits:CGSizeMake(FBbounds.size.width, MAXFLOAT)];
    FBbounds.size = FBsize;
    textView.bounds = FBbounds;
    self.FBViewModel.FBContent = textView.text;
    self.FBcontentHeight = FBsize.height;
    if (self.FBeditBlock) {
        self.FBeditBlock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.FBhiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.FBhiddenLbl.hidden = NO;
    }else{
        self.FBhiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)FBtitleLbl{
    if (!_FBtitleLbl) {
        _FBtitleLbl = [[UILabel alloc] init];
        _FBtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _FBtitleLbl.textColor = [UIColor orangeColor];
    }
    return _FBtitleLbl;
}
- (UILabel *)FBhiddenLbl{
    if (!_FBhiddenLbl) {
        _FBhiddenLbl = [[UILabel alloc] init];
        _FBhiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _FBhiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _FBhiddenLbl;
}
- (UITextView *)FBeditableView{
    if (!_FBeditableView) {
        _FBeditableView = [[UITextView alloc] init];
        _FBeditableView.delegate = self;
        _FBeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _FBeditableView.textColor = [UIColor blackColor];
        _FBeditableView.scrollEnabled = NO;
        [_FBeditableView sizeToFit];
    }
    return _FBeditableView;
}
- (UIView *)FBline{
    if (!_FBline) {
        _FBline = [[UIView alloc] init];
        _FBline.backgroundColor = FBH_Color(226, 228, 232, 1);
    }
    return _FBline;
}
@end
