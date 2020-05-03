//
//  BCWardrobeAddTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCWardrobeAddTableViewCell.h"
#import "BCWardrobeAddModel.h"

@interface BCWardrobeAddTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *BCeditableView;
@property(nonatomic, strong)UILabel *BCtitleLbl;
@property(nonatomic, strong)UILabel *BChiddenLbl;
@property(nonatomic, strong)UIView *BCline;

@end
@implementation BCWardrobeAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCtitleLbl];
        [self.contentView addSubview:self.BCeditableView];
        [self.BCeditableView addSubview:self.BChiddenLbl];
        [self.contentView addSubview:self.BCline];
        
        [self.BCtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.BCeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12.5);
            
            make.leading.equalTo(self.BCtitleLbl.mas_trailing).offset(8);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(22);
        }];
        [self.BChiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.BCeditableView);
            
            make.leading.equalTo(self.BCeditableView).offset(4);
            make.trailing.equalTo(self.BCeditableView);
            make.height.mas_equalTo(18);
        }];
        [self.BCline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCeditableView.mas_bottom).offset(11.5);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
    }
    return self;
}
- (void)setBCViewModel:(BCWardrobeAddModel *)BCViewModel{
    _BCViewModel = BCViewModel;
    if ([_BCViewModel.BCTitle length]){
        self.BCtitleLbl.text = _BCViewModel.BCTitle;
    }else{
        self.BCtitleLbl.text = @"";
    }
    if ([_BCViewModel.BCDefault length]) {
        self.BChiddenLbl.text = _BCViewModel.BCDefault;
    } else {
        self.BChiddenLbl.text = @"";
    }
    if (_BCViewModel.BCContent.length) {
        self.BCeditableView.text = _BCViewModel.BCContent;
        self.BChiddenLbl.hidden = YES;
    } else {
        self.BCeditableView.text = @"";
        self.BChiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.BChiddenLbl.hidden = NO;
    } else {
        self.BChiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.BCeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.BCViewModel.BCContent = textView.text;
    self.BCcontentHeight = size.height;
    if (self.BCeditBlock) {
        self.BCeditBlock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.BChiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)BCtitleLbl{
    if (!_BCtitleLbl) {
        _BCtitleLbl = [[UILabel alloc] init];
        _BCtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _BCtitleLbl.textColor = [UIColor blackColor];
    }
    return _BCtitleLbl;
}
- (UILabel *)BChiddenLbl{
    if (!_BChiddenLbl) {
        _BChiddenLbl = [[UILabel alloc] init];
        _BChiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _BChiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _BChiddenLbl;
}
- (UITextView *)BCeditableView{
    if (!_BCeditableView) {
        _BCeditableView = [[UITextView alloc] init];
        _BCeditableView.delegate = self;
        _BCeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _BCeditableView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _BCeditableView.scrollEnabled = NO;
        [_BCeditableView sizeToFit];
    }
    return _BCeditableView;
}
- (UIView *)BCline{
    if (!_BCline) {
        _BCline = [[UIView alloc] init];
        _BCline.backgroundColor = BCH_Color(226, 228, 232, 1);
    }
    return _BCline;
}

@end
