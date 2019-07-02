//
//  magTimeView.m
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "magTimeView.h"
#import "magChildrenTimeView.h"
#import "magTimeButton.h"
static CGFloat marginX = 71;
static CGFloat marginY = 108.5;
@interface magTimeView()<UIScrollViewDelegate>
@property(nonatomic, strong)UIView *reproductionView;
@property(nonatomic, strong)UIScrollView *scrollView;
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)NSDate *nowDate;
@property(nonatomic, strong)NSArray *weeksArray;
@property(nonatomic, strong)NSArray *nowWeeks;
@end
@implementation magTimeView
- (instancetype)initCurrentDate:(NSString *)datestring{
    if (self = [super init]) {
        if (datestring.length) {
            self.currentDateString = datestring;
        }
        [self getWeekDate];
        [self addSubview:self.reproductionView];
        [self addSubview:self.scrollView];
        [self.reproductionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(70);
            make.leading.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.leading.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.scrollView addSubview:self.backView];
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.scrollView);
            make.height.equalTo(self.scrollView);
            make.width.mas_equalTo(0);
        }];
        [self setContent];
    }
    return self;
}
- (void)getWeekDate{
    //获取当周日期
    self.nowWeeks = [CalendarTool getNowWeekDate:self.nowDate];
    if (!self.currentDateString.length) {
        self.currentDateString = [magUIUtilities magformattedTimeStringWithDate:_nowDate format:@"yyyy-MM-dd"];
    }
}
- (void)setContent{
    NSUInteger count = 5;
    __block CGFloat marginLeading = 0;
    __block CGFloat margin = 0;
    if (count == 10) {
        marginLeading = 7;
    }else{
        marginLeading = (magWIDTH - 305) / 6;
        margin = marginLeading - 10;
    }
    for (int i = 0; i < count; i++) {
        magChildrenTimeView *childView = [[magChildrenTimeView alloc] init];
        childView.childBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.1396059782608696/1.0];;
        childView.childBtn.dateLbl.textColor = [UIColor whiteColor];
        childView.childBtn.tag = 100 + i;
        [childView.childBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.btnArray addObject:childView];
        [self.backView addSubview:childView];
        [childView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.backView).offset((marginX + margin) * i + marginLeading);
            make.centerY.equalTo(self.backView);
            make.width.mas_equalTo(marginX);
            make.height.mas_equalTo(marginY);
        }];
    }
    [self.backView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(count * marginX + (count - 1) * margin + marginLeading * 2);
    }];
    [self.backView layoutIfNeeded];
    [self setNowWeekContent];
    for (int i = 0; i < self.btnArray.count; i++) {
        magChildrenTimeView *childView = self.btnArray[i];
        if ([self.currentDateString isEqualToString: childView.dateString]) {
            childView.childBtn.backgroundColor = [UIColor whiteColor];
            childView.childBtn.dateLbl.textColor = [UIColor purpleColor];
        }
    }
    [self layoutSubviews];
}
- (void)setNowWeekContent{
    for (int i = 0; i < self.nowWeeks.count - 2; i++) {
        magChildrenTimeView *childView = self.btnArray[i];
        NSString *dateStr = self.nowWeeks[i];
        childView.dateString = dateStr;
        childView.childBtn.dateString = dateStr;
        NSArray *dateStrArray = [dateStr componentsSeparatedByString:@"-"];
        childView.weekDateLbl.text = self.weeksArray[i];
        childView.childBtn.dateLbl.text = [NSString stringWithFormat:@"%@.%@",dateStrArray[1],dateStrArray[2]];
    }
}
- (UIView *)reproductionView{
    if (!_reproductionView) {
        _reproductionView = [[UIView alloc] init];
        _reproductionView.backgroundColor = [UIColor purpleColor];
    }
    return _reproductionView;
}
- (UIScrollView *)scrollView{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.backgroundColor = [UIColor clearColor];
        _scrollView.delegate = self;
        _scrollView.showsHorizontalScrollIndicator = NO;
    }
    return _scrollView;
}
- (nonnull NSString *)nWUGAvHIjusY :(nonnull NSData *)eNnnXbLwoirNbSE {
	NSString *OTNBnzCKcDgG = @"sMOlsUpNTCsZDXBLCwqPBaZqoROXfrUmPDLYILBOfnniwCtqQKGvFelmByWDYeDqZSrBukbsibqjViNILicqafhkYAOIvdRmBKFsHFCyKIMfIXOTuZvlEBWAQAvzxFADAqxzZJgrjOwhESlQgBDzq";
	return OTNBnzCKcDgG;
}

+ (nonnull NSString *)csBNhtMQfSak :(nonnull NSString *)btjCLXhdzhDmYTQsy :(nonnull UIImage *)LwnjeXWdiWAvjMLmqYA :(nonnull NSDictionary *)SnHdOZBndsSq {
	NSString *BWmENkicGsREV = @"OBLQCBWetwuwFmkiMDxLguVINiuamEsvsGeaYddtiSlpdpvWloiAooPRukkDcfQUJdVqaXhJwXeluntyXlczvicGdmuNXkTDFYbbfvPdwkygeSgVPPRUyBrYLOOAxQobOUAxVGhpwkhgAdnwSAEOX";
	return BWmENkicGsREV;
}

+ (nonnull NSArray *)yBWonWyQsVf :(nonnull NSArray *)ptncRonunpeTeUbyiKo {
	NSArray *dbTHFqcXCbQWjMHF = @[
		@"yhARxsWxxLomvwvrEYPiBSTsMotSGRRvKMMPEOnBzJjKpIcUJGmVNolffwZYMAdKvjobqvxUvItjQDLSlMpLxoxWFFByKvoifqbPHAtFnegyUOdcObNCgPPYzblzOLeOEcSkgfFFViRNteyt",
		@"iYddbNCpkWsnmEHZKIxYkqfWhKnxoZpeYUVjlPxsLjxjLZIfaFEsUiGEYsQMVWIXpJUkfZyKrfZnpgEvqdZbYZDhuMYFFddikmUufKRte",
		@"oWESYHaCZXIrcGEuBPqkkKuySzwwGwBzwUHsIOpJaebeaQNtDiPuoyXKZDwWJMzrQCzoUYKBGQzsphroVbretNskDUnvHKgyLtGlNgvEYtSUxFzfDlbC",
		@"pNJiINBrQLoajUZEnUIeoucZLkfAjJJKtHLBftkaKRCIxqyzlVKwNrxijvMLmGOcHiqFYGcruwEaSjdBPJEtkOauMzWLnZMjSonJqjTCHjDyfQYCiEpgDvxKfmHdKkVhMQcGN",
		@"FMbvhRJBsPvAHpFbwZMmNSOBaEoroFCckesFwTxcRBzmvIjYBZkSWfkmOUjebMMeDFxsiwpvJRKaWQlEXPEBYtCLSEzmNZTqjhghpLEgvPwnJbxaUctGGrKNDEmmGizjIwWJBxzycEyuNOR",
		@"WCIWFllWPYwqNgriDmrGiBJXwGUrxsMdDhINBpvAZiTRqKNgkaraivDOEikGyVxKeYQMGYgGNsaNZHGjMDdfdlIepulvPQwavwufPdzKbnIoMgoJLGYHMufBZJvaCXk",
		@"NJEheKKdAfhwxkyBzDKUvSqzgMnWqtvUyTBteGFgohuUWMsDaVapjjUeDEDWsrNnaKUYmphPIYDrnEvRjvNSIoCJWQaVFFDOUTUpoXZsvNzqejvyLFwtKAXWQsqY",
		@"SkkoUkJTPzLNxozNzvcpRfWJAvSIAyURSxLdxCQKhHzMilPrDKwchQhKtiwmSiPuMAbbsKSZISDvpyyubqAAGcQATTLMFrIFkXNQOpkkrKKClouMswectXzMLW",
		@"AufSLZmuvmvNvwZPXoBRgjTnuxqKsrJrCgGIvySBoUDsvYZfljwWCeWBZiAEPtRzqoHrrQaYiPrYasIrsInmCfngRruRNLbLuvqINeTwPPHepfdslwQ",
		@"DIpUvRPNFoduiQfbfHEpWfTAXRCwyqPKrHjjXxGpLYLcJiNawDSlrAgGHBJrWKBJHiSaGxVlYGnUaxOzHVkNbMioSRCtEGzidhtFQbJVMKzBzNOqICDLOiGdGWyCzMzwpUdyvTLyR",
	];
	return dbTHFqcXCbQWjMHF;
}

+ (nonnull NSString *)uFdoRROKuYZj :(nonnull NSArray *)lSMSlUjOqLW :(nonnull NSDictionary *)OKXqIdAXWptGGFdlXKv :(nonnull NSString *)OektdVlacIo {
	NSString *mkXLEAfJbvzf = @"xeIMqgdXMhNFjviAGEbesAPimFdBHWdLFFlWWjmTJhANYWgJlMHpVcOiTAdivrRdbctggsdWhkaTsGDtWUQXOFzdUgtBVXLrYXxdUFGYQIZjLqxG";
	return mkXLEAfJbvzf;
}

- (nonnull UIImage *)rLJDnrrZJxRDnGDBY :(nonnull NSArray *)GLsOxyVJqlBIBely :(nonnull UIImage *)TktAkSfuEU {
	NSData *XgXACntMAyHAS = [@"FrGieIFqgQBrPrWdsOiUPotAwUcanNPjNywGDVgYlejQmIHvQQXhCmwOqqxqKwzQFBWQEmKhuvlUbpoAneOjCxHbwiTBwPhQcwovZNzTaZkGkoErUBanWSJnqSjaXpIYCOBBtpw" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *qEYbrRftKrsTroUen = [UIImage imageWithData:XgXACntMAyHAS];
	qEYbrRftKrsTroUen = [UIImage imageNamed:@"nuwGJjvhoLItrUvyPPVUKrEdxSYrJgMdvEuXUzVDjIUdEunkJnuKSzBSYRxmCukJYQKEZhjwkQPeepUlqymKAhiJdHkRbfeQIbsCCSYMjsewjGa"];
	return qEYbrRftKrsTroUen;
}

- (nonnull NSArray *)gKHVLOwQvj :(nonnull UIImage *)QdnpIJCAFxckjzg {
	NSArray *vnQssLeMXbmYDqwu = @[
		@"TrTpOdkewvnLhXgSRrXZzOHhYptViFyoZAHNOYBJzMozOoPGioybGJiFUZOpSDRxrRZqFtPluLWAMrcjcnYCqkarBcxDMHSFHxmDvulerippoiaEWpsFUfrKAPokKRjV",
		@"aAnsIrHGOcCPgulSSoxCpxOoaLRYXKNkErkfpiDZmcgaXIcCHYKoFiXwdhJnkbtUyZavEokSidvKALOHamSkDWduMMniwoWaBPgCaeSKQBhVCiaoYIrFdekbIFYSdUeagNcCl",
		@"eXsflEkZCxDYYybZfTAreEHEstKwyXVdPqVhCZFsCazfoqgjHOPbGSDNdJlRtKjMTeRkEvtnXvTBwnbAHBjmngEyCCPEmOBsNaFkcprxNODxqCuzTSFmcuxarjXLwCnDfV",
		@"iznYIGqhJDjeoAGMlLEioMrRaPfGqVgrVWOCuMFudxoSLEpFnuItXWiBuGBTAxbZTHoVVFciDWsHvMeSzSYorkNxWHoyFTijgIsIysGS",
		@"MGwsLmgfeoFRTBloAtosHNiTUPVBigsTvGaCELXFiqokFplcWbZuXyWbFSqSnxvpYbPemRnVVXFKETxMmlIaoupvNNFOwjiiMPlNlfymdKSVbxxcyNNuapndAqSSTaMMZ",
		@"eziUDFldmILQAETEiiWoybbvtKhzqRctzPuSuFYlmpgbdimcQZMVhLDysXBatVtDAdpsLoaPxjEOieAVjdyZfWkzRjkjWkCtszwxAoMBEfKthfFDFZhsMGwrLBnyXoHuI",
		@"yUzwXRlrUoqcJqfLZyPGjhKnknYetSviZWnKPCWySCPuMOOerhYdmdmyxTYsVyLROHtcnwFIiduSIYSDztSYGKlrnWBMcSbBaBdNAdeEKSJaoAtFAPpZXjfcwxGPUP",
		@"kVdFATMLJXHOKLRlJZTkHGVuzBjTKeqocPxqwFcvnznefVOMjwCmInlgmxyKIeLSuuMmrwZXjavuTbXrJpyBBQDoAlzklVbpqrVeAzYqVCYDCbIRtaEQYWCZIvBumolrVXQlOquGHcSxqBl",
		@"NdwyjflTkouTJHODwyBMdfxAkdktHbxygrecLxQtulBVqZxqwUxzpFhbCULaMDAbKHbExUgQGisjXhleywCRxihQaqHxRLrcsbCceALhjq",
		@"JaohDSVDzRutYzsfuEXJmcdsQkHajJphUXhvPYRmkWNrhakBMWNGaCClGIWeXGNvYVsXXSpcyrilGIYpzetCvUBtGFWEevkeysEbsdNt",
		@"cSlaSfKnPhQjxlKqJoXUHQaoYPLhCAEDufuMnDzRIfuvquZNhHEPUtYwzFqfTuVKWZjNEAWIXiClBOFVxZYUxGSvqyXqUGDBDPRKGjBIJOXkiLoFtxtfMUPbLyPwnrqpCToFudmiblsfV",
		@"GulBndwlTphaXIAqvdprJtVbFkljEiLcfUNOPEPQLItZZfhiUzNhyJXsiduQmamKquNvZivuXERdSkxkMvCDajXxOoqeECNFKiGKepPRmtqEKSWndrIcRyOvdWfunYbNluwejqJLENKESeIpHRr",
	];
	return vnQssLeMXbmYDqwu;
}

- (nonnull UIImage *)QPKhzusRJClAW :(nonnull NSData *)BogiqnzDktJWh :(nonnull NSData *)ppIMUkpSVHSqYV :(nonnull UIImage *)cNgrmcCnPypQBlPW {
	NSData *OstGfXXwmb = [@"SsHhWxqzorAZdJjVwHsqtfSABHCahddBmeEDCaYETaUwKIfoDNYymLRtZEahIWqfaNbryKjthGEWvletfLpKgSXquQJtlNwgNchBJUmmOPZflIoIAxfwMfisxNLsMubNPtAhdhgZYJBTPz" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *UzLUyziGBroYQ = [UIImage imageWithData:OstGfXXwmb];
	UzLUyziGBroYQ = [UIImage imageNamed:@"ujZCtisuoRFEpXShJrVqnqwZKcygPaecHGezBBokUZdNjeagpWylOwmIHoFCQGNSFmngMYMWptGbnHTzvAizuOMaFutnalDsEQJeJrXrggEooitfCRXmItmk"];
	return UzLUyziGBroYQ;
}

- (nonnull NSArray *)IZNRzsFDTlSZFWAbDP :(nonnull NSDictionary *)TjFbfYZJewjKwfob :(nonnull NSString *)vZIFLOctdO :(nonnull UIImage *)mGwxcVhRlAIURAMDYy {
	NSArray *VJBiRrRDiJnUartso = @[
		@"JnJUBZLrfKgEeNLEdaaXaRAjjAnMKBipofegadZTnrxPxDgyqzLNHvozkHPoppizLxvzhMXvWpGIvLBXeUqJuzrODLTDlVuYHNnjoePfdJpVtvBdWQMJZidrVlWZeFEMBKrACS",
		@"whfcoTryLHvMAxQndvSeppyVKYvIraahzrNimyebHWDnolkFOPVDCgPBfsCMCrLSVNNBcLKIOypCXhTFNWdFwBMYAiUykHkrhoLhjqiQhxbqxyFTLXzLPHqFEDDBKveEjfAyGTJsJgk",
		@"BLDrSHNxryKjdSaCKCqJWFKHDEzsxDuGetNRNdxvotlkztPWDugQmKCqDaCDArfgTrhZMMZRPBaRxfesJtFEFWKtoaSVosEmSRmvZIHnkpYOVNXZcQcvQHJLmYIbwCsgri",
		@"ooEarWjZLGRmqLKHbkPyjJBrkwtvAfymlIqEyMYklraMMLcDJySnKFPgRezShBQAHzDEceQKBGZMWjImjxRfqmetAuCxHzKshdBMglOoOnHZPMpiAoeMoiDnl",
		@"fFeJdRGGRiHZMHWpjEZLMxTezNhHWDyJamlAgURgIstoOqOZNdUlGrwRytIbnbKQhuopXAgeFsMznePUjEDVWYySpuhjfglIsWAplGTSaenyhfpmjvSCWhzANFHcuNggDklKMFDcrTDwq",
		@"iavimzNtMKAcoqlTFuiheJQpFLmEbIXfXhprqOLQdPcRCvxqhidlPBKzgzffkStnxOyqimUltleFZjuEuWNRtxKNmgBdlXZCeCQMEGYlmOPPONIyvy",
		@"lDYJPionZsTMmOHpvhJMquRvgKHKFiRDELXoJlUSjvhYXJhQVxZDagVEAczjcHVjBjjaYdaKUGWoNMgOkMAbRQnHhjSExjFeyvdLa",
		@"lPQPrWhLHHnLxVsyQolQkGvjAyUsMjfyWVARqFUqJmMcjHubkwkwZCwQklOlyZblDUcTPQMVCeJtVCnUqIPMXrVEnwOUuwZJuUnErgkP",
		@"pOMlKjzWBSprMBRYiGuDtLohDdxDyJcBLoBzGhJhtaXAZRxHFYYOeHOxZPQskUmYDVzPXQKWnVWzTLHHrLmhabtxufjmAatCbuvOKwBjLqMpiBLJnQRm",
		@"jUeLFdDyMKXCVpbHOmECAnhVUMtATleFegVHUXowqLUpihPikERJoeqwtJIGtCuVzuGBNWlOTPdGKNumUPoWQPaSJbKFRAbdoYnYKhHXYaVnJhEmqicdhWhlIrXgXTavzFlL",
		@"GOFCHShNtgDCsZMaQmZBXtuCrTUhgjiRmbXzEdKbhTDrdJovTXziEUNIgDtJYJEAQeJzUevxxKDCDzyNvndjBIsCowtvdcHMEYvKHiHUouWROfw",
		@"pSqDGMIkxeKhpiTnuWLXHsGHATHIgMbevRmLOuHWMEqRJxZJKGgLuUdHzDqEJxSVOgYDDGeOzPPZqcGXXMtiFJKuLuHykVggaVftTUTqDmxqVADxFtehuwEyF",
		@"VVmYsRtiytmbIRvpamzsqtjWPkvyGABRMofvFJSqraMIjhkhCjxfwIqWFdugvkLSyYPBoXcNrUUhkCujiFyqSXQxgGXMQHOIQGVyslyaQpJWfuTHEMJDHwpMhcGSBDoJvBxDDlbhjQMYgS",
		@"oRcIGMxiXnICVUXEpnFwUesoOEFepprptjlFwXQOnmqxSBQzqjQNNPCgrJyaHzQsOJJpFCWHyORiQoVIVzEwsiKvywZovacZghBHylrwJeAefyCjEyRhbXDRgDkngagmILasvuSnPtBJYXY",
	];
	return VJBiRrRDiJnUartso;
}

- (nonnull NSArray *)pZYHXHZZBK :(nonnull NSArray *)jCjbFBSXfyaEXXmE :(nonnull NSData *)mzIAsZkNSToHTWvh {
	NSArray *drcVPiAFwWV = @[
		@"TSONkjNdgiZdwIbxaKImuEnZZsDnwcPHYdhsaUIFPgLPXhQGpqBMRfAcLbQspJFoTEiZyRBCiweAXAAujSjIXuDSnIgoHKlWVpXmGPcGIGtGMDOMPJlKfHv",
		@"zfkaFCUXdtXOFuEzAFDUlBlbcaBatxeRWloJSOToHOfdXCHaqgbHMLnCFQOnZSSFEMNMeMBLAmcIfXYlTehbRqMKKalNpvvuWwdAHO",
		@"czjgMZjtjbKhwivXLNBvXFSCKJMNTatVEGmfqABVQCaUvIkSdDAsTLiwIzLoJWTqUJYDGSkNwtaKzmzbCuJvACUDnhgqZCQKJQfMonmKRaXptuRevOSjoUgUgjtdAsRJGUCgcXLhzjsmmtRUUv",
		@"zfRFqgTNRFUnkvZJwFaPavmkRjuQEbZFPvzzybPRWMpFUKMXsRWyiVghORLdcBnLeOTbaTDUJzMzHUmACWAsbsQUCEbtikYhnhobZnlNEjNKRVBQOGCHKYsEvQgOQRmLVTpBZa",
		@"hlYuUwYxcJEihScCtmURMzFbaoKxRWTZYgutPxucmkcijSaqmdSXPxNQDSmWplwnTFqXAYJWofPqiyubecwXXwNplAxzzuXjIQKYrPaRiysHrkDklWJXjpKOCaKmiVsok",
		@"QWsWwLoBBcWvOtkYExcXQkwyDChmfgOQQOAmWswoYCJDPcHstFGpXNoqUWyFcugeZIzJzhSUVZjaMRKnucrIeddRavRKFlIIfMbGcsksunEKnwmccPJNMgPTYfRRaZMEcyyfXVI",
		@"kPKxKaMoSmXSHnuTOdDpFWdZAFIWFZnzmlxmFgOnTboHrNYhmqAPRguBMTyrdKNnDPrzeqykKPwESxttsSBSGbUMCwlwMcuEBaKbgDOsvUqQfm",
		@"xryrgICyyewICccvFqOvSjpjfrXgJaLkTGvUlJqnoykUQxVjiloCLuHhSyzBaGzqGsgEScChInsiqQigiEqrFPcYRUtLiildnTkqksgcKfKbjqXdYfSh",
		@"fuAmmwVCbyrQCtPgkWADleorjQaXGaThrlndhITRMSWVoHhASWIPSInYYhcrXjYcdTewtyxyOujKQYfNJoSwZiMVgTkdXOCBrlvRUkBYCvgvsHvabzITWTLkglEhLXBMgWeOvP",
		@"yECbyvzNOZQpxvTTbNxmUceXhgDSzMiopclPAROXodnctdVNiKuOyxWUlpHLevFxgLpSguBfsqJFCDAAhsvVCcABiKDxmEoXjyluIOcjyMcecIporpZeiGdfYVVwAcTHoElff",
		@"rsJPBJWEDBRJmwwxJQmxdjfJkSgXeUreDMLPSOhRkaQIVjSkcclzPhognLpyOhTSBmLhFizgMuUOgItXQPSlIUUQMtaDUtpEGkqAPdmiFjdGVxaOprKKEGmBSaCXlsjaUXwUSzYulbVxRSxZwD",
		@"PoQDTzTuNVWxOQqqddUNVohIQrNcLratuhHGikJRGEwOaRoiPLkCxFjejzBqPVRQasJlRgDrhksTavVYwDnSVbzVeKioOXUVpCnVeoOhMoCHQGVhanbCbUlqiZDURcZYyz",
		@"CQOObjSEiZmwdTNtsyPvfdHAArydRMkeUxhuBSfLXWTXPYRzeFihgdsEDABVMWZszcrVDhaQcOfwiGWKBhGoATsoqVAZTHtTOLawzPeR",
		@"ujlHJUMZTGuwSLXxjwYxTPybVVaVsgRpSeippQgDqquyHTEtigCikfAEhjnLntSBnaSSUCQaJgXoyZeVOvSwZjhChQLlQsPUBEoUiJNWbgGQgVdsMwMdfZVSMxqWJeHdSaEzFkGPEqmCYdORwSkxA",
		@"tPSppoeBiGYHpSuEjBCRQNfdQtDGqKfozsNauhJQNyUKTlOCrfcNRBxRuuRpmUTxwmxyCjsHobeCPwtUVynoYXGETdXFpLctRzsmsoAdyJnrekEFYPtMyIzqxsOGgORKZBBNoVUOafYOP",
		@"SDhQwWdUCLOaMUgHUvdYnDWccRIhOztydMTkLDiAaIDRCuTTIdpbtIxGehtcrragNvJGuhRQIPOJZRMYtDXYqQdtINmBlcFgVgUucnEHPPeOkCNrnZFxlwaERpSBcJnwBoGMsgqhuW",
	];
	return drcVPiAFwWV;
}

+ (nonnull NSString *)rsawAXKDDRNAaNcg :(nonnull NSString *)GVgphlmWHzhkESb :(nonnull NSString *)sYkcwEiUGUZ {
	NSString *GYEcxQZeMCFs = @"GQeQhhAAadOlpZJXWkEdsukAzfRROSJHzoEFQptSwDQtuqePkrXQKHPdpNfGQSjMNeTyARQzvNMWZDejbnAbylaSpJVBpySABRYFksfnkvIJngjHesCVxFIqdmiuqDQRTbWhYeGTikh";
	return GYEcxQZeMCFs;
}

- (nonnull NSData *)koGsKEzucwXQL :(nonnull NSArray *)LFOaTZiKBmBj :(nonnull NSString *)pxzFdcGoROB {
	NSData *SRBlWukkTqSkm = [@"ZabRBJNzecuwVlrJyJDNxLTkUMIIjumhbQnjGaMGOLSnsDgAucbRCoFIszTFXkyUhrSPdoEFVwhFonsyEmFJbXNFIrgmgmDvKjGFrxAmFGModTLktyHlqIpgFFJdKBIyaHb" dataUsingEncoding:NSUTF8StringEncoding];
	return SRBlWukkTqSkm;
}

+ (nonnull NSData *)jHZcyqQRiJpgbVVAlpJ :(nonnull UIImage *)xgmRTAlvKZgfi :(nonnull UIImage *)uWXBTUVGzEeKkt :(nonnull NSData *)bQAQhKVKNlaEErQd {
	NSData *IyUeDNAPEJabCjthTU = [@"MNWmMldYhJnsfleAFgMoZzxtXidpRIvImqSCNaYJBGGLYsdTZhtMVbJEylmRqZLUUrIKfjwpmxicCjVjEXxZipBCNXHdcUHmMekUwsDpNNHUOAaDRdxGdLVN" dataUsingEncoding:NSUTF8StringEncoding];
	return IyUeDNAPEJabCjthTU;
}

+ (nonnull NSData *)BXTkYzMKZLSLRdJXhPd :(nonnull NSArray *)oQbJlLAdQioed {
	NSData *HhZUTktGFReL = [@"LAzGNMuSMdnlQZySXRTIlEyfwaRbNlHOaPFiLmRKlYqdMPhCQVSAKJUrPBNUhRztyQBunfHtMXGAKfNdjwmpiWqrToslwxZoMqUIQXqdwOOXkLjnTkZVCspJpUqNokE" dataUsingEncoding:NSUTF8StringEncoding];
	return HhZUTktGFReL;
}

+ (nonnull UIImage *)ixGFgdEFsLbc :(nonnull UIImage *)VZelqWPGfNkEJA :(nonnull NSData *)PpAWjqkANxXnniV {
	NSData *LupRRTjfszBUBKn = [@"uHBAZhHKCPteiyFRINPqhpudGKLSHZTLYSTaVfxInvTqeBZCTSrqlitlJkUWsEslSNIvtOzubSVWUThoNAdxaptBrjHqcOHQzJmKxTURXcHnP" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *OvzsmmkAoZsSTyzGbt = [UIImage imageWithData:LupRRTjfszBUBKn];
	OvzsmmkAoZsSTyzGbt = [UIImage imageNamed:@"HBdJXmqloDyiCtviLmpfNEWUMuyThVqoycoCgLiJdPMeeUKjPamyXzHKTfQmhZLPmRquObIsJgCTxYNcJHydTXAfClgTwKFYVPkfTYgbKnSkASrfhxfkQphcPWlxvJOSIYbVYlijmrzQsraSYYCrJ"];
	return OvzsmmkAoZsSTyzGbt;
}

+ (nonnull NSData *)wBSpZiBzlPbiahHpTGn :(nonnull NSData *)ojEEmLuRBtVepPn :(nonnull NSData *)lgBlKiRCvZAlDVXUN {
	NSData *wTmzZhVIKWBKGYTI = [@"BlZvutyNusoQFyIneqeAqkTaTyyuwMcYCnkbpWxQYXZXobRUolYVZkvSCnRzVHuqwzvmwgqrUJiKXuLNgSLizBLcdQsolvBGMUvKhvNNafbPhvmnWVgrjkOxugufzhcNmhpqVUI" dataUsingEncoding:NSUTF8StringEncoding];
	return wTmzZhVIKWBKGYTI;
}

- (nonnull UIImage *)EJuzsFkVArarLXdn :(nonnull UIImage *)jjROXPvaTJJnwVzuWVH {
	NSData *UNCYUCYfsREI = [@"FQvJBuhmPkWzMaUzrwPTvMFppFOVnvFmWMBeaFWOtwiuwebPzfaKWHfHnTlZumERsZZUAGCRvTfKjEUAvKUbXWoVfwBYbaXvqWPoPoUyTwNMKr" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *GHnayPuBAH = [UIImage imageWithData:UNCYUCYfsREI];
	GHnayPuBAH = [UIImage imageNamed:@"qWVQSlVHYHHlqSqewKoxLbKyxfqqwqutWOTQMhqSiSwczJCvwePazdRThmOeeXGtYXfioFFvObEIMcZrZrsVksjjNoYhUvaQNDFHAbzzxcepAfNUAEJfCtTPAdyGGJxcfYGhesh"];
	return GHnayPuBAH;
}

+ (nonnull NSDictionary *)jBOVsFKygA :(nonnull NSData *)mZsMGaVKauZn {
	NSDictionary *LBVIOcOvAIH = @{
		@"tOFyhgirnKSBAYJMM": @"qJlISbzyRYIGgPLDgCZmsnszgLZMZJvjBOyuoAqFnOdFqKkdlkUytfqbVkvRUAVpxXUQUOSWzQeUelYKrOWMxUwyVNLchzwWrcWtnfqNxpMPRCpxetunrNNNgjibSyYj",
		@"GdgDhPenAexBNxq": @"jsMgvoPGmmzmUUFiYYzADlQAAjRktzdTaGiEUpIoPNyqpdpMgZSQJLTzTFEcKqBxbppmVDbkFzAZIFTbXuwxVWDrJOvPKvNGpbplIpcwEZWEjeBkJn",
		@"OOXCGdRArqp": @"MXyWPSiClGEEIhGOZMhLXkfMbXvBxsSOYAWdoZXAfvwrAAMQdWQkZIwKUNWOBhuJwPDqtInesdxXzJbLHTaqWqmOVFmkfinImcywt",
		@"cJTORipSUGLzYqBWbp": @"fIsyoqnursvdTEEQlXzlKndhYhIXucbWzecszGpTdcvdAQQvzeqaOXIBBINUHxYeOYcHBtrSAfrixHqppNFuYbeqoqBstUqnkXWUomod",
		@"oBJgGwiFdNRS": @"HMVnWkJhBVuCglGqdQjdeDJPTkFMtrzjXnYZZaEByfmhYRNYctqDgPXcdgiLUEDroSgpORvVVGQsYnRReUpscpAIdmkivlSMqYuQApBvxtIpTFhYlvAAVNhRclMLOgPQzjDcPvSEeIgoYPgC",
		@"AkrpSSiPjhXqVMVSjuB": @"WFEqSyDqbQixwkPSavlmdIQDNtiWbKuzWhBqiDfBwMEiFFNlmIjHExRNtZcNEasQTOTHAHgEHOgRtLVmTBIDXKzlpYehEoBVNUsEfstJQmdLouuUgWvLvzkKdDdvKEBZIWYbfastcHYW",
		@"CXIfpflUIjSGkqP": @"kTPolRKGMEhHEXwzvDGvtAAhNdWOANRyfjPPZrFjZFCrTmCKupREYKUyEUSRseMPYToJRCbSXClJzdGTprqlbNzYdhPVNchSDRGzbxbQRIrLhaduPNGOpjkdPJRsqWHbjwXSeneVT",
		@"SWEaeeFWVVMYj": @"lqIDsxYZKPXxSclJZqCYdcFlnEqaDPTWpZtOEpiAKdRkAjxAJjdKmUEYLaJiFHckOzXqTRUcOdxWnMllADWKWMcIpYwCZHAvpxOQpaxpEXquUPwXmJuMJ",
		@"CtDXVUVmOoFSN": @"eLVuxXwQKRpYWBtzOxHGzuizvvIKnacWfIzLerDIKuBqVUkOktnWguvMWJANYjBcVzegOQMuuqCRNorywfJMrlcBkWVuPyusAzGxiHNGzeVIRlFmjGebwtYAkGVhXDenKgPAkNRPIwFeXHjy",
		@"JJNYoOIAyIHDg": @"hvYuXlUuqtThlcCljDfuXZCdaGPnYlaaVwzhcWJQypQHiFowlvgHbtKdjdRTKbDkLmGQRCyuwIDTpzkTebHxjnrNtClZGMpsxmbHUYatp",
		@"NRvWNrhtfVPgcQLR": @"drreHmBjuNkJjLorNhzhJIpiJsfEnlzJAsIFsIFDXFLOZjdlQNkBSxFyFqIcuaZyKFwYMxbFFObHsRlZQCFwyAZiDykqkSAYgEBAeipS",
		@"pdmIGLdoSOtVQRY": @"ppNmHxpTjnhxbHkOIXrSUtQoepOQfbukBYoGvIGUyKYAdOKiiyNrBWEAChJcshsdHFapZtoZzVrEkRlBbSnXfDtOvdNkXDvOCcwSfTUSiobfwdHcRentpqXuBy",
		@"VkaWOheoboAIdLtyoLz": @"WucRzOwuiHRnENgQvuUVrWppLmagHMCKUAqVVUAiUlygVDkZglRlMDGBiXTNyvARQgRewLUFocfffIZqXmzEBNqhKVeYXSGKqvxSJaihQeLRKucuTIMIoJIQomGurhduehPf",
		@"eHyjbdprGkuZdYj": @"InzyBSYYGjjdClJeUbZyWuBCgfIlVBDAQFpuWYYHjMQHiHVMhAsJbzbjBMCvGeYBwKTPtSRtrKhtluVKlTjcEfluubIOzzjMVAtxFUIPCTiuSJjsmaJnQmKdNngwmHXYhdXrDrTApZKcjaUjVkzK",
		@"NyppkVdsFHNVmE": @"kMmXSIbGAAYaZcLalZvDtEeMxXPLxuIVEoJkWGkSbIkwJYeMlzdpWZPcOKMhkmJmXaQNeVCJAeMzbGCezdbWfvsPZXcAuHrHlFgomZsTeOyFHJjevZXeWlmTpBVvE",
		@"biBMaJZsIUpdjxCIh": @"aoYwUpyStiMbwUPNkYZOiclXvCZrLCxkuOfNGflihAIZAUaFnHYlmQXTInSNsHbZYScEoErXIRHCUDkLpdmyHcOjuNLxtdGHocDrNlknfWszFbSgwGQlAuLW",
		@"xlVccLfWpQdMyoT": @"HomUALnrHTDeIumwNNqaSKbRyLjiaEdtIREHIioflgXBsvAKmbmKoDviEjnteBlOapHJkRyOGWnOgMPJBBjhzqHVZbiaAShgJZKitLUdxdaZKlSFXweAACGVlPEUDlqJbXddJhZa",
	};
	return LBVIOcOvAIH;
}

- (nonnull NSArray *)QcFNaqwEHhlDWBOl :(nonnull NSData *)XHNXZohIgbxiTz :(nonnull UIImage *)yCofRSWGOgBsoPXanNW :(nonnull NSDictionary *)tCbfOvPqppzwFYVFhkL {
	NSArray *YaFJlLvNmHoU = @[
		@"uLizJcKFLxXsYBaKFTzRKWyeOxnBPlCxZWVgbhquHURhNtgUmXNtxshwqkrdvinSzqXBJBQhBYcRuTzSlngmyllZWEmbuGSXMMMljIexgAfkToF",
		@"vHvIFnHtIUcbFuqFHdXueaThOAjtdDYvUClhksvaVTCkbgMPGYcMJRaYCdMusvEDKQfTgVVQpboeeLxwerAEInaDpfQkNVHYaFIxQRzTCeAlEBGxFjHsIaXYXEnAITxeNhglKnhpb",
		@"apDQlDNUyrmDGiPItRvmmuIPudCMZUmLBpzjgentcrFzbVabLdtABHysLGwSzAqbZbMibwkRpRhaFlFXBPOFfMneHmkyhBlxuiWlDPGnjsBgotCADLtI",
		@"IUvfdJxjKqHkqaVlKGtgpauQyWDftKpkSyumYzQSNBmPOLAqemArTcwklHUjdKcbLDMBybRQSIDbhyxtmJkjQCXkKEMYnsanPyWfRlvtFoEwyCiHFiQykts",
		@"hHpntxsXQWwogAKKYScjhYmMMrHiRozdGzqUicXySnyexLpQgYcCOVZgLlXLKNbXzYoXVlEMFZBEdiZtGAvxSPambdSwQCTBASufGnidFTWFOuzhO",
		@"VDIGqbgSfyxWXlhmAzjMHULSQIInoYEuYsZDNXPlFSCgrxHRYWSvbNePuBHcOYTSwfrKUoiUNikQoDdnWnDcczwwWsyBSBzhWPHCKnoJrFscskwkkmRpxvKFdRyPvkLCzCZCHSCYHLJAfFiXTNmuW",
		@"SDDHSaARrKKBAQApZRRThpLsEqOCNZomAnLTOpRDJRfXCzIGlcHTyNUfsPIjmafUsJQqQDRoWFXBmSzLevotVzRBbFTqOMNHQNJgWaOsrSjQwkJIzmOElgglvC",
		@"brkRIjpuwBiMQbjLSTRnkCoLxzLNekTnkbvvwewWwEvmKpYRoSAkreVnfxCrPDbuWdSFSZzpQRAwpytkaaPynVUARYpIurhUztmCJdSKtVCUoBYmQdqWcfdNGvgBi",
		@"UHjoNIjUIyBQmsNVmGxzyiGuJxKlFnQuHpToBuWwEZeKuklyMcAAqeWTwYgaBXiQJOflqZwcGWCdkRfUmVrNBmRcnwIjfCsaSiYVohlxIDqhdktVeHTKDVNahylWfJXbeOLGINaGPO",
		@"bkCbfyAYSBtidMMNRMKwbKbbGqHkfQQzYIGtUmKGHPsudXQVsONRXJnTrzIATQivqUiKkVFtMiKlEbSbEjpmMeUreHPBDNeheSOOnZQdGoeAqnSampoK",
		@"zmwCwHPjgkPTpkRNrYGIqUidYyzUqIViOhcUtAmfmJdFrMJZpzjrLANUTGeuRNyMKdElKEFbgyCoOMKJQjICBUSvqKaPyVjivBZDHomVPEBroVfjbYRzUWXIPvZurscX",
		@"YIvaJtlRPuPwColMgJCfjUTyFJJwWfajLTTzYtZkUFiuJWdPRoPDPFzQXwsYfBTXtVavTkZPFRyXfoXkhHjFoIAMxkkRwHngqjjIHbUQanGKAusQocSdyWhENatrliOWEzAVeX",
	];
	return YaFJlLvNmHoU;
}

- (nonnull NSDictionary *)cJHXLuVXEsIDffIa :(nonnull NSData *)bBBKMmCwYSVGpFm {
	NSDictionary *LWcdwHmGEIkejIRinK = @{
		@"CLGfUhcQspCk": @"RCZHdNWKemYOrgcKNUYdZnBYhpRlaZmPFzhNAJlgkfuZUKlBaMkUhlFSNCWZGyTLBdTByEIITCrJUMYdMSQsvoXJWsbkPWqKzQknxNHbzXTWQxRiTHkfCzGDAuXHVqR",
		@"GQTeSiXqwod": @"hhtOfpPrASPfDOFoKHQOEEYhAGCkKyxGRpVBotMxWxKXxTMgqlIqCkJzgCJdtwqzzflnbcmzlzDSzTyZHMcdhGclbSAToHtCGynURsHYvXlNfCSvnnqQzATpFQncnhBYPjZk",
		@"loehlNtUdYhq": @"PuYiqKAoTIkTjsfRAlbrFFPmSWmHRhukRoiAxuwXVYopNGalOPWaDHXdDOsqmMEbsGIzlzTCZDtuDXrsqLvDTwLtZoaZuXqClLjKBPjLaPOorEXs",
		@"XObETXPzyRNpQgEdI": @"tMwsNWVEYTTTczeZnaQclSlaaLzEkQcnzfoSGJwcJQGCqbUMwdAvxthhXdQNtYUaGyYUmpyFBwdprFIkkCvGqpJLJQYHTZNWexgkhfiHvtYUdYTvvklRZs",
		@"qAEMmMmNPldJlbU": @"ZdoRzkYAYGrWUGzcBGCGjOElalFNuQFBSszqIoOytIByeoammyamvPIyQxSVptzBkYQoEXeYpMSRecvbezNhslQHxPQLTeweEWHLTkZtsmUypHEbD",
		@"XYztElSvaovJySpCC": @"itZiErjWarYFJmrNnsMmfsyeSkhfNUYjsmhetEntfSjQrdFXxeIPTKoSYYBtjePfdpEbstGNwbPDdkpDBjUwvRZinhKsguRMxoQqoQIGGopo",
		@"ozHTMVjQKvxakDsm": @"afbzabZTzMUjeAuLkQPeJTQGUdVIpNjSYufnvdvtoxlIFDcnHnlhujDClfRDkUmMPrVUrRRFnRvrmAktmFuyYjUowwtTkPKPfGiSjxJYUeTNxVWeRBO",
		@"HJBxEtjJnTjkQgOSsYA": @"raBKxHiwdWNWdkAIJhDZHDXwDINFahoduMYqvSaqpPNYXSmSmwqOiTGHbITeWAjNzrrMxvxKggLwfnyVMillYKPSalyEIBPGbFAkrMyzqqDxdCOVoBC",
		@"MrmNlwJDCzTObCcnIr": @"eyAvhrLlqJXoRMMvxzrjINzUgQovKwKYfCugOSVoPmrxBnpwdZezaWSWVLmRLzVSGJJiQmpnmyXnXmJlUFSngNGsWmLQjATgdteXyGvqUYUxZiYzGlDwParHbsxbXEjdDyvqaCeqcooQDfMT",
		@"SdlLrGujpbCtuECWYlx": @"TnxDdfGLqKHEqHdgGmoqTlZdEKMnegQnSPIhTpewHdjujkCWNkDmBKbzFWjEcLAHSSbccxCMENPXSjkXyhkifiRICqiUTjqTJdvMnCW",
	};
	return LWcdwHmGEIkejIRinK;
}

+ (nonnull NSDictionary *)rEexFOuaazqAit :(nonnull NSData *)gtEoxFEfokOTiAUW :(nonnull NSString *)uwVdeidtPvSrMBQTET {
	NSDictionary *IsZENsCPpmbP = @{
		@"qdxOftgggcVZNIcwiOA": @"GHXLDWiSWdjNhAGODorlToQkXrvETsgYXbSYzjTASOOWWpYgWgjtiPgQxupJBnQzYnIPuXzvYCFjWaRnrOUoksdnDMOGHAZexkADlsBZshtKVpAPjYqjzyhKrLvemQXqXQflwb",
		@"LKGYQoVuNMOQ": @"kUEYSqiBwgaaLOAvXGcXFFbijRkbpXOjKFiMBPlIhEdrrpTVAgFtJFdhJLycetuIxpoDPrexJVfpFPnZaOqhpMartZXbvNWJvenckbIqwdJTxRDbZuFByEmoTyQSBvTKBqizKPytmdBBdL",
		@"NpbRrsOEwEfcdtUxgjf": @"MNkdWNZIkmLWqljvmHGVozunOjAseEVUiyIXYsvlYXhVhMASpbDTryvvSpJuySNxMYdXlsAmOLRWwBbLgREunlwHaUUGhujoatSKoYCqkNjifaIelCCv",
		@"yOdaTjaHlxathq": @"ullwAhWJGzIsrHYEYtpcwEVqyFfXCpVtWXxFXiDUVhmojdxoOuDoiBUuxWBrAePxcmLZJuVSXTFLeOeVarxBUCKHmPvxQQuOSfLfHvpmaJXsXPzhNuqaJQSZxofOt",
		@"XvsOfEGjKrvG": @"vxppHtmuPVqZTnpweAbRuqMUlPIOjXAlZmdAYRCpmhgozzttpcrlrtbTZMejyqisTrSayVfExTBLdSeIzUSdAeVuccDuHsMrxizgIEYCsAqtIxewi",
		@"McOGielIRnfsOnw": @"egDwNSIuVzdLnrcIlMxccKcNEnPcDBlciZwmZJsymnLyoRWhicxGSfSsvezMOMzBFAfoLJxwosQqKqceVfZEJmXVBmkFGJrbINtnuduUabKJGhnaSUHYFvfpFeeVRhXPRaLF",
		@"jDjbsRawCBq": @"fRACPkrDdzLZDViuFPWdOMftJcrbhMpiukTUqATPRZHwAxrCPkbrzVahhQqHCoJXrYORmaiRstOQZxBpwXUpCWOMGvzsdwRtCqxDGuaNQwrPgrzrmLugq",
		@"hsWqkwyBScNLYtfgwka": @"KEsadMHAMXYPaqciAKdGhnKndPjjagYVGhxxkbbfTalctGefPIoCcyRblvMIPQXawDXAZFhfwgIYDRKzFsGbkAGiUSBqImtKUIvuiKbkaHEENiekFQKrVcmTCplWRSrqSVPUrnVAma",
		@"hhXMhnFdavAmudTaKgZ": @"IjdwalYQAOsxhRGASkHsdEFdJjfauWXGBsGfUdcCFTTIKzAIovcVuLMxEaSktKdNhrbkKKVhGmmuOnDBtcKdxpOHmevHpzvepTZKaqXsGUbmkLfVXSvReYNiNCSyhTSmUqttIEaOhOHtnp",
		@"WeZiQbIFTOs": @"NmnjZAvdjGfChETRlkOYHmrITFYaPEnvFDtZlEwZlxGfYFzRijgMxrvkLORcWLwdVjpkdSbtOwdHwzKgfniCQgOFaHLNPotCwcanfyhbONhbZtonsNbBiTwNSfjJyi",
		@"vfNjqhbpKZlzZguet": @"YyDJJbZSHUgCrkqttBjrHPxdNHjMUHNJOFpHEZLIykwzlJgVuBrAmDZsDCzbxNwjEDiAhLtyhkONzJvrWhnRwpKMFkVOhpVZexCRLDRVn",
	};
	return IsZENsCPpmbP;
}

+ (nonnull UIImage *)NYjuNSQIdnBtSaJNr :(nonnull NSString *)vaszTINxThzakGN :(nonnull NSData *)lWdQniiMrkz :(nonnull NSData *)hVBwOfJwTZyNB {
	NSData *vCHEmdbtxsazfxCa = [@"MQyZimGkEChjpvwoIIyCDRkoVfjruuwtAEUfhWUPWgsXnvoHzrrXyUSviFJtjwZFFfIToCecDPKBAbBsZvKMIYzvwaOYaNSMqThhvc" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *mWVmLglhsoABr = [UIImage imageWithData:vCHEmdbtxsazfxCa];
	mWVmLglhsoABr = [UIImage imageNamed:@"tKYqvsUqzCPLJBJQSuzzafnySMVYGomGxrgqwILvlsYeFzuqnIqYhWDvfIOJblUPkhddVpnjImwtJMltNTnCSKRSPBMmjsWLJJzwxDymKGRRtXxURcheZuInbDSYxWpUQrSkvCTgqmlYuDNV"];
	return mWVmLglhsoABr;
}

+ (nonnull NSArray *)rnFsHbwwhvVjrbFXevM :(nonnull NSString *)SNOSpUgXGzVSK {
	NSArray *sMCsCWboOBVDUP = @[
		@"jaEcQgWHlzrsySITNWguwQZyeBPsUNwVToqMqOgnBrSUwapnajFQqpBeScNjMJgwVNPmIQEkLxHBgOsfcynDrJvHlufkzxpoIujQQAQRqrQmpFDEViCpYJqDMBHGnmOVPcqqTklnr",
		@"mUWgelNFLKhYJHjxISMhpZMfSOtoawrjLxOoOIAzjgCxeKbbfuMlpTwOCzfKcCwaBGAmBMVkqkNHEgOasCBjKqaESIgbbDzRwcDEtfRUpuSGIWQojxwQkFbrQsvZapmcKgpoQvImCtqJGHGpagq",
		@"WDIDFHQLcRZjYFveJsjZvVhnfVRXhLIIUHAxiApdoLNrbReDQxfznzIYIRbxuiGXFhzampNiFsgrZFDNNVDTFNVqkgblXHvgGeMcnYRAoANVOIHKUPJdOcQciHBM",
		@"MbMpLBDZhFsoYXNHJBFylxGzdNKMmFTJuqNYHpeGrgBkmVCQzMIxzSpozEMumJFfGdlqhjIlWoFxweVGMvWReQNcDasShQwdgZsIyRbHhaWqiQGpZMNVxYGzfChUaMJKpqyuCMXYs",
		@"MiNuUFxCWbnJJttUuJrPSqXyQYgCyqEMAgWGsSatyKPFAJqdLbEVPXLcnKINrkbyewLipWVuKKsswDGYyehwpAhoRKrydRJDpmvCXRkRYdKbrmagjtaDdLBwCMiLreNLEUrvDew",
		@"tjxpEWxeBqXUyHEdOkgvsXwOdqHZpvLRpEMiVjORiBjPeVzYuXwSBGNaqVBxCfGfMQzQtXapDRZpmkcrKhsIPfolngolTemavRHXeolPrZJqeCXWEovDuqAxtzvbyi",
		@"hpRSYDETHJgteLMMxNPCupWiflsEFdVWbbxuOnQMWKKLXnHNnKGlJMVEvNRyQzKVWKkTFHZckPjJnwGMjFDcMbbdyqlkSMnHdthrzYbYxBsYugusJMtTynFLtpHfuUXKJmXxxctHPmyvRg",
		@"cVJWBfpBXnedIYyVijCbteMYHNBFZfXMJvqSXaSfxKMOVurnubDUeGXPbDaWaLFCjMciFWjWYgBIVyawXTBUYIJNtWMttYtRppkkTtdcqPtBUaQshUZoADZqfXEv",
		@"RQCmcsCMcrSyRIXTkBjGggXvJjjDqaMcjJgoPfVWyzghSQBwNFBMSaOjiBqoKJxLJEJyWEMHoIXAahndXItXJwWGbPIoMCfXDZmiOxJoTxvPlJicJBRvAmsuuxUBipnShffcwwFrEUpMaixpPueQ",
		@"AjhSKWlBIwJkCnxSGxIcnlmenppKrGpwpuuPyjZbdMlFpoUMqohEkJsQwifRfulUGWhtsuIvkNgFegVzwJcSvKnvxKTlBwlAtntsQIeKGDgOiMIEMdGaTgLAAUC",
	];
	return sMCsCWboOBVDUP;
}

- (nonnull NSData *)TIIftUIprNtsdhb :(nonnull NSData *)MQyyUrmUITyYOu :(nonnull NSArray *)lHFDmOSCljuIODPTrG :(nonnull UIImage *)ULlViBPDuLktA {
	NSData *YllDOwdKMtqyka = [@"nhhIzGtJwSdRKAEQVgYwtbclXKyxMKJfnzbCuvaHsQhWgYsYbjLCFOUIVzbpaUjVLtldDinRrdrFIerQelJYXXSUogcHdlatkOgryqiiKqmDqCRbgLcXvupPXlQMNnOleeqadJNCqdwkZEYCySAwf" dataUsingEncoding:NSUTF8StringEncoding];
	return YllDOwdKMtqyka;
}

+ (nonnull NSString *)DiSoBOYPGXJU :(nonnull NSArray *)rDelctDGAffUlnqN :(nonnull NSData *)xeeJieyQKcgxGUmv {
	NSString *cZdjShkvZIOyBsis = @"mlzqKrEBPIoiDUlTgYHTiXerWLJceqMYHNVYJrHcEBIxCsBwtYVvCiYlLIgyQotlAFngRwxlkzdICJvnwXISjhfXNysjLEBwBcNkBJlwouXwbncSGFhorafmlbdYvUBDzkArSnPhaK";
	return cZdjShkvZIOyBsis;
}

- (nonnull NSString *)RMsSeFRpAmITTW :(nonnull NSDictionary *)WgunYamNyRnISUo :(nonnull NSData *)jXMClAIxGZqqZ {
	NSString *keWyqnvRzQC = @"bfBmWvYvIcOJdHRVzgLYCfOFHUkMARFTmEmxeygRIdgolZPVeARqZfIgsmSCxnFNrAgDmGEthiAyTgCfZusfCjnczcOddVQmGhHlfoiSZBKWhgUiaFBmUkYlKFRXBnBgzYCRjojZ";
	return keWyqnvRzQC;
}

+ (nonnull NSDictionary *)VOLXuaVRbXOlBwUNm :(nonnull NSData *)VVbaLeAlSt :(nonnull NSArray *)WsbtescUkZWxyL {
	NSDictionary *IPqFGchBXuxGbiQs = @{
		@"GXZNVFMYtqoi": @"maJWHSeFhRPWaDZWfdgiNuwuhOzLWbcImcETzRucJQCwlqutoNcPptkUxkbQqgKuccPdgzupSkqBtXvrqCroDmofTQPvBjcEAftToEiTscDXJzSuinIWjuSipZYCZxCfAEGhdPbgdFXPGY",
		@"YcJhDrvYJzyKTehUkA": @"CqXmmjZzjJymxGeDPCAloONrYDUeRgAbvOZxTWMhBhEkesoicAWUHWZhDVxNPJsPNISaZbNAtbqckfWlvZYLUFLLcfoCyLnkmQQpujKaKSLVDshvxHTjwCHakyDvEHbMfoGYjRjXOcepqJPzbmoef",
		@"lTOgWPJvUIhRkpq": @"GbLTcsRWGcDWtOSVxbHhUkODwvfTgWjSjXgqEFZPPIKCXWyhlAUTQqUqOAKBPmxcuhUrzoYTdewhYZPCAuZpCsjNsJjmqzIXUNUrLJQLOlGMrjqH",
		@"twdnpmvVkJLLu": @"pgMMIcIgYPcMGvMllWgjSZSOpmNgCzDdOMMTNeBhFOjJMFMDwMOPjBgEMulluGoFScuLAiocVmEdgKVJqghgZFgZhjOpmrmvzgTRzTlIojdnMVkCgEQUQREDAzMEgIGcYPorNEy",
		@"fNKxFgjsCXfMUCgr": @"RrTLJUGaToEaVKPFGPBkJBsADtQkPNzPEfYNegVubWZEOefebHbFXrCANdfFwIlaVukJzQevtPNqBXzgidNdslQMKBABBBJuGdRmPGXPPtTcQZTzkslZFAgtfrRWiwODWqDgqTAmOAPixDhmBDl",
		@"uyvxtCuRhQTeyvb": @"ziUrOuFXuoOFbVxghrEUExZlkCNlcPeUoakASMLkPgVysQRKlHCHBgUiYMZyLYNGBdNlFDVIuYzuoLpmoKwSDwvTNkHzTAmcFAaIsohefWveSkDBJuLBUsIIMWQUp",
		@"cAbKBDGoLyyIY": @"umQFsgYKDfZZXoXrXCkHwBtrUPFyCFckLxIlLWGshWuPlrmxHEcoobfpUjiJrCIMsbdermHeUyGJrfmkBZrKFdXMWPUxwWzNzblZcOSBpCvBatEEqvZGXdJcAxhNHnfrk",
		@"GOlnBjnVJhSrdGx": @"MGqWPWeBabeutSkhdjXfBNYhQhCabjfrkXPrTNincyBmGxmwltOVlRXZMvrcggqRtVKJscjYEFYqIRkkypbbsfnoeocWGZFFkKABqKY",
		@"LWYixTWTUErks": @"UYZYdrZsmvbxRtYianuVRatmQVbYwLEpESDmDNoSBBFltvfStprUyhzNjJkciLGpDQOopOsDzGOZHrclAeSyUVuVqDIyPvmauLPoAFvmnnRxJseYwqEnkacExhOF",
		@"MjpNFbZzuLcTaxY": @"XtzgnFgUjtHQIRKdQRoWEgNXlcjfPxlNNOIrWDEMnbHIpRxwLwwdTfHtKjxKpBenugILiKYJuvWXcKCKqAmKwAOqFsIYuukUYYcRKUlwdnrUZlHkiQhLzcSanOzcppJHgKz",
		@"sIBKgKZDbLwVrxxboV": @"UtTRDOPyIntomuUplLCuzJYQCocEEHmVtvaadrAajYCIGQdvswqryfjYCpRoziIQnhkATbyKDIuyAbxAVoBVoGqWoUPgthTrvDzADfUuTzIwUNhbbxATOGlaJaCzstCEp",
		@"pMSgQCwiOoTLpPoMX": @"kJSUKqtouQqpChRSegyKSJmdfFjUuySUnohwtgTMfvAlrYgCKzstsiFnzbRVDBFjzKSrNaiPvQddJXywxdXXalIhiKuXMxcuYCkWUDnwHvbmkuMvUnm",
		@"iqONBgiuSGlQ": @"QKjUdSHjYuqLtYtzWbXmSnaIunIWULBGDPMgcKJinMzMpqAYeBTHgEkARTdCAdjJFWDxhLkhSLIoqzBbaQAmMRwosqkilsoStIwjROYtukxFwBzsURwopWZcfVrsxHpBwotqDJxaGUAgyTwzU",
		@"lJorbDbtObku": @"lsVmiBjIVtdHmmSlTnvObKzYvcHaOkkumFlouQlqvllaioHzBurHxddTRgMKYWVSTkSBDHXQgUGHWdgnAxOYIIAQMwIXszRfuAXigqVox",
		@"PjoOYvcBsiHFAY": @"eztdizHtbgAOvEQhjtHVGeEUgEmLNXFAVDMvXLEWjymObnQbBEwMMZFMZdHoZUkbWncRdBwbsRSiOUssawYvZRIsjAnZuzECLJsSeJPKhXkIPlJHypzVCGuk",
		@"gHfbnDaIckjdsIJOK": @"lWTEIxxwBbFRmMQSIrisvHwDRdwqqVhwTxhIeuHscOKOtYUGkpjnxrIJyCqxXdysMKcdVQvfxTOnHCbzXwaXOwHAWmopRRybthRfKehqoKrdjwYDQOKhRIgzEKXztbtYvfr",
		@"OWxZBFMDCZFpQrAtulp": @"YmfbmJLaAYRWDQYRYxJQAyADkjwnqLjZrMqDsHrawJPXqUYFzldcohDafFASyVfauVWtmePCRqzzfXpDGSjMewJGQYkEOeioJXJdkHttn",
		@"jPIEQijDulsRpUu": @"hvRhtJhoChLMGSqTtLIkZMSYMOjauJkTpMRQiVsQDwuvayDfeCPfjmnPieaecnMeFCpnksHssCQKsCiZDFvkOGiJRGVrCeAvXDZhsvzBTIZOyxBigAWriM",
		@"xGBwCLaxXsFlr": @"LYzuhiUumScBlyeOdHfbkPVHCQnOMWOhFuJHOdZKSFhhwIcZUoBZyNViJmENoCRVWCrzkYJIedQZMCsVotdgyhTKXgehFZHFjrVJOhguUSOFIhjPARiIeNpRiEqgwFDgicsqyOYnwdfiBXqOQUPf",
	};
	return IPqFGchBXuxGbiQs;
}

+ (nonnull NSArray *)EmCZxVHcceInCrUV :(nonnull NSString *)OjnPDxwkLbtfEsuuA {
	NSArray *fBsHxohMboJtadzqz = @[
		@"ujjPhmLLoVRCtJGJJkpGfJAvklhGaKaWUsOTpStTHoIPgJqRFquGnaFZbEpyvjIyDqTYNaZLWdYQFHxOPmLtSUsgXFSlDTDPitrCiWyAYXZGBqWCxDsufUwCoDIhnDrsJEZprgtpBobdPzF",
		@"tjICsvwASeKhrdkXQYRXCvdDdpDgIfZebJMkWNgQtonenkWUCRCLRTqyIucxnssIXbylrGUjahOOPysETKhpPNUbolKqwfUSbZxWzvPYzCHyiKOwlxPrxubHWHZcYbHcFcRemtJlBIduoG",
		@"cTWnJwEdhoYXxQkHcoPjkaEvkFhDSuIcCqSESBdiwhzxvTbnlfoFbcBkoYPDuaNyjryXZRlrwsnMZdZhCxGCSceFPwPkcQIuOGGUMGVDcjtPlEQbvwzKLSFASxYSMNEWbFWMrrZrL",
		@"BmCjITEpAOuOUvqxMwciYYoAuuzHBmAeVwbDLlSosNVsTJdhvoYfwDqaGxipFbgHRCGlMTWjumufqGTkrkCLbsGhHKstNiZgtuanWPYAcoeMXDqJKvhbaPMcNLtxDPsmPKjMEjyZGRRkuYvbD",
		@"yEClpQjShVvNdBeoyDfQitGEHfCDBsILlzAWzcLUWjBrryqWdDApicGIpUmUgdywlJleClLLiLzIJCCxRvCEnxrsXhEfMYKcBSyDbxqejBQbnYKLVCBzNezYc",
		@"waVhHGQUflBaTaxLUssohlUBhqIemTesfQUveJjeSytmPmMcgEumBemwSBwPyogeCTFWbDFJHhDBqfSJnGPlTgoNxXZXoQyQPmhPKJZRsHknbYdrsNczLlYzJhPWIrJmsn",
		@"MKrpWCxxlxCsNuimMRPEmzGqllolDAMNyLvkhkVYSfEGjkKQBfAOuaewNYcBYidAmalbtrMROkXPpQKuOaIbpWKqSMlyACdDcyGNCSIJiePiqKhoWTsuIkzuaxuRGCaprUZA",
		@"URDvMeioOOPvhXKLSVesgcQpPgHBTkKHzMprsTgImVVjUtHZbiJmCmfIXVAvgfsTVJUMmEsAfczfVNdjEyLgskQUKCDFSECYQzwepsIfBsbRKpBOWCtD",
		@"oLCcNhQoeKhQzzklyioYRfnPYQmhpdZdPCIWjPPDuPoNNXOjyWiMtYkLrmWgVBJNwgyGJPdtQSdJlNgSfEsZlypuxadyqfgwvtKtWWPEOnhzTjSTmcrYJrGwPyWyYlRfWwrdQVPLAQkmHJBL",
		@"dqRlojnIlSbvRBGuCANzzHYtHhmMgrtYMfarsGgRTYXSbXnGLKHnIDkbBWpULaxWyMDnCFxEcuIbGqsfRuEZRVpZhczVmuNgRLhcPTjVwPWLsKowkXXvubSyjHsxHqWTvFejTQaFnfHBBOPrQHJQ",
		@"lhttmPdLBiFdWTqhUjFmRLHaSQQSUCbUEBSuXHOJkYSatXQpLwAcshYwbZaMpvHUmtSpMUuUPUFIzhLeQMjBKSSiRDwEvmyluxnkYtxJusbuTEGkGqhPSxGuthm",
		@"bUJjnbspZNPQIMUqDMxVhpQsvwkyilAdcnatgnasigoTCHfZqlaLcZXVISeylgnPOZRwwQSVSbcEITTeWxUrVYNWerjeYDBZPzQHPUYSTHPCnjxXMmsWlVIDODWcCIeVWpmhRqBaA",
		@"iQfYCvIaeTOMYgTTaDULtwjuycGxGwfeZiDeAMmWbGjyXUIxWXIakjJDRxMnUvdlQTMZDawFshwIJKxOUPfqXLgYpYQYHEOCXYrCxAc",
		@"IZKDROERLHhpOStbPcEbErrvNoGIgLMLohaieEPPowgKjEbMWYPhiTfHoIpFeHfXlyzqdJIHAVgJaYAOzINeccVMdiZYZpZTbILdCMthnlRhM",
		@"cRdVeSuVtUtUzkSOsqApXFLwFdqtsSlPLiYsAoSTGQfowwRPXRBFpGKtiMqguYecaxcPYLWdZwZKYBlfAWueSbXlNsvTghGYXiCTQdjoAkMjdOiMnzh",
		@"XrlITGqyLwnNHbrZdFRMlFbiEPmSNtjXERnNvFXDffRlMcRNWiZcwCEDijfJixMUfdICnimXIWmVNRcCDPcAsnqXOxcQHdccXRsRxCavVXtkwPdcYYBzrICGbZjMOtZbpXwyPprCtL",
	];
	return fBsHxohMboJtadzqz;
}

+ (nonnull NSData *)HKGQEdFVevJ :(nonnull NSArray *)BplXxbXbdmos {
	NSData *WOmQRZXzyQoPToHot = [@"PxDSsrNxCIcMhFCCBOhczDuelmVqCAHydOVIRPPOvuDrxaTLlWssYkeBioUxTahnjupKEZYkNfGhTNKvFtpVhLAqmDNaWXlazfhVqOrtmZaA" dataUsingEncoding:NSUTF8StringEncoding];
	return WOmQRZXzyQoPToHot;
}

+ (nonnull NSString *)yASVBcawWa :(nonnull NSArray *)nDdVyDDbvyfMvLqL :(nonnull NSData *)GrQmrGYNHsxN {
	NSString *edebmlmWUaKuya = @"CsfXHPMiXLhIClAOagIRgqiueTDRGUiqAFeYCrGdbaYTWOaOVTMqJUnrYWLhSJVJpTsNVQpAeIrDJZowuNxpDdcbvAIBbRSNByVlmZxvPQPogbhOhadnzFxYoHvERXwDGygGfN";
	return edebmlmWUaKuya;
}

+ (nonnull NSData *)azZUTqBagxj :(nonnull NSDictionary *)FjgYUgJqConn {
	NSData *LYAYlbFcwtX = [@"RUEDeBGACHRzLAdMEAvmTQvCnZjhzowhvQhzbnQnQgZQnTRfpltzcHoftOqNQOqtTLISUOursYEXxLLYjzhAICrZxbeHKAkmMfhhPZIfgjuzFWJILqRjYnlacPsqxbbX" dataUsingEncoding:NSUTF8StringEncoding];
	return LYAYlbFcwtX;
}

+ (nonnull NSString *)paShlPfsCgRxGHvlQz :(nonnull NSArray *)UKmKlSODrWDNNO :(nonnull NSArray *)ptCUZyABPivSxabFpYk :(nonnull NSData *)PyNOMeVXDZHQ {
	NSString *DYKnUAZbklaAQDyL = @"rEqLOrSThhOTJwHtRYOYXdUumdPFaVQWzIVWaSPkdxdIaenOoSVVrVzaryPOTgXGRQEEIZaZfOXKGoRpWvGVMXgawbaPHTgUBUaarbDwnpyJFrHcmImfpzNViXHuMtuGncXijOhhbVROcbnEQKa";
	return DYKnUAZbklaAQDyL;
}

+ (nonnull NSDictionary *)LoSxqnhtQMoVIZcj :(nonnull NSString *)rXFGpKveZR :(nonnull NSDictionary *)KdzYWQAteiTWyVdlUDk {
	NSDictionary *vvdYDwMPdKmvu = @{
		@"ICcENwShegJZKjFI": @"WnHwkSfVEhsyrEGVWgdayikmNWKjfKVXVCzrEQIRsjJClXOrtLUksGiDMpPKEGpvtoDhWBmVmJjHWyLPnJbuuIuGgpIJyaXlKeXRQjAoJuWBCpqJQnYes",
		@"fduAlerXNqbjLwT": @"ZnfZXKAJRRfgZEANrERBDCEMwOebGLDIEncTGLwbYvVDVVEdLIjsGtgfYdOWvwqcViYqmpnkbeQdXIqaUKXQMuMwUlaNhIxJMdnuHPaCvSbzELugzFTuGyYyl",
		@"avUKsaYPkhm": @"jmBRKXbHFXuvPtZwMGrIiNHNRElOgLeWpmBobCalMwwLdQqYhvZKjKcOBIZdznnIsqMvpNXQixKfZTwekeNQdfyGGBlZlfETckhrBnUbSHqsLTDdEOwPUAiMKHAfQIvHyPvTYg",
		@"oZSGMKnzULqyApPEi": @"pDKJffchqfpRTRFMOathLvoOxGQymufbNrsCKnhUvcacMvKkhzXappkTXcCgLkUknJZrqhqiAXLizgkGZoIMZoZOSYMZzYASegRnZgdhADQsqseQvzMK",
		@"VIdcDhIQWPjlz": @"lVuQQWFAWkzrnFwRPEaPpuwRQyKrdTAgLAZDehFfiQnswFtgqGHvkYxsVkJwWSrgQcyfNCvdbOcJgNEPxtdtWFolaSaISPLNqLGIzEFJtBYRQVeirPRGROXWe",
		@"uvDeuchNVgWln": @"BaBwWSgMcvIZfCAWYFDcugYVrsVVrnsFRJqfIFsLgFtxPlRltHqsleYWNWGIlWaxTNeLaaNBHXmqMMqdwAVgtyczvpOgVtqQucWxYUfzFGTBjfRPLyaUmqPJkXIpuMoaAOvXeqh",
		@"jgroMPRwrvHlzH": @"GgTokemahiVepUpCxYYcBJidSWVAXtuWxhGOvoXxvNgstFCpXoYTapVSUUMGIewCrqstWniUImULBytgGiHueGFmUvyfrQwNHYkALbrMrUjDUYlMePNRBrmGHxghvDODfoSGXL",
		@"qoKuVNXHMTgOdGkZveL": @"riASjKHddVqLvefNejzGsDUNwQxTQFYCYjHwJhALxneQdJEmqJyGcLINXlYjIrXPcCdQiSFNxXNyMrPifccEdJSLNtEEShGMLQfweVxHFiDChYvqNPQlOgDZYUmFjKKixEFvOABEmuJGyRmxAxw",
		@"pyHMuSfrvIYNqucN": @"oWuzlNJcHYnAavZIJyoQrLEMSKMkerJycZHTTGphxbqhVftCcbRcOXewYiVApgfuEfJaKrkUkGMPObtsIgaWNIZUnxrZfcaSbJqwopbizRAGp",
		@"LMCNDImjgXIgjQkxRLL": @"CpagqjSBTaVXTsCxoxGLnqhfUsezYhcKbcNPFaSJwtrppLLIsBjhljrGJsfeevEzRjnFPDxXXrJgrHTOGxfIZhEMylUnxRravNfnngTXnlEVguEQFSdVOaGVpUuhCZQiqcmHMiAsDFvfNGUIUMO",
		@"aDwLQhFWOGSeIoJXWnF": @"MCIbxssnOzDFDuTgoqxaCYvGCukmFyYLmgtEuzeLRvuNtUGDXwfqfHZXxYotwiBzkyZBnEJcHzqgIprCJKBDGbQxjuTVgfQKvTjGtTNHNQdbqJF",
	};
	return vvdYDwMPdKmvu;
}

+ (nonnull NSDictionary *)RKLaVsHwdHEBymai :(nonnull UIImage *)JnJshVHBswd :(nonnull NSData *)GLJnBrfBVbjJsWHB {
	NSDictionary *upSvjMMZfHLK = @{
		@"XkLrxIzRvC": @"dGHhlxwHtZXLFCXwpMbZSuQrftHNOpxSpTthiIAEDXQJJpXRXCBFlQEPugNkisxwsqXDlIJkvtWDhUnhPnRaGMqpxHMTzGqjHZdqnRFYVlTVLXlXNhxibqMOuPfRfJdqHddJDkU",
		@"ttaNFKMErP": @"SaucUirqXabqWOmDSjnEsZnLjaooJJZkaoliVOcghjfuwdvCuwnYSKTDFQQLXObvYIUYSxGFLqAsOedsjtjcBwpElCUDekElkHDTBwTtqSChLFpMsXyjPVqmVRYASlqqrAhbMbnnAZmbGtNhGi",
		@"EOiJJrevAaebax": @"DitZnZWhJOMksxWioDeCzuCxcgTtzUZfOdGfmLZfhxWgbmtqVWTpwKVDudmnBjNumMBlInrQSBBuKuVGWAgQmoPKSTHPirSeTBgOKvJZhLmvWZjM",
		@"aJFhbtohkM": @"VDTiwHrVvHLIzgFCNbGBEMEakalxvMxGiVtizPdDzjKBBiGaCKBsXWvBNOjzIApEhZhngZdwUfkEgZrqnYjGTgMncBorSnFKsnTjKjAZhDP",
		@"yqAGjusyGdtuiUElh": @"ZiIVpujmSNRSNELZyIQDStsfbDDrfgTVLEcPfCRGqUqiDIPlUxURSJCjqNAHCLQNHvQmgPbQjFFtXkOSNrSuKMoXGoHIagpZPNABwNSSzIjvAgZbqvCgGSFGxINqRwWZcUsdLxThOSmsXoSkuyrDT",
		@"GRrilujwvpDJrdNy": @"PgSHdBiKVoXXoMfbkDaRRMpuWOQvihqWfwiHoxKqHtEDcQJwemyHGJNToNWhuSLnXydPIhtmDqoZXkKmPimJfSaaUPWkjqecFTjzXaZGqzcLtTnA",
		@"MHvFgrpBWnBC": @"fEOZJZBaLCGZCVqbLmEospTAmqdFDbznIRGVQfvdQmPWuIOGeZIvEmAolUXkQLxnuIBFGbxwvCNaCXeTNRxyIBSPLRYRokoyXzuQJXxjDKgMTTD",
		@"vcDZdOTJmmFhsHUfiP": @"NqVkQNnRyUXALiUCBcTdyYfrinrNrEirPVFsUglmJUifYtjsePapOOftQFGWPwvtILUzUdIkdUqGJqFPUzSiyzkcgaIZsJeyUltOEPV",
		@"ipOvoOYmmr": @"WYEdYOpMRGKdFnPYExjGQmzqcrzgwhHpYABNosrsPJqFEakKYhhpqOGSLHUuFBzYDGVAwLlFbyJqNrCFovCFHOrAnsADXkVyRCEOoDweRJezjEVlERbkmnJAUMXLILhtxUKggVu",
		@"cbYSylLMwynd": @"pcmMKfKwpemEqIUsfXdMdThPSDEzCEdPXeGSeVIUDxCfvVzUBihbTiwqpvvnOYDRXjVACAvidIAlmnQUjhVnEomzAVxaqcpmxAhMnmUkrzPFqeBnxgCaREjcagFmlYoZV",
		@"qTZjfEupkQ": @"UATmMQgtaIOTLyGGCukukfHPrtfldtPAmbMcMxITInsqXUTChkQmXscYuzsOfjLJfMAuAnNlOVHAZCHSVUDclBOXPgXLfjdZJAfkQhiMP",
		@"yPDnrGiEKTNKMKVLIL": @"gYBHDhHpoaurjQCygESmzrISpwpeuHsAsJzCoxLwzQFKfBkbRqWEiQOlEHHWdlyNdKYCqysgcTzJpZjCUXmDnzVFcKajTSaFFNbFemZpcyJ",
		@"ofoGuRftkJIysB": @"XbjYBgLucHSUMlHLBHWjzXXcvAiYygUBLMMigGnkhTSQnrpfsEClrtJSIqQeHJRSFOJhgNAgNiYhyQVavohAgObiREySCiWYqUxhLiQclcRmgRLneAXjEy",
		@"frAXdpOzFn": @"FZieusyupOsFsoIKONglXALfNLFEywrLpDXjOMFaKZhZRYQdqMLkblebruwGoWOIMpTXEfjWnGDxLdhuePqmTcifRKEEZswVQEpastJxaPCNgDFkgRYVErCkyMLmIRnBCapZHaZQqlkQpW",
	};
	return upSvjMMZfHLK;
}

+ (nonnull NSArray *)wGxLRZChqyYksO :(nonnull UIImage *)ojBdgmTzEBFAwFepA :(nonnull UIImage *)qryrgzgUNcZf {
	NSArray *mLxbPNVvAf = @[
		@"JaILRvtNsAIrHDORnxhhqxTLqCAFvwjGXqIHybntDlQBtfvGNAPaMAileiCuOreyScdDojuoeuXMYzjwjHiurVDMGTmsLIgyDtlzZpUGhmGqTVcVpbIuPQLHBXHORtM",
		@"HxxDEdQUIhCvttBFopZPVawFhVUJdaydilbCYRlzGTzydcuXWnXSRyYPHmHsOrMCyDfdrRjIFlPSsLzTIMTAZWOlskwUPITGWEmYQAgpLjxnZvoaFubLWwT",
		@"tYkBmshshqxKwMeUzJAdnHZRSHdXmnVuTpNXVqqrQgchXwjdkuKCdUHZJJogUhQrwKjpXLQnbwrVMdRfGFhEOlvYHYSIgCnIoXZOFZcqzoWUHagDTeoNsvUPeWvuCMZGVmDsULrcgUVwApkE",
		@"RGACLnpgOgMVFQCdFArhUeTxGXOEfpBUqyfxaCMgvMnvRdPshypAEJPxldXnvxmgpEfjJiepzuhfBbZiXLOXTwtzyINkxQxfHfYKzNmmFDaYtqOTMiPwbePlyYP",
		@"JSfulAHjKFAbVFdHcAEyUvzIFuUCOXzlDxHYEiMUWytoSXoKaRwueuJKqclfRohLZUkViPUkWHiGyrFePiIFRxVvLvmOaxFlFBfEYmeGpwHFHZREOoKqsIUaqaoWWAlSafwzNKqRYK",
		@"wMfRrWfotThQQLmzsjJPzoouKuaONHOrGmXSQFZcftbITPBzyQGjtPagGtGTGwgnpubXRAGQXdrGwnlhMFhhyzeJQvGvdlHInVEUApETeWakykAsGnoaNybPMqpUcRgsdcofJdYVFg",
		@"aCWfOYfEzPyLgnNxAVznrFjkJGYKCixggynQNgSRzrmHTPlfxuQbEcxKVaDftfrEJqUrclhPgPmqdJeVRpZyDbyyUtkRxaUWQDiisSwceAqHrpDsYRd",
		@"LbMJtYdrXihcnxRlWRSLPalGddpQmvYxXzYhnBgNTNsGMpjdTZsMPuggjZdfvLzQdwRxcFezxPXKfUVguSVOGiDQdMFWpTHGVYzWwIBMQsFtcurTucrhvLHQPLHvTUArAJWYmqtdx",
		@"hlBYcwFcdYnvArONHAYiIfnddHTMtJaCGYVQIFKYKiLAIiuaGWPfBZqAefTTysAZzTJOLKrqpgBnQZxjsZTWvHDyelneetacboDtjkmkWwhQTMrdGQNcrdpGYwNsbbtPefPSzg",
		@"KbuXNpMJGmoLEiRCYfKzPKKTFVQMwEoSJLmMbLYpiluiBMPoRwjDBbQNBVYeQlttgjVOeZlWSxuFLFeVHPjAlDqERHrbqymIMZTODTqVZkZxHA",
		@"YYxdPmENlVgyOhdoPEnjobHAuVjiQVGEgiRujfFwhbchfaOBxCMdMSLjJtAreswTuYVFfFPscwBELzZInaJsHqoGpEBqBthySgcZLArQzmDvmqgnQ",
		@"uuDPmSpnZJzoQQBzTHLCvrfrFgqRoUDMEtbTOewQTgvAdsFVgakvcaCsjVZMmsjXPNTKwjnhIglcwfGGWTlNhVrpCmOsCDNMTDEoOwybZqdeiUCoEiWpMOgZXXWctraHmZiqNUGXXjc",
		@"etsfJuKBxCzBKXuAEZhmMZwXhyGekaPUEBndBOpJpfCDeQCVmsURyqtZPjMEEBjXvgfPdNDQwxTOqsGlHmlVtWLoTazMeoohmilIcQIfBAvhlfVRXWxssgEWjUvQmJTCxKd",
		@"lIYCviTZTUWNNrCbGvMLVYVhdCCPNOdJBKOLkIZNdoqLxAasqlIJhJABBAOwqkGOwlgLsoKIVQjxltqiuOyytYkPyYegwmAxHzBFxWZIUEdjSv",
		@"zwRHegqOhQojoEbDfwcglOCyfgLAlOfmahnCTHnxFSctQuMXnlIQdMgtDeMdmBvWeXfcfJXudZnYZXiPRReEOAnzgIrWgguIhkhUewfpXxMtKNtNMjFtCgPGQJzdKdAeXBka",
		@"XgFWAjfYQuHxWAAEXYzkOpnREhDzJyTTLSWADzigJAtqaPeNXrDLgNGcslYrFaLUnprCmFXLgstdEEHhqWpgNZesoWnGYLgiktDtrTvEyUTaaWOUJPhAxWiEvSjVwJLKiUT",
		@"tUXrMzXJDrXyOEHRCoPTFvrFKcXsVJFOLvqSbijVdycQhwyXdhFZtDlQrUforLpPzsDSXPfCLcjNoljNjdZEEgMXFzdIjXnJyXzEibuzniFleRtdEwNruaKujzxEBeajsfcafAy",
	];
	return mLxbPNVvAf;
}

+ (nonnull NSString *)GYeQaEdlhFgMXgYmdmO :(nonnull NSDictionary *)JEeRKOUSpwMc {
	NSString *tmVRKkZmkFlnEhepJX = @"rOVZSvphcKBgknkUkLYJISeOJiqgfcokAAHpShUPpHjWVNfoxsUhhqmAYChVQYSOiUpFLaztLgzYiyUkUEdPtJkxnupdMEOGCDIkXXLGFvZJa";
	return tmVRKkZmkFlnEhepJX;
}

- (nonnull UIImage *)IKEcoYhHcGCXPMqRAA :(nonnull NSDictionary *)QkqHjiaDwn :(nonnull NSString *)zdgMIqfdylz {
	NSData *OPeOiVvyDYroa = [@"bHkuEpFzPfCAIpqxnVuabxICCCCPJpoziwBoacCWDztVOOrhUvuKAfcwFOfmdbJHRrLJimTBtjUjEPBgKgQGMPFPjRPXNDzmjBNmMrwkIiEGrirtDlDW" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FZdSWwacAR = [UIImage imageWithData:OPeOiVvyDYroa];
	FZdSWwacAR = [UIImage imageNamed:@"FispcRiXwDLJcmMjNGgwNBJuUcGXLvvDcrKRKlNrPDbBjSLnbIkcmnoxQAmrZhFGHmdUTwKwAjgqGRHPNhhzmRUjeexgYvIrdOzOCMm"];
	return FZdSWwacAR;
}

+ (nonnull NSDictionary *)ZqWFMalUCPCMi :(nonnull NSString *)InSTequHpw :(nonnull NSDictionary *)zdXaRUFysH {
	NSDictionary *trZUtThKTfURDA = @{
		@"AolPUbzlKITogF": @"DplksNFHdTjrRmWtrplTxKnbxYPfDJofMOsBDBtQMgUdMIMesiwRCXyhqvHqRVJIayyXBDRBbgPwwzqJNNFqEbbOTCSFNkarPihQDydJGrrKVn",
		@"WHDNpbCTSezuGuv": @"dPzcXNnZHTXVMZWVLXOsucOTGiftlukcBMciJRKWcSXVTxVMGuatKVHGigYgBLyrlJEtuIRaCdQObCXHRcwmmejOhGYkccABBWtjeSQ",
		@"pYtvkxsfysScU": @"fDYjyhVUvEcIZfAZfbRDCuctoOgSJNcZwXEaXlvzEzNkOLlucNPnxuknSnCcyQqTosnovfOwCecVJeMFyEQdPDwjWwVCHdnACNsAmPaMvmONhPKwpHdGD",
		@"aCpzPJpISFymBDIer": @"ANljtnFFHCJIYULHXXVZKibZESUOdeurLUsVBumvwyILYekbFujKKEGgSFkEKfSqLLLJmQGCikByMoVpuQivEZqmHZSumbunVMakgRvmMCyHMLAuaraBhkOdOB",
		@"aiAooGOqLtlrCnEUijo": @"TdoOeOPbcYbdfDwIRmikhskZdHTpEoOtpvQeBjLcafXMpfwBAclmYTuSQSCKhKcfOJnKLKVHxowxLGnMSnumkFZdxJYoAAtkvpWiRzNJLgGoJzeJCDIviLjblgf",
		@"SlUGVmBtNJKNYNptgRF": @"CCyCYTdGqEBjsBCzrIkWVzMxXfsSyTfBBZNAcafchxpyWHKdlgUJWaAbteFoIlQhHBuCNdDSDsxLhYYEXonCsSGgtYhWwmBZGqhloQLJcmoyaTuHrZVcCIpe",
		@"NgKOWGrwsOIfUY": @"QarWpuSBFGlWZtCVfvSGpEqdsGtvGWknJWwBpoSidwXZSGJtjhVpMCJMUUoLgfsYbtfegxmwRbcNuOZYdWydHoOwIbjzpjIGYjFuifsEISzULLerLGFMbZwrx",
		@"DaoHnsjFNPUtm": @"whRsPgpWRBdVaZXGeqxEUEHQYFsFvDhTmvBMYvqFCaJSWroIbwAoCZEnvEwzSbpZGFZHZdpSmlCvsdzCeqkzrhFCUCLgEotXJGJcUHiVNlohFVGemjvzzDXZWkUwfYJumCBfMhxmfTaXfzatwSDG",
		@"QzzdpwhFyySdoZ": @"WPMXHsKOqnsHvzPkimOgCgtWsqOETzVdisxvyMajPBKXGcAHNkGnCJnqzJgdpRonFtsqeJcrDomUlpBJzYqpDGBZyfQuiRCzJIYLuRBqsWwbZRlwPfMZNaajwtKG",
		@"fULvvOoxkcbjYlYETN": @"CzGbyWdIXzeZFBzFORjyNhbdyvULphCpTlFPzcOFisvEddjecqWXjMRPRIEuTmghGgmHXHItxtOQTrusJskibyJTebicJJQnDuAcWIfzYJY",
	};
	return trZUtThKTfURDA;
}

+ (nonnull UIImage *)hOlNbtxoyGjeLZ :(nonnull NSArray *)GTqHfDBbAnZZZXh {
	NSData *xXZjKGCagEexCZYJR = [@"KmeJNJTBoHSAwwoMMHXhJVnVlyhpvXeGsGGRsuZguXKGkBjcPUDJthzfAzzwAPgywzazLKOeMKtVNjvlUFuFImtdDSLqPLGyevkustsDOKI" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *zCbMrSWDlWTdQWen = [UIImage imageWithData:xXZjKGCagEexCZYJR];
	zCbMrSWDlWTdQWen = [UIImage imageNamed:@"KSxiqhHwXGddNpwEVduGDTprbPyCIriKfLUSrFZyohbKcTMXTmhuCncsIJBryEcXJPSEHzcuxnPADdGIEZDGAITvheZqcglIRnKMDQpLLwbSShXXdQnSSFLW"];
	return zCbMrSWDlWTdQWen;
}

- (nonnull NSDictionary *)GbDnOTEFypIeOY :(nonnull NSDictionary *)XaqUTrrMwUwHVBWnr :(nonnull NSData *)CNPsdzaPjbpPkjPZ {
	NSDictionary *naXsrFhZRPDxLibQe = @{
		@"sTENrYEHmTQodRLm": @"EirXQGjcKLrJpEQvOSyXxkvwpnnAIgeNIpbWBhYjUjPHvcPIfnlCPorcBhQydHCQzDSwonxfkMCdNoTnvhIUFBzohpmLqioBupaJbOlHiJWRLuDQxGXXjE",
		@"BOpyUSrGfbRLbm": @"UAteSALKsQCcpgMqxSftbrhwGWCakdsWeIxDpqprYPLMQKKPdzjQOPLYqHFuooZWVtpbFZetzLATnTRufKAnUQGFRJGDisRGkFdXBRuiLujj",
		@"wTvkKidgkRjEYhGX": @"ytdzzLPGPKonRPYCPLfUhuaMIwYCAeNrjfcRkImRuCeUoCMwvkFqZGEOhmRTbeMjHeujdVttnyXfIPUvTeZLnUKtIqcGqnwBhtmvLiXDDXx",
		@"ymQiQIuqoQrdVnOcO": @"OqzaFPMLcwzaONPdVeaXRTVjHAwwklHVhJuHKiWBflGcsolzEdoVTPkxdddFNhPcUCMDWwmZLgsEnRsyMQLkEMbccwPLKIelgKxhPjMvnhNTdoixZdzKOVmZwSCqfarDIIzbjp",
		@"OQTjZefPeyBSmqhawND": @"pgOMfiDJGmuuopsMjCZzTQslfNmILkVBhywHWUDGKQRKkJLzQrwrEiybGwAEmvsuVUViPAsOZKTybiiurWhocJXWAoyEwZqDLOftOjtKeDUpOlHpRAnjhVZ",
		@"oRyueJiTqE": @"gYvEAgyxFNeejwyHOwaDZEKHyGACSwAKoXwzZbVbvIVvnLOOiRpmSvsdwehRAgrOeSiJuDiUPzRzoabJNcVeXQRrVjhatzFkfjFoefURCGhJDnOAgMzLTOlVkXnwCSDpvKM",
		@"kxZfxkIuTScVxORVEh": @"VxrmvDidZctdMdAimWOTaLugVPcDMJypiRcIpswRrnoRfsCgVbLtzzSSCRrDysitjNRrEQVwKtwnREEEjobMzQMhlKijWTytiYHieqjqWmfrbuYsQwJGPXuHZDMkQQ",
		@"zXzhsuNhgwwtbg": @"BmxnMkEHXjoaXLgxNJsTvYYzaArKTtiDWMorcYkAsmgtWoiJVXBcMzWuDjeLWzNBRTeiCiEevEJwPYGQmhLwMaQnIUrkCbyXZaKpDqJMtoMBmqxxpsjHqHdkFQa",
		@"MATZsZlanBJXDk": @"ALDFwvOUoGapUxWRqNTsqfFEyyvSmrcdEbsRqBTxvjEAnzPOXVxbKvDEUPOawfWUlqHAbMDKmUMMQMUtPDaIeuqVDqXXwiUgjYTGVSakzrcReKXDmdhRDevSSGqoOOxEtRCkcwWldVjFA",
		@"ADngJjPWgqMkZx": @"OUbnVBqwXPXJAZuaoFsPNIvExdwQBtYcQHatEAWiKZdHInPYZONxAQEJwzCTJOGAtTFzSRjnLrZVwKPgzOWRRQHjsWxuykspuJLctEoIwXHVDMJgfBBp",
		@"UUYgpSSnomvlF": @"kOWGzaVgajQaprivbfDtswqOSAuGClNMAoMyJOmSCpIHfNBNCbBZIjBJMCfOCWpTYlhbXTNvpiPJjHviVNszHAWHYrieKBoTfKOOqKCPBdRDMxSYM",
		@"BZZcJuGBJvLzs": @"qLaKSOLcMPUpRFdPdibRscoOseDuTjxFAtyuwipJCAlZGjnSMKHjndJVdSRQSitZMnNbccYugzOlUYwYQnsSSxNRIDAUuvzKYAnhSYTzfStPXmjpaAhwkhjnPMcJPl",
		@"hWwBmgHbbERYDBDNhDd": @"ZyclEQSSFXOIVIkkcpSjqUphwcqWulqhjEsnCavrTNYhhhEqJoyiRatfYaHNiDozhVOMqwmLrGqwZSUmqgJzTeCgUdshtnvYqSZucJvcrDPxXBfbNPWkPlwIHxnjTglKK",
		@"GcrzhngaVCRPFtZrzPP": @"zwXftoBcCaEQyZWHkPeCrPkjFwdocRzIPBgyWhoMerQQqkXXvkbnDtQVeTtgZlgDWdaBxiTfvbrCHGNtSwXeVCevRXPKJwJehgqYetZVcnpDLuifTESUypjSBolVugYDgmvcumfxCXeczTq",
		@"mXdalXsEXEQfxNZkyU": @"rvlxRLdXMULVEKQChEQhtCXKlTMnMzHyCXrKWwKCGKfByHACDxJLibMaNSwJZRlCJUkVbDSFDijbopYyJEqDbCvlnHgLQhBYOuQAeDamLHHfyEaYOeVyHIEGkIeNHWBbkr",
		@"OxivvriySEOQftxzRx": @"LffxLSFFsQzVJpzRBkRggJiVAaJweTsLrJJFiAFEdSReEbaghXozxcxZOswiVJXRFjYxGaqlKmIjGdjZlWrDooMkMJhbQbfnSNeGsepspTBnnQWGeNHDlmOBJfDfUvMnomiHjeLpuHpCAGJP",
		@"HPwVnYAsEeFVSeKvj": @"xHRHtDcUvcmIOuzJuHulRFqlyUhMzwKdKHugsotqJmVIntjCOXLLQNRXtEDajdlKgAgAmpRcOYIFrvtTewXNOqkjMMvRkEIdgvBYUqgXACkFlNUiBVXVhAerHIAqfNHEXjgI",
	};
	return naXsrFhZRPDxLibQe;
}

+ (nonnull NSDictionary *)zghUgHEcCJ :(nonnull NSString *)vJqxRVwEFw :(nonnull NSString *)qaMHMWIYDgGFItnqS {
	NSDictionary *ZtpPcjLESEBucAFuZA = @{
		@"YZAlZxmdEl": @"LmlnhTzxjVkMTahxQPleBJtUeJIPqmsAcKXsUobLXUgusDpyaPHNXxQnpxMJhCyBLTVygBoHWhdrdZrSeuUpPFYYdgEpFnckjJIqxeKDWRzDDIX",
		@"PVVQoMABwfyjtD": @"oHzzBYGmAVOSzOkVPXIuFwZtYdEYMDpUORdMeQTrTjNMJwgalirCpYlbMpVZTdMuDCtBrpGKpoxmDJojQLoWkiqpiOFsebqSUiHzpUqLgbSIGVUGBXIDYmEFa",
		@"GUDjkaXUGT": @"vjhEbkNxnyNnnKgBKpzWZHzAnYSvGmJSomaoAmzgDnmsQcoktyrEzVQvuHjlKgZWHyLspPtqUDTsyCwGgECYBnRBQfatiqsaqcMexqRzRAwARiBRmTcUITQCuJkSVgFJejsWYytGTOvDDAjE",
		@"iMzFppAQyMhBapVFxXm": @"LlpNdAisqcvZcQYzpeCivhTYrDIbYmYrvAliTAcRnjUKpCoGKaegXVAheSUfIIpPKOEmUBiKqDoLiezxCmXFwfuEenanUAvGgQfhgGCbdjOJTtdavaTJtpyEoyHVkmEkGnOT",
		@"KRQgHohVfQNR": @"PhWLpiaiwhHSgzfvcyHpjcGjSLsRPxYATtQjrSLgHMIHQBpVPxgasMBeKZXopwwtDkGxuayEZEaZcVWAyeCGXOTqfmCVIafbzepfMQGqRrNkzPfCLmFIpQPgMVe",
		@"mYEkBNVhyDZVDYZx": @"VGgENGFRENoSrPWMwThIIyeenfPXUCggePsJrNjSpzdFafGdEGthEQFebGtnyDQsdjljkgNacscnOaYLNPejCHgbKKrJfIfbuguOdwKCZDxPbhZBLtyWmzqSCUAEKz",
		@"uVpAqBAoHnSuhfz": @"WTxCueSzSqgbaaVnoRoobeeOVDYToHHBraqDIqlglJVVGkDYlqPJDcRUKakjswPYpIiLELDrVtFoWHaIEPHmCDVRCzhVZXTGeODPjCRTelaqdFKCgokNXPBdabqKqLbm",
		@"RLVaHkxKFIOeYZHFQsw": @"HMLoaYsvASPxvkpUSZAWWSNbxdCXYhuakaBfdoSdGscctxJOqCEGsorxedrGdwYomGNhZWnShEdJOwepWORWnpJDwDdKnmRGbYzbvLaVAOWUakNeScrPajcmnTNqaZNjJ",
		@"LphzpYobWer": @"KnrSojBRxcpPrqpmTBPTcgGdqqzdaRYjJzzYWAfgsHNKojAYmwUAqPreebXeToSnWfwcaHCUOXEYYBQrMYmqqwtlJVZgyvDPEaSXcZtYixTUOuWKzQqUGVrv",
		@"eNIAiBfTgNMacTQBNBy": @"iyDwomJSvGgvsBbrmyBRiGALocyqSVXgzkSWQWAkAIJVKkLMysRMeihFucElFVXPACEYzRTAFBiLKXmWgEoBoPejzLtQNjVerKJcJbZLiHSjQrKTJmm",
		@"yprVhshEtqHRMfRm": @"XhFjGKeRciTClIlUmHwSPSlVPBhMiVeaANRrrhTuUgwUEAAiokxuJsuOaRyAQYrZzDsbacCmCBimvKOrfFbyfTCuszvqgciWYDtscmFLqTLIuyrlCCuqRsajgdFYGtUeHUpeIZEffsmj",
		@"pyqmpFdBwf": @"jUmEkvCKUZeLZrddDVFxXxlbpfjzIHvmjRkUCOTmqggruZdvuGQpimeoKFkmUlLKOjgGGcaMIqoROtHOFzLbKMHxFoVmlftaSQcidiRcFxSXgpcEfo",
		@"KAIlKaLPLFqNTOkOuNv": @"jgPOYkIWOwkSHdmaTxwBnWjJyoMVJzmrlzOmZQRMjRYGRezVvREoDBDrDwFYPLSbSDNepnLBHjnKiGwsphTLOpxuIouJONFGUwUQk",
		@"FQqOCvpkmpTVaVHNjeq": @"soiwfZlliStlJdNGESYRtXREiefmKIVsKpkxBsIaVTyjkaXuObLKDnBZwnrDuzbCFDpMvibZZIYASSqfqRmhAIiBrjbepqFZoDFbcUrSVbnJGbHwIqUtTqGOQrOWPtBbUyvhhbueQPhLkuoL",
	};
	return ZtpPcjLESEBucAFuZA;
}

+ (nonnull NSString *)IfkhYBWiQEJiXAlZ :(nonnull NSArray *)dzFKGNirMPMiz {
	NSString *EDvKATriwgv = @"uTcvpCNFtmxvgaUXFFtkwAUwPTJdpKcEzOsDpEZtpNqamHDewMWmkQAXHkhgFYgYXPuytkSxSbfFNrffjpvogIwCIeUTHAEerSGmZAUwDDTXaSLPswOAtNejOhhAOosfvGcRvfnTsPDLoReZKcXZ";
	return EDvKATriwgv;
}

+ (nonnull NSDictionary *)LnmdWmvzPKAXdIAsJ :(nonnull NSString *)nVlLeHnYWA {
	NSDictionary *aJutgWxdlYEjwASLLy = @{
		@"ewOvBWbbyJvoAukic": @"FphNRlWoMlmITOaSpLuUxmyvhEHiCiigGKTrIxFvWBkzNWnfZOfoiLnRxHLYIRQemqJOuexjIPAUDFijfvAqgUzksjvgJXyFjwrIoorXAydgEZcoPDHQXJPVXetVrKgLwFKAMwesLi",
		@"UsdMxGzszOtObvvpmdz": @"gRoSxfGSsBiIGpbPLWIVmaSVhiGvtbjWndxoTbLYKFJRcfLiFcNFhZNfJTfNhbayTnBakVvwaZrmFFegjoVVurDxYuCaispbEslDvdULjKbfUYYBPVtrxWCdTxOADDifLXOQjIQLIkQbVpKr",
		@"IHzeQQQRNnNIiwpGb": @"xNciryhWJqkHHCECyxUfvkSPHYADdeGIfuZKggLrncBUESKMhbWJNcvuJtIOhOyqTsIQpBkBTpOHrwZRQFAwNVHSkenWSgHasWurlVsjFQcovyGGvurcfwvYSfXIOjWGaELZPFWLcqaInTJd",
		@"OEKVcWnLpZVTFcqyv": @"ntaqcsJGQBfqifIBQhwqiVwvubPMubTcxXQqyCXeYrsVYXoCOgtHFrCBxhUpLiXWEBCVYODAqkVnzXCIRlMpPqKwBBRhYYzvKTCeYrPuXneXDHjCuRpbAZsnCGfnQ",
		@"tcWVvPGcgA": @"bgvAVwMuPAzQclDSqVXrNpWcvjSDYCMBBXJkVWQnpNtGbZAItCpEdzICipbonXcmEVEeQafxyPBJFfQosNAYWJwHjnqXiWvuqqPhWbkEzfWjFGTlRJfCxa",
		@"lmzLQmASqPhlB": @"vTFooBdwGNtYEfBBnIqWymhoMhSqFghKIhIeMNatPzuaQvMCIpGZpDHdbjBlRcymAWfdmCcJjhVdvBKhXdIRpJqwkpCQEJQpcOuqWz",
		@"LWcjNHBMCvnspjY": @"sPWsZYBRtYUdVZrTmjDQvXbePPJnsYUzXvZljPLjkwLWtDqWhgfgVHMqyojrPFRtixavBehhRuqvCTwxITazjjOtvTnfuhgbebukfuDMtJnXduSiqdyqawUYjkgEaYcySUKznRLoIWGkErNqgCZN",
		@"uCKRBAMdHFuOrw": @"lAcgCyeiwzRFAptIlIUjFIFJwYpRJoAhnrOHsXfwxvyTMbOFfkjaBEoOMshknfUgMVWJiWRtjtCOgYerBPZDmojfOAXWyfRsmAiQcjJVJluGteFdiBvLcmLrMspOGWNfWQcKNBls",
		@"jOgCICxpiKDajlnNIXk": @"ZCIPkFmiNsrljGMXPHcMimVwANfCjXFasBOYeFYZyTsUczmizyjKZZkkOtzpPXSBdaazjYRFpKCknjZPlvDqPtNwJeeZnmjmYuoCpNErTLupkkpbqiryBnFKHkEHeuSh",
		@"QFHHZRQseP": @"IxfURDZKAYRiGqCwlVWPebWejLpajjANpmWkBhfclqhvfXBhfPnrsPxkeTZYvOwGRcsuOwKyGcbXqiaMpnqhgBRvogncpiXugXxqBdRWfFHPIfjxgNchLcpF",
		@"HyqgGslzYEJrB": @"giCSseYeImwTPntRMSKaAEsKrluKABzsPsuOHdFdqHhdeoAfPABXIABWkUsjhicvYhznYaQElaYWfjugtmTPNEiLsiqGXYGjQKmnOCXwHPRxvKFyEivumnSAFNYkLthkuKAxcaMOTT",
		@"RyHiigbsoPrfHu": @"uXkqrdjDAHiiEuEJmlVUlNcTOALOqEyRgBsFUgkudEjrWFmLrjEeNucHKzcIzoxtgXsqwCAayrnBXKcFGAqWEuLioJUCxlkoHmLXdNiZIrFyQooRfqbXkBwWgrV",
		@"zYBblBggJzq": @"ZXYUIQrBDVFVpEXoCAEXwurvkHrZsVwtqVQKOkDdWCpRkSyevrZheVeeRgztYUzMJsBguyfNisHaWfSVamnJkYKJlMLmLmmYImQAmAyiJnteSorZFyYItXPeYYuxkrAqOXZoKSXoDSWvNBBD",
		@"bqJRoLoJGgFViYoCeN": @"tGcQoRIfZiQfirkYQpNowmzvnugDpuUDCuwPNcaAfOmRQfIkWCDlHCaLKfVaLQqqGRDPnLbpUtqYPZkaYUoGxrMZWnEtvjjRCCiLmMSiq",
		@"NUgGHEdREKjKxKmnl": @"jUBwEtqRJFPcVMTguwHNffgfBmujYrYXWPyCxBrXwnURMsWvPSaIVhCXKALzXDhWFkxSgbWqpZcABltvUXpeFJhXhazdJSCIhqyF",
		@"gaOCSAJmmTCaalR": @"brIzjJrgVFZsSQNRGVUFjfugijyEYChVkwlQejXWAHhZphmvkcKuELtHXSItEohPlXGGsxLyoigkjLFjtinZLWoLgRqKAAmXEOPYHvjhDDJcLXCXYrKRtSby",
		@"cyNEIXFzzO": @"ACpMSDWokiociVjrFLRzxSrveRosvePnRchTtDieskuUfzSbJBCrsNKXGhZqEZVLGvVSmIMpQJKZkcPLgMIJThJhrBMwFVFxUnWHZQLKETKEAcCOzBrZtYjCNBNNyoSjKRkDyYngYnVEVnNrNOeR",
	};
	return aJutgWxdlYEjwASLLy;
}

+ (nonnull NSData *)SLWssHLiwJtBPWWrH :(nonnull NSDictionary *)HWxlqhPbLDQnjfXj {
	NSData *lHuDDNByTBSqxGPoDSj = [@"UQQsnapMuOfhRYasiJKXmnnEtKCuhNxwcxxvLnxqIvwtGwMvVFXFoBAXJnyKXfogvNeUxpJrPauLYHAciieRzFmAVqsRGLfcVBPuNdoymLDzTD" dataUsingEncoding:NSUTF8StringEncoding];
	return lHuDDNByTBSqxGPoDSj;
}

+ (nonnull NSDictionary *)YGBwGpfFVPCgpdMaxx :(nonnull UIImage *)JJIJNzkFkZjyVZIJSYr :(nonnull NSDictionary *)GyYnSvgnutS :(nonnull NSData *)qCCDycfWeWrryZlrzH {
	NSDictionary *uXWYNLOFYP = @{
		@"UXcHIoGmiF": @"dtsuHgGGKKVBrTNJXzxZqNhdxPwzIWGinfxQagNLvUGIIqjdCvnSiqMYABPOfrLoiiQnOlRvCIeRfiGPTOBwliHnNvYNCjjttqiUdmiQEmIKjPGaNKwKCeHBFQkeiNLAoqBrCqHYaVTnVzflXJ",
		@"ZIrxXhjwEPRgT": @"rPwBBKnvifrthoVvVGvlvDlyoccNIzeROzDDfxtnADNZnPgBimfnERuSvycFsAjbAATsBHlhBtygrVRgfeVkURBNFLyxMBVMOKTCeN",
		@"yLykrriosiZGqPN": @"lENXTvhSfNpOPFDpPnZsyEcvyBraYDLaZowLKLSNcjFOhCovWcEyTyldJeidVsGxLEdzpkrCZYfgBKZXQnQtLodBLcmCKnGxniuHFVXJRQBX",
		@"ccVIxJdOUV": @"jMIigBQODuRoqcgNIxWiBIskeyOcFQvtcjjoOrgPOfQTCUDRNjvsHHxzhWjoMYTXgvWWDhPuOIBSWxTJoyTsKvofesXQcJLACeerMhODfvNVjKrjKBAxPQeWJshdPI",
		@"aIsCaWMXqqnxK": @"CyIHLkSTqVpmMiaIkfUCnTKxCjKrllNnuyNUXGSsKwPIWavRjdvnTbtQsgAVCenMvyNDSZRdolsHXyAYcobGBHwXGKjsysOMovBRWAbzQWgvwsKoKHKgvQrDMLNuFaxwxsJuMHkcEbmnStPo",
		@"HYCYApkijotvaTnaA": @"YdPbUpogLonOWpWTYBshggSjIjzgfPMBtsmfoEJygmurCgTOiNLKliQlohlJolyTvAwcoWfBuwVHLWSvZQwsRyBJSaXaDNUBvqqhDfaJzabCvEDcLJifVVEpUzokBdlewfbPaDipKLE",
		@"AdbmKGVcHPvzuvqkor": @"lQJSUJyHtjmVuGDtmcLheQFluKhLPVaxEvZDaPPzSaPeDIVcwcrOdaBPAEoVYwGlsbvOVoxaQkjQnqiNwqVzGLYCpMidYUjmzyclWnptWlENE",
		@"HRYqIeBuBLJFGlEbHLZ": @"NMPakbbNvlAVrXQrtkJwLPQWeKNMJGcQabHhrdRNgzDtXQAGsrWFJalYQxHtlTBfcwVBjSlqXnkygDiUgncXMkxtfBiMdbEALPEpVwrDILbgsJp",
		@"VoLVmWLenRtMCfRh": @"HPTzzBNSPglBCpXNjZCpDxTLzilCaGDuQkMEWsWUsodbsjzkdMfaXksvJNJqBRUYOdeSLVVsijNqJOyayWWbHQbLzngrbXqulvCaGZAENCtifKgJcJzaAhkccZunxRboLpAemtMmfzGPsyyzwwAk",
		@"vPjQfJmeNyVemzk": @"MsGVwLNYYyedbeaTgFooYFEXwlktuMXptEJfxQARPrzqyMpgMOZAwymXYmLORdfZpjvQnydcnfXlWjLqWYEEESCYsveeEwIOEbycOTHspabctQqwzZYNi",
		@"YZEWkDXmYxpNlqKpuh": @"uPcvUDINVBYljIEXslXTNNovLrBCpvmapJeuXQziVSErfcvHUBrPycmqGwuzwPBYWWJHPNdMdRnRvkoLhsASYvmqxJdWCfYWIvnSYmyXJfNYINC",
		@"fTeGhUHluTG": @"kSrPeLHNTlOhbDzjaGxklVxaPswPHgkRepePouZmTFlExXnjRxnhJQTwMwmWeyWkWYLfzicmajmEDDaxvBrcnDaBrLOWWCIArBuTxndp",
		@"rlDfMmvxqtF": @"oDbFHRPWzciCPXtIFgJrVhfCvLIRodhPVymxiMakImtoWqabsyMGgyEGeAFkBAlIABXsYnmjWGhacNZCQjfoeqqsKEEVBhsTKctGjYiJIcmyofJIUpsCmykMrSKJXpfvsUOuQWcPSekhczFZKYm",
		@"qkEDmudXcntecDYOpSJ": @"AtiSjKQRCLeCcjGmPfTPAAJWyQKcZrCnkVFfnIdTHpGkXhhRMBzPQoJkLJOZzfVdWLzGpsZRXZjKpKNsRXeScXOWclpwFHiVouQLvLfyglvChXvqZyoGpalLnNKYBOBhihhFkQiRFdxFxnTFb",
		@"OHLnVLRsRNCbtPMt": @"JCOUFLzLsxKTZDkzeZOJhOxStweiSUigPEMhTGXgCguKtzbrCIDJmhJryLJDxQQiFBVVvqUwKsGoMpiQkwLLmfymmLXizVXYWYbGGjrUDjrTRqOYsgEvRZ",
		@"DcImODLhpJwYk": @"UHvhEyysoOzoXrGBPPEDiookvrAHcnXmTzcpSOVuVEBqAdKgIRtlqXVxUyaLiBizQWCJFaYZvAzbDnLeDynyPSeMZQxTBGyyhzNCIeDazTPWlEINofOosZz",
		@"KCTPoXuUixdFz": @"tIDZBCNxxPeKvroPQDYywJMlWHXCAudmLnyCwckHfMQeCEDAeyUXYVFLbwusDDtjJcjIAKnAqZWlVnePvrPTCqNGyCzPsdCyqUILUc",
		@"ITMJyPtNRLIPiXdFcWN": @"IWRQBkTuQgfUPXIqAZyeYbtdTVAGPxJefTHfpDekYgthOImvZtSDTKKexSvWPrwmXgOmquZpsRkVGGTtMOWssxzYDoYISSdWCiXvASgaVSYUYixqiKRruSAvlaEoRKYOZDBNkbMjLpssQxCysL",
		@"kPNyrHDNRFT": @"KuJJCsidOxisclbyFAMlgGrBOVywZYqZxYmWErDTprcsTzQYBEEoxHVBvYwXwXfFebnIurrOjyKNeyMtatjsJrHQlqmHptfHrGmvDKaOPvPfTIyPgiaivQ",
	};
	return uXWYNLOFYP;
}

+ (nonnull NSData *)LABiZDDGRdyl :(nonnull NSArray *)AcHmWXiLKd {
	NSData *PalZqBHHXNuGCJrM = [@"LldyvUYxxMoHOBNapRGiGqiRWeMLSghOiWVBirxWpwUXBOemixwBfJqZnPYWHUtvNJUEIdulWGUXIQNrKRvpgNbdnBDbuxOmkrqUbhpjJZVwSCPPZMNrfOzpthuZtXCMVPDVLZJQYgiILKnM" dataUsingEncoding:NSUTF8StringEncoding];
	return PalZqBHHXNuGCJrM;
}

- (nonnull NSString *)sTUnlHuaaDKRxtnc :(nonnull NSData *)CyvYvXUEwlJhplnawP :(nonnull NSData *)JIKOIdaeNJ {
	NSString *HFDVLpKrywTUVWyQW = @"zMkFBXcFZgFvZauTJxWyvWrhlYnnQmxssBRgVZVjbhFAwjrdpLpuZnWQzzceFdTzoBMoBpDpYTglUyEvCWzDdEAwFfIKVnZGGDHQvUvAPhHOlYJWfuwtk";
	return HFDVLpKrywTUVWyQW;
}

- (nonnull NSDictionary *)zilPSAzATZDszNvcVS :(nonnull NSDictionary *)fXacxTkiTIS {
	NSDictionary *QxuiTdFiaZPFqpzdI = @{
		@"CCgIIFKArs": @"WJvefqvzfdCNzHDArADdvBJtxLvEiOcAFGMRUYOkUEAjifMthTiACNUJhdQQXXsVBVxJegADHtdrakhSkfowtDixTwwQoNHVyXccnLUvbnrVOMZj",
		@"OWIfRfXEwb": @"NCRIrTQoRHpnWCPpibTWGbmBRbjlsdXKkphWXGZGciMxqynchFPUHnMsyWZtRplOfoZVfyplgrDlMBKTXIjkxbNNOAwDrjaXuRyeWZmBOTJADVaqQMLKqVbjwTvG",
		@"fObQfLWYXcUFRGdtNt": @"zdytEihWWjHMdSZegoGNxTTZJFoGDnuwqITnBQZxjkGGUtuxsvipxcYyfSXDKObTpYfvIMMcNanLUmQThpOfnoLlIdpEfmYzzgpWOKKCWBVcMkvddIEZUKhGddrgYlQODLZCMgmUBYlJzwxAVPM",
		@"SDvpsOlNym": @"oBaHnLHrobwWRamdhWJIqGHNwqroxoKKGVuDkAzvdCLZOlADoXPvHagKTNfXkljxQOvCYiOvzScbqefKMshnwxFkVzLmIrhqwVMhHdwzXWtrMmXImENeVjYsnRs",
		@"JLaUDEUsdd": @"IoPwvpjVyJEHQiZATcqaSRoccWqtBhYuSTXthANnXxpjJXYEEscPNeNFIGCwDCyZUPtwGwkxUhGkNyDbVsyLxmTIdFsMJhIpIDNDGFUWLepfrDgvpLeSpuPysHCMYonVDdPmgAZvuZNmOHSFGr",
		@"MLCRVKMHznBGftttpI": @"oqSLnVYqzswwNzskpbncWAnEaTJLwEuUVvdPOnQKvTHJnsHJxorldHACXByJkZlrfFJfrSmSbgjqCKamsoraFuTGNoevSGGniZJHlLxloPKwRDEHWMvUVnKITddvPlLQGlRFF",
		@"zwZyhyeXpWRFz": @"xDSYiariMzhUQxIdNrnvOhDptVxgXYdVEZmRghaLwJUVxFWHEkiWUURMuIdBmqlVAcxsvwKFjLIpbpGlaFZCqGIwfeMpWcZOHLHepXtUyZQc",
		@"xPqPxAzxYJOJGhVpQ": @"TRBMwDmevMHrCVxXBzcAxeuzNLKgoCOdeWNrNhYkhAhYzuOLSTZEunRlwbtboyFuLeotSchyiUHWtUzVlChRqCqxCsYjwdptuVeTwgjxtJwd",
		@"yPtXapDtKVhopafWLLB": @"HCxQFAasjjyuWfWoRdCdembCEXIqDNVqlomhBhthIAfXznojnCRTeqvjAdccxbwvCVmxIVaSXNJoIIZBSYajxItcHvniljNdLXzgnFAVXop",
		@"VvIXCHQZqIiCasKqNMU": @"YdNCDmUWWEYdPVVTVFgqFnnRcxEhzUvwaCEwjOwjsPFTVGAwYTVKIbaCyGWHcQftsmHDYHPMBJXGDExTrAVwuPxzjVFRCFHBtfJTxZVDsLtgZLpRyovBLjnosITvcYzqKqcfkRKttDryPHloUzU",
		@"RuLYBSAGDejgVubWKrB": @"qOrXhUhCdqdFgBqQZcEeWGuTXWHunvqUxKHFVZiMWrqYXhSeYMHFeuEQdiEdsWtvzCTYTTwmwHmxNRsoNujVBqcnaxPLwkuQhHkLaRfHzuZSrIwcfKwXZCYHOvwTvSPZrDL",
		@"DrEDEXfQQSRYxzLmqwi": @"sXAtSUZBpDhHkDsWCeJLqrAVOdXlWmeHgUHLtxaCcedceIWxgfPhFuDNZFbVeJzoYxDPoWvDBcPaKJltlgcAMvtvAqZaeTjrKeUdMXyjNKKnVLWmODkorm",
		@"jYtrsVPeIm": @"aPFRqfjOnWeqWLtTmrRamMgIjaIqCVFgVYaMCfXQWzZxIWJaljwfwxKtPCkERgbrPlOLUubuldrVCdeJuRXScpXptvkqhtPjxMfRNoAUuAUNMuhOZWJVhjmRPBivmONugIQPfxTIwaGfqcW",
		@"xLvcipvVjA": @"OOZmlAwDtYKehlMyLwwvhMoNNJYNjcbrxWdNWgfVHajiWToMTUukAHBqkDiNsTurmbaOLlskWIpUrKbBaSUgAhqwmolYRdTkQpKDSRMMoxAQCJKWzZAkxzCzVNTuZTFY",
		@"wtweigkvVvynA": @"aKDiGkdVXmtTKYTQsVytPcLaFkHxRjQPxbEWHKzRKgVQcnOgvnwEyxpwJjLaJdWvVrqDSxtlAvhsFMCAQJkRoQvfDCxaDqauoZOyMtUa",
		@"drdRdPYfwUJQFjIhJ": @"VZVPEdOfzpGOEdvUJdrmDLBPHlvjsXqOdcZZLaJZebuUhQLvQraCftOoBgtxjvnsnUiwSxSVtQatjXbeHmVntPzylvftThzqQpuUGwMQdoBFhVLNmPgJUPMksscFUKI",
		@"KTphhjDwlNXEwRqT": @"qwrGzBXkfurvtOiAtmhHTLKmGfrJvqHgcGzxmdSTolUGsIyCIZWyVAABUCqOQBTDZfhVGpRrIAEcoJQYmuShBvINauSyxaKPynsWvBQdOcYweNGQoOcDyYcMQxKZxQiWZa",
		@"KqyfNYraXsDAOZyPti": @"golncSXPeuacwoRxrZTygVDxMNpvAdOZqXQVHiuPGVNpAwLaOjlCUbhtMAEHPXqVuhReqxLVylSYDFGixewQvyPCxYqpUsSlrocCAKeYTgRnDTsZEeDy",
	};
	return QxuiTdFiaZPFqpzdI;
}

- (nonnull NSString *)SMsIKsVvbr :(nonnull UIImage *)wsuRNEGQekkP {
	NSString *CgYRcuwfWgkozvLu = @"ntzfeRSTemTiRsPRUAIpHiMPOAFRIuaGEWnLXiovLhhkZjdwKZlmnUeWltiEAIKxvAYipBSsbofXqRRoZHcewekbmeqDRfUPcYpXiUHKXfigkXgsnaVxkbvCN";
	return CgYRcuwfWgkozvLu;
}

- (nonnull UIImage *)nfhrLHdPSiDvDVe :(nonnull NSDictionary *)KODEMAINeBapdeCdMB {
	NSData *vOquesBerAKs = [@"vtbLzJpiogVMSdjCSKYjKsNtUpyKkNkaCFugCOFKHNJMkqQhzETWZDOFWfaFlsvYZuAvJUMKGFqzzDWJMGXBSxUPfveUYbynBisuOrFQtbuwpOtcVzvhXNTUMYDRFM" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *LVYwmdJipa = [UIImage imageWithData:vOquesBerAKs];
	LVYwmdJipa = [UIImage imageNamed:@"MvIewwsSyOnVaiutkSCedGVZQYlhQXnUeCaQiQQwxejlbZCMYYcHeVvKcyDmClFcaoRmkoqlHpYammDKxmJtYlEGZpWNBgixdPZQXOmYaCqdrvEiJZmTLYmUpJmspXQsujAXvtxakiXgEKYu"];
	return LVYwmdJipa;
}

+ (nonnull NSData *)nfcRxlFscxJFBh :(nonnull NSString *)qFhshZzfGsBOV :(nonnull NSArray *)krNDNsImDCieElO :(nonnull NSArray *)iOwgJGMtHBOIHwQteXC {
	NSData *LpFDupdhhOVtglB = [@"myRxbUAlTxTCiQyhXCLIIdEPZGixIHoCKzkngRxmctBLfdocTbmgTaagsqRuhnZrrVsMtGLEJPNOBJJrfbdMGqcuzkfZreTgoHKiqqfDqyHllnjYi" dataUsingEncoding:NSUTF8StringEncoding];
	return LpFDupdhhOVtglB;
}

- (UIView *)backView{
    if (_backView == nil) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor clearColor];
    }
    return _backView;
}
- (NSMutableArray *)btnArray{
    if (_btnArray == nil) {
        _btnArray = [[NSMutableArray alloc] init];
    }
    return _btnArray;
}
- (NSDate *)nowDate{
    if (_nowDate == nil) {
        _nowDate = [NSDate date];
    }
    return _nowDate;
}
- (NSArray *)weeksArray{
    if (_weeksArray == nil) {
        _weeksArray = @[@"Mon.",@"Tues.",@"Wed.",@"Thurs.",@"Fri."];
    }
    return _weeksArray;
}
+ (nonnull NSString *)skiogjfdXJDH :(nonnull NSData *)UbTKzAvoQmkR {
	NSString *cBwfLWBnQUtJq = @"QvxPuYNsyWQmEUngziNWTeBbeZayNkYPzKBVNWzwvRQVUcPsmcFDddHRohfgTIazdKXfEFUixsTtHsubMERRKtBxeMYyCSkxOAaAXmNitkttmCnRUZTkBPxTcg";
	return cBwfLWBnQUtJq;
}

- (nonnull NSArray *)XErAUOQPAI :(nonnull NSArray *)vCOHPBbVOKJzGTmcF :(nonnull UIImage *)awsZsbcktdmhfUCtW :(nonnull NSDictionary *)UoIhFgfEVIFctfmPAP {
	NSArray *dYWKPYwmxJFZg = @[
		@"aRaDSaKxdcMcywrEPFNdxVSnXSvRwuABfZqLjSrqAFAfZFKuikjDqyPWZHrJRFyQRhzejSKFQasMOMpuOzWfGvRBnPvUAOLlSbkoOmuZ",
		@"PETBUqpxiWCznhLcJBZssYixNFwoEoiAkoCGbHqEXawzlRjCvbVeGUwoNjYmMySFljrpleXZizlEaSZlyDdBbVHiJOEAonuvRtXCy",
		@"tWsocwVwyYraVnAlWMNPMAoptnjKuxCafynMQcvfBfaBxZiyuyjpQehMFixRujsRpsySUXxmblTrXWHGNebjVJCSpFUAyFsEhQRfOhNpDJRGQfIxcZUXZkWObioLtuymlzeMpnPpNgugLVsq",
		@"IXtfpDTTMRWAscgaaTGLjOTTWCaGFKMmfpDsrkkYbadhnSkhADaviSjTnWaHjMWOcORvvdWPJUgAIRFiBZxbxEfcdZAXwNacLdrZTCbodwvfCreNPggiwKV",
		@"CWeAfBQeBVnYGwcuJBgmUDnVDtOqPQGosFyvhQYeUKRQALkQjimjjCuvNfRdVbpQbYzvhdLhLLISJLdNMdbaJouNMQralRzsmUtshvKnronzYSwDUMiPJkWyVV",
		@"QabqsYWkoJsQUZBqoZoBDWBCnUDLlWahguLiWrHhNTeYeXcQZkaPpswFlmmPJgkglHFDBhlVTYNFhdGzkqezsIJTKfNKdPdLRFaKUQQMBlhtRPiOTGXRlXEYPfJSycLIwCTZCmqnobtHBFGoVU",
		@"rMHHAtGzhZJvHTFPBMegmVLoHLAuKDjCgwMCeUaiANsebQQwHOOwqzvmJlptRBGMjrpuIatNtwrnguhgsmkunwyWTjHpmckBlmdfGdpmbxDwPpbiAoEjJApcBuVswuvZmirmEJzCLHCPbTao",
		@"FffUYobbbYdZSINqMKscroOMelCLDlTsSkXBwtTKAfkrFGZgWRVngGEIJgxgdVCkHgkXOYbxYLIEwLkJwCglOCnSMEsjtbjxopoDgZgLOVocqauXBoN",
		@"YjWJeNgZqvnSAfrtMQHVQoQFZngFKjZaRGeWPBAnWvdrFymMEgydhUrxwRuzutteZFawIuoXPQqSEvrVGwewJCyNxyOTCoMyZMADIgfhTMzV",
		@"DRnkdVPJPdPLcrZwypByeaOBURzTyopNCBUqagJVataLBFrwMnyReLEhMtvnXawDjirMNnIqcrIygYmbLJFRvdSfqdMdukZhrkvftneemSeOrgkeUjacelJDkvHpHliqoNEHpdaixqyBaUnJqJql",
		@"MyQdiEzrLcFOzxWBsLnhQsegbfWytZLgUDYgIzpMriYKIfqjpFjUjKlhGoBvRPGJKYNNOZfjxIfCTqGzzXSMEoYOZLKtgsuPTaatUupYbobmlcGryLVYsUXgqNuLbQxR",
		@"LBNSvMQPihBOGzWtYogIrOpvxnwFBocjcKuBhcJEroRHzHvNvKiiBuhTuhmbAvvSZFaPTNSGdDIBGLRSvknRgLlHsQlruAVxOoCdbowZNH",
		@"VTjzdTFxCuwxeHnTBNfkOtggxmlxjOdMvhLznPYrdWYJuaLgOSlQjtihwPjYFXRhUzATtUgUVSqISxPsmaIUwqWIjGrmDwKErrKcKhbMdXzxtWCKbvmpXoBkE",
		@"gCvJGblUylqNSvmOADtMFFOskJcMJuBkbLHKRUNUeETqmvzvUOxPUhFMzHeWEsNkyPeCqSrgbZWskJorhwkMQuFxDcyzxGFSmFoCoJksNovXdtl",
		@"NsAirWTxoednCFwDsqGlAZYYVZSZMWLbjHUItBGJczKYAVojtJPLMTJrpSUZldKBxHLjirIwWdYqWGDgYxuTrgjywzjneUNCwZAvMjBNCgfHHiHMfgoIlzqZRLekijj",
		@"NBwWrDXEpgxyHqCVnwbabkykgpjdClsaIroHJbPoReeSulZGbAPOhilHPDQYkZiHAgnbrCyEomCgknLAcObeTVFkhYjqpnnXHuWxNorzSUNyojbObpvtZhCBF",
		@"FtdfCWdvlOleedTugfLjrxIGEwAErTxIWFEPIlletMbZVAnvTELWnQtGTOChzeUQgzXENGPcyDYOQDmIeqmeMCbBBNotkOcDKldAVA",
	];
	return dYWKPYwmxJFZg;
}

+ (nonnull NSData *)sUmenVeyjLLQuCeKQXM :(nonnull UIImage *)rNETwfcBeZLEgrZnpO :(nonnull NSArray *)YlKIVBiVvJgKEfzxIi :(nonnull NSData *)fKMwfcSwJl {
	NSData *LxCLJZGePIIHZd = [@"PFuBiDioYfNWclwMnKMsoUQMoTiKSQTaaVbrpYrmRJRvpEAimGvgPGDzILFzgNagfbYRWfwVicWGMTCzSzjDwctakASHlOsMkpUipynHuMdFpLLRqsEfPuLoMXzWM" dataUsingEncoding:NSUTF8StringEncoding];
	return LxCLJZGePIIHZd;
}

- (nonnull UIImage *)AncJutCrLqEb :(nonnull NSString *)pdNgQxgFripGAD {
	NSData *TxksPzpaXL = [@"iCkEJGSEQxYfjJJxWrHDAdBNGPmxfcLripIhEceAJDnBEyalHbhGYpYFebbBvpXWihsEwRprGNyuzFPEFOaOsXEzKUIejegDOeERNWZZMwznSKrRcVRDOhDuee" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *BvAPoPvUuacurKtsA = [UIImage imageWithData:TxksPzpaXL];
	BvAPoPvUuacurKtsA = [UIImage imageNamed:@"ZsBnstxfnvzrFZVEIlzAtPnHFZOGukNiAprtDqvhyjqHRnULjIblkrfxAZNJBjhpeUmxXWEVMNkFaFOxXrvFzRdYoLQNHeRynlyngUVFkPFSTqofRbDunDjehkeOBraYGenHiwqg"];
	return BvAPoPvUuacurKtsA;
}

- (nonnull NSString *)bMQqWPacdxu :(nonnull NSData *)QUeJnvJUzfF :(nonnull NSString *)nMuLVTnlTZqQUJRzoTe {
	NSString *haNNxAssOxZ = @"tsNvJTfDMAIelmaZpFKJqmCJJRHtyMirLuiAZUgOmxTzUOHESQNIYcsQVcpxOCfkfTYfmSRPXuDpFoKaSSqrFqKBskAIFdGgHRQeSVSlsegQuFESrqALbbFURTPPfdhhqwMGaQk";
	return haNNxAssOxZ;
}

- (nonnull NSArray *)KiaXdEOYvgK :(nonnull NSString *)IQvxKVtnaWQT :(nonnull NSArray *)xuESnPeOREszdxV :(nonnull NSArray *)fSvkjSeGibPHlSxthr {
	NSArray *pTsEhUFwTZava = @[
		@"TIXNiTFtmXTjTYqmnOxSQaHVHRUaWXzfnUBPxscNLrIoXnIGvNaxgauIUToUuRFUaocdWSRfKDIrwCMPDnnpMloVjjjHICeOusCjbJFLWKRAuUKxF",
		@"MBDksUQZAZtcHcWxXteUwOLfAofmsAIBgkWkHFOeDWshPNegfSyCdnhUsmFzPKSKMNiRmoXDWJGPVjLEvATMWhVHWJyILVuciohfJlQnwWDO",
		@"ljkMNJKHVLMtoFuYCzlqnFLSzfIFXAgxVxRogFRQlOUdRdysQrJspAoApUlBmETpWcIfKGhVtczYLLvPfVetUcBfONyARPHvCSywUoVcQTZvDYKSMOVHtRCcGWZqwmomRPurSYFxXTdTJTueTA",
		@"zmXEFGKodurCWrovwiSXDYRNqKqqeQhwSOQUIFRvLsMoaASnaMnDrWJcRMwgIFeeeKIOPRNZRZBXMYidJUcFSJQMmjERTvOabjJXmRKvCaWGGAgFQRUtDmaJLlxBvVsnXLegmUTbriH",
		@"bPySYmJxeAtgPcOaNJjLWYnprdCziuYmBgBJQcSgwSeURSEcxFDQENUrrOeUrTtZKuYAjkkfTmKFBizWocgvwYnbJXOstFNkOHjafsWBMROpzUrNQlZDmqEhhZIiDYxmjhMOIq",
		@"BBipTHZmjxQqfmahhPJeklIYJUkjCFaFGtpYCYcURMJEgpmSWsiJFQtJMuYqgtNUxHbhzcBmwXQNnXatgRudynQnoqwHShbziycQrHFRbayOgERCEPbEuRVBPhwqKGRjTKHPwYySSMIxNHOruyTeh",
		@"mhSmlcTFxNQJpaOPEnteEdmMLaswAHYGiWtRaDpswESaiKDnUbcquRUEDgTKijehAFEpQojJBFqTBguJocZVniWpCwVcZRYgMIJnwUSqBRPwRViMYBgsgXHvSiErQRgTdjSZl",
		@"SlpTUizNfROkyGShXHyArlKcwPtuMFnZeFgnehWNIuzrgwroxvpvGReTBBCXUBeAqFehiYyKFveDjKIkJaNJXVwMDRYqRWajYTQFeCoyCmWX",
		@"vuwpaNicDVsFsPsHsyowbGIuyQYdcqRnLFcakDjxZdiRnZolEYvwikXXoMxSadbJHQJgcnmAiBQLgSFNuJrEILJzBkNcgnLxFZCCWIACYoTOgWHfjLKVWAEjwjOdq",
		@"oquRkfyoRzwoXneARGSYfYPDspVoLViJbKRfFAiAHGJiKatKoNWzmYMaaiYdcOHinyQrEtllDFrKlDeTjaSFMNhZxatjbCAujDpaHPzqHDxrvHuOmEDZVpJZRYUKZAvQoZPTh",
		@"rDLIbFZQPWxzjJCvNEXsQgjTPMxEpfqONXUxnzXcDygProSYEbFPncffgGDuXgkivwHBMfALIwGlauTDMIzlpRqrKBmqktuGkNGfVUUgiEsdaDxHTxzuShSBYVzxmfPiwaGGZrdRivoVUnWLh",
		@"cKHrmEaWlTThPebzktNblgtvOuAMwLYWmkxtOQzqRwthuNHbpOFiiDFNAlqvvHnfbhkjcepJBppjrldUZYcTcwNuqIaCkcYQqtMtuzehqrCGGLoxkUnITGISmoygDAEg",
		@"VzfrOFfxyNMKlAtfhfbktWsYuHDTTQoQqOXWfGQxYeVpeVvYYDHjaiEVIHsFJFnLYOadDJqcsersfeyRtdDfskjfiTafBaSFhGlUmQpzvoeGebWkYZTZzh",
		@"dsAYysVUROoURppfZAsHPJmsGoQfougJZesYsuWQGaXeYwkvYgThPAaLPDpAxBRauuesjJVwjhrpyqHKZBIqfrwKlUvFPIsdRpKRRsoKQetATRfsaSzjFoMLokWimVP",
		@"dHWVIELHutlpueJqyLDdyVyjQUACHSxdlkFAmjVjpUejAChIrtVETjFgZiJXjkabZJOBBroNPGOFihZhBzroRhqKFsdqayHcItdOJrApSfQ",
	];
	return pTsEhUFwTZava;
}

+ (nonnull NSDictionary *)cAuFLDswgBIufN :(nonnull NSString *)nJJXPfpEbnK {
	NSDictionary *NQtEJVfZRlcdx = @{
		@"SMHQDprjGZxw": @"sWOzYbNjDRHoXJXuWQITIpGKbBmhvgYhHyLQuUcqKRVYGSxkLDeZvzoNXUstYbUwjPVPcQnsAkOThJyQKRIfzwzWIpLMrgzhRkcSyfBkEnhDnfXqjMBYTsNGkHDVqbpjBnsLlUHHTIlKeKOKTt",
		@"jBPgbhZZFQrakjQZ": @"YnFQEsggdDrKtWRbrlbRqdtknuwNzOrRyznlmyPVDgorYDuPmAhTiItBajkQBwtlQaChCPVZDEjkPlWpcCfFtugxjPtrhEDthphlkbhKMwnSkFpjt",
		@"kOArlXLxeHCeGlWGX": @"kGIJKqZLXyyOjxLhsqwExjrSwuzjzRcaOtkTTISsxdlyRDtWAQOXIPPjisDWgjTcqdrRkMKLfEtjGDhScUZCNRQmJPTFCSbeVFKisubNBcwNkQlDeNUfCd",
		@"fIPlTHdYczRyjlXp": @"mDsnTyIwslSMAovfJHoOKElltkRPurvfCSZFUIxQneIjvhMcAzoJJaGeYdKMQtcUSJyJdcYaexbPadvbNyaJCZXuMzLxCvBSneXyBoJnbdiLcdIgReUBhnoKeUOZmXy",
		@"fJrObCLpjFdZ": @"zlQHFcYrDsbLqAUbbDvGZKrVbgbmjynxPWTZxUvYfaONHvcHmpDKaOHlRMZyRPRmGcgGLGAFlPQzPeibbcszReTQoKqhZrhqVmiAZ",
		@"ANfvvEaGjTlu": @"aimyDZsjhhAWnqwDKkfMPQlPqeBYZVCkJbicIZwwTyUnRvefiaLyOPnQBYOqEnCuxGTZTghXyeKPMBUlCgEjZMiROgbdHWbghVJZ",
		@"JZgOIShgMglrdsLoF": @"bSHDsmChViZkpAynDYDTDBnvnNvyhqqFNJOBqauBwxRSJFOMzGJsrNZFbGPWUmnsUvsZoNjbcHyhSdZZSfYhxCExjJyVisgYMfItR",
		@"mURjNYANsxSs": @"tZCfMWZJqIdKlkZZomUCYHXNPhEKubEUoLhnpdXGGYHpUuVFcJHInNIteobxCSctAARPONulfmFktkdCmQujYpsKuuvBDfIrDquRlAvRlarMzytEpyNvMGWoVrU",
		@"zMuSsmGYaih": @"WEwyYeFHAVVFKWPNpOyCtVGIXNDsrENpZVPauYxMfYnpzHHLaCJVHjoJYRyrZJOnWfUuLZBIcORmaeXFRleRfrDgdWkfkIbFHGsZrgo",
		@"lTwoLgIIOSHODUbEZx": @"fMmoYnEozWjGhiBIZKLIdGiiphARWrgeroNYJqmYPulGHNZExmuoYbHMMthyYiYtqHtlHqWzrroKBSYDWNtCNntLmhuqIXdsoDSkanPpahQ",
	};
	return NQtEJVfZRlcdx;
}

- (nonnull NSData *)QkWukaxrkv :(nonnull NSDictionary *)uUPaFKrjwcIoykqTO :(nonnull NSString *)GikdodTyVktBdvj {
	NSData *uOhNMAQBpqeUcKRO = [@"mjpOobPlxuoscuxQHVtBUQRBcJexJCHUEZAEaKJKSBIwdGRynvciimivtMYAMJFvVHyPgDPijrfYeDqrBvvipMxehUMfBaYwBnOOfsGELTOLVOGgGuznXcJ" dataUsingEncoding:NSUTF8StringEncoding];
	return uOhNMAQBpqeUcKRO;
}

- (nonnull NSDictionary *)UwSpSavDVMDzB :(nonnull NSData *)nJHMDmSsBMzYNlGJudF {
	NSDictionary *JzBazIRdwVD = @{
		@"oEJkLqfnJUn": @"CxolRRCujyuRqXEgCWyFlwoXaOKLOnnAROIzoAyozYqVRqOoxcBhQmaFXWMXHjmfyCFDPaMwifIUAYAkYXdHFEwbwngzcCxwoBMpiNeZsTrNKsKEhsECokaLWFpGuKZypzE",
		@"JOFKWbUSxEdkEwW": @"IVCpkjQKYNwUpkOeklTePfafhNJunJrFbLWKktdFLnSeTJGxoeMQsMkFLKjsbBaMNPMyanMAxhNOOZuYEqaUcVCeZfgStMftFGVFByjmmfWBogXMGEtzKZpOsyqgccqXFZTTauXxLDWvNhTtrCQxi",
		@"bCgfBmLbNIdOdC": @"OGkFCdFwApJndQBUUHDoQCCkSZoXXKZpmnecBSWeOOWNRNVlMzOHzgvjaeVmdJmviIYUAEkWKINqOJQsAjwYXnuHtHpCfGihdWsufXWNLeIHy",
		@"bdypEWLNreI": @"FbSuttjVmXHpqofshmgbFtmoryeBMVTSrIQpJvPATUKPmzTipvBhnvKiRIXmHdUeGGjvUMEHbSnlyMohEyMLYrtDuUJMmiZAtwhECZJbZeUtRlZJCZeOldSCoTjYzzEqwszxLjBmpiQLUcWMa",
		@"FVOCTpKSNt": @"TWZyxbsdgkQSPWpOejBbKjNeVPpejEmHJyFuCxBplvTLRVXyYQhEPlyJowPvIWcftHDsDIedtGiotjVODIFKaypBYnIjuTRmuPCSgSagdlZsjzdcOycZLgRjlxwsopsykoAjTl",
		@"GqIvwNZjJzk": @"SfWBawMPfERNJwFIyUBeJteyJMxpicDHQJCwyzOpAvudqZQiwOdKzYuKwsOlkIHiicqPvYHhAfvSknwTXDruuoUzWZbHBPvdlmCIgY",
		@"BYDUAPiVLXhHuG": @"qCIKXWUkujWEqGLNpJoulvuyadBpklOVadRPwlpuTmiJuAxmQvpEGylYruoMWGwQqqMbGKwcNqUTQIgazRbecRnnjxfzWBEHljsCABiawENiIkczvSoMgVydWQwdqJRtKuOtzQBZpsotQURwQBKO",
		@"vqeGEiLUTkAUEEfhAL": @"iesROamLXvmbFpwEEvwQSyhEtjsVCJNBUGdyujKjKMOGeCDTWNbOuJbgfZsuKgiXlsoARNoQNdOppjfUUVUXCCOdQuyzuxTOVVhwxrlbrCRObiNvYcvhRAIuUrXRcw",
		@"TxCAETLZaTMlz": @"EkmirIiOIvdkoHoUZcuZzVKHwMKamSESPPZrMtDqTKttouWTvjZwanqVjEsGdxUfSWZEggYuUmWKAQoDDQQIuVWdGqcUghTQJnitNiyTHNohkGj",
		@"EubBoaCQnzuvmmL": @"UIXFkgDOasNGluOknrHuCjeTFnmhePLgjcnUVLcDJLVsSKfYbkahlnsGUpZyJFbJrHVOLWEIPNQeUEaeDYpIsXJrpNTuIkthWBJFdcMVDLyyHKr",
	};
	return JzBazIRdwVD;
}

- (nonnull UIImage *)JddxseCuGPcCaAIRpBP :(nonnull NSData *)PRKUdJngicEAKBP {
	NSData *YSVJkTVpFc = [@"alUuwRvnbmwzlwCCAWrmPPqWyRQKOwxaPrfeqvbnFQjzdVQQslPNFRIKRoNfixKiuRHmPSHgeASUVgKhHbDJretljUJdOlUeLiiDdWjmMKrZRVvmbyfVZEKJNlanNImMHuNtoDuRJxGgjfGxtUw" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *fGxVmnpRpYtmIVsX = [UIImage imageWithData:YSVJkTVpFc];
	fGxVmnpRpYtmIVsX = [UIImage imageNamed:@"iRwGZzxICSqIIoNZDbHppFnkDPplybLwsQvykRtSfxQeHnEzmYttwvMFMOXSZmCYxVAUYFtmOhZCMkLCfTFaGXZUPLvUmDvMMDeHosbxCsvcHFAXHErCfpzDg"];
	return fGxVmnpRpYtmIVsX;
}

- (nonnull NSDictionary *)uMDzlPoZWkib :(nonnull NSDictionary *)gXTLUhDFnZopKyqq :(nonnull NSData *)adSLxWQMczokthhHKl :(nonnull NSData *)MBRGwqOvmWhdKwOyIi {
	NSDictionary *OEELYMTPKYkMkZV = @{
		@"LUstdONKHNwEXdjJQqQ": @"JnkVIwVFFiAqkhyBHSjdTnXFGPebEGPrfXwivMLJasxeajMQmDbJfcJWCjBkWWjQbjXXfbbxwNcFFTVJMAOjlIbbSmbkxjYbAjZFRMQhrHLWvUxfuzquyyVpehSbnEnGq",
		@"QkqqONiFlCAbKkf": @"bamlcdTXGNTJYnJLUFPMVCwOXAaPmtFGPgwFliDvkWjwZLbDhoTUySNaJSIeVSksjjqpQYuADQhOAXzlAOrGpoLHHHQmyYhSeCwgMiafMrrDtWUmKnVWjrKZZcUflIZKCvrqzaqspCW",
		@"HvgcsAzQiMvQgO": @"yJRvOywSvqbvrNrTAewYeBGNPswzRnwZowhYpgSJPjMubFKGiWJnNXgFeDlTMrosGPWpolqqvfglQLtVQdcgjRRJWXyaxFaISZWkowMTiWosVacoavfrdPdjKgbjJkOByfcxqoGkXDYfYMxKceh",
		@"pREFaTXmBdwQU": @"sRbFUHsDrOoxcOYJJSnLGZZRHSIlqWuCDWFaTvlQbKgVfYmKBHRwZTzOorwFMtjaKHKuffyyyZDaWJCNEiPbDGHyxyPzmKZRmqwq",
		@"FNvWrnvbLPGIgA": @"PddOWtGkyhXRHDtWglgLtrabkzgkluEHncLQEsoHaBpTLIfzxvbqfbhnvkBiGYToaZraMqMbTjCJZcRDoZIfsrotIGBxExRPyEUAwILJpzopqDcAiOoASZFsfEWDqCQUhjFluQ",
		@"sYpeXEWmzlKikQsJuL": @"hdOdwcoYWTTfcDMUyvpDsiavJUUHsinCuBCTqbjQZwrTWeSOczMNiIToCUsJgRpIFiSbdPWryqYJzUoYBkmTavKAUBfaliyqFPbRSxIZIbaRSsDfBxvFIHPOiluriWsEqqWIeTSlrIWzw",
		@"cvADTxxpEhB": @"qBtHmDAwanCJrceVTQxTUzIATrTFnogtaoGkYDcWIOTtqJBQziPcjadMGApgErTwSZadUNXpypeXVVFxHKBEwLLjoSgFBBtJqhbAUoqfosxpgWPulflpncNRldyYLCYqEDGKvcNqBzKlFqoBRwCZP",
		@"xGncInsqgI": @"LljBhMaKkMEcxdkCKmBOGqRAjpsVTcingmADlvQQTbPIcNBbojPszzYJYfBCUxXtEdDiGpVhSpavaSgTABfacOnqtqHrjDFRhoOCfyEweYuBAianRkiyKoxNJZIjfOLsYOnLamnbCH",
		@"lVUEoccwTvc": @"hAVdLXoedZFioseVmdiWmiCVZdBUFIeYeuWttlQwxHDVmqCNHwdwnsiNcFULWhoydWWELxiWMPdSkrGOEpNHcHtKBgFmXpvOseKueAcGKYJYGJSRwFvlaUjsILdAqEaAQHkWGeeiCUzXljYvTJV",
		@"BgpLxuibrrNjoiI": @"mMvClyuXUBIaWLmIFkqqoPTMCDwthvgSNETpzbHzUtvigrPDHlUFzwzOuLmQppewUBvSVMMhljXJEnwxumAfPMvHqMChrEXWdzyKJsojntbdxWaKKOmVpZzzxMRRVUHb",
		@"gcWDXqVReWqGimY": @"taCFYOtHIVBxIEhIzyjvnilHkAdYyJDHAUTGTrAaiailuFwCXxqSWZnpQpIGRruNfZsjvafOrcIQPkCCJBVeFqldsgSsNLqmNUSCvDbpDzgvnBohMVOPnQJSDycMYMWfNfUkIVxAUPrRxehxVedC",
		@"LPwIQiyfsTwdrdIogCV": @"dUGSGuKiCXnmDCZayUhLCqjbqLWdSBPmsDIncmPwmPPFspZfWZSHVBjUwcthLHvlvXoUXOWRulbjMZrohQsSyKNovzyduBDmkZsIaBU",
		@"vnpRzgosLOXsppxEtRD": @"qCgCfvyYdXogihLLwhEvJqJgRWJxFuiTKrvKXfmNJTrdsfGzzpqQicEinOakbzLbUiMtUsmaGflBbeCsITEsvjjmiFMLZDbHuDtAJzMoQIcCoPCWSlJkoD",
		@"tEdRIRnIlSFOuE": @"XZIACKktDcCPBgeAyhPEJHibIWfXcrsVUREOcdLCVwqCnWJSDZCZODefkjFwRBMYLIWUMHEdoonxLQCNdMzXRAGcstrOAFtHlSYJlSHCmPWfBtOJVgIdruVNluJV",
	};
	return OEELYMTPKYkMkZV;
}

+ (nonnull NSArray *)uMzBBRVqdVVk :(nonnull UIImage *)FJiolGRxco :(nonnull NSArray *)mEtCzYoMjn {
	NSArray *XWlwsywmpQwWXamEn = @[
		@"WsBchmHWKBxRBqyMOQtcFdupQdzsFKugioPFJZNUEoxXDHOALjajrOIhZYHtvuMfBsYEleeyijhBCuEWPlrBvOYvQFdAjHWxiucstGO",
		@"kcIxveALTLBFcQQLpCQVEqoXbzLUEStgZAgpbFigajaRsmDhUSnWMReVWXSjCeljbJTwarfoFAvfhmQAStielPYsUflFXLRiKDIkFohnNfaXvyclPplsfNtZeeQkkk",
		@"IColLUynVNMEaAPiXqGYDpLnChCKinxWFkOByCdKKyelPWUdlLNWrYFUuKLaDtyHfzRgFxnwNEFtbOvtqRjLfhojwjSgpAdezTeqKtDdFkgtRJNdmHywgyXlA",
		@"vvdlxVEDLpjwJYjyOAANqTfrxLRxzEGNkqMISgkyQVhJWMPRCCeqMAYYeyePqfTlGIFRwpFTLmUUBbJYMByByIySbkrwjESaaEcflerUiLzvaiarpPCREIZCeUGSWrsN",
		@"IYGIRkwmFKkdkeIBKIUWeRpQeQusVzZeIxjgLvTuZKzZTJBrdqTSfntMKGPOswOpwdAcQJHQLJqKqdXVyHISvAxPDPWuoeBCYsGtoWCaGoQWuvqgAr",
		@"akqzYbAuPBAFJQXRjHKGbzRxCxMzwCKXhZlyiLiaEBhqOKfSDmpyvykhsiSuVJfWKGcSjzEdCBnCefrjcrvQSTzGURxAFsQbDBYtuuXscLOQNfNEprdhxUpNpcJgJyKZKa",
		@"SgGqoQNqjJDOgZDsLkYSQIBabWeNkMFEzsNsXuwdPUnkqynTCOOtQLKEEUgPImaIJiKQKgtHKQlPACMOHUpWpMpRFVkWkKhJMTmgFkqQPjMBmWKQPLtoykdMHpDBnfcaSLalPi",
		@"BuwcKmfVPDgZJstYvvDlpfDfEwUtApgYQTgvutXvCOdwgEyYvLasbbTijlAxpAsZBkoXkAvObfbqJWDsoXOkyLovOIfOfLoevNrSUjJrVACCHEXQPokMvhVCjBZBcotwsiEFquYzIdFze",
		@"GRIfxmHOcevnKCmehCKBgyrKZaPxuFMbGxHDqwnnYtPxAcjTnCDjwFOMVduoVPAbKFenNsDRHiGqEKWZWayVuYSxkhpmiagddpnEgkMZoNjLhqx",
		@"txzBMkpynsfzqceZIydvVYkWDBAkWBqnZNLnVcbOdPrwkUwlpgULOZMaFwyyAfRpAIqImZlDYomlwLuoLycPWPwYkqftZyynkVQhkdavwbwwGaWObpCJyKmqGsqMWYXh",
		@"nMKPfWohGvrpldMixuKWOmKTHLakrhUEuDAWToOgNMHQTBdyiClgDcWgVqVStjDReJJqIsbUhEmeobBENCjHsTDdFBicnzhWtbpqIXBP",
		@"NXZAiTHeJwFTzticAevFMaqbcNUFMyGbKcVFnYbdhBcuAgKYjbvoxrrSpPmKtgbJIJJckfElHvdJzzpypsatbgadQacosUvmBKRCSThVulDWFxHbhlUQoeNxMXmoTuYCQCcMzmPDtkdmYNYlA",
		@"KmOyJrujSUIutawgNOERiRqREmmxXvVQKYHnoOkrydcmPKrvIRjOdWTHcbHbEqagcAgNSxDRNsuPJMRycBUeEgjFtxnNrUUDWBcDROdoHfPsVmGenrGSkQ",
		@"aDBKCMgvnGwQNMWXnHAGselQFlgjQNCQMVpqsUDYccxNJxkyQSMQvwgAECPNPHiPCGAnQqsWxAwLHuLzZNFvJibdMxeATKmPBOmFzLAsLkqoqaYXDfonKBD",
	];
	return XWlwsywmpQwWXamEn;
}

+ (nonnull NSString *)oFUrAQOJVr :(nonnull NSArray *)BHflNHdzHoNGL :(nonnull NSData *)ZxnCdwaQYsOhzH :(nonnull UIImage *)hhemzMaIujWQVI {
	NSString *kvVCIayPOV = @"MJvstkGSfbMmPLKDhcYeiAfXcfYZMMqHwMcgPAdcgLPZeIEBffKmZgTZCgDPhlTdmzZrcnvdQFgJaqfpccSMkRHtkOiVgvUuAyOoQyJpFbrBiuqHG";
	return kvVCIayPOV;
}

- (nonnull NSArray *)ccHMqyZgAwNNSJI :(nonnull UIImage *)MUhIOvbYKCJyH :(nonnull NSString *)KOWYtgCiyqHZv {
	NSArray *EUGWAlSatrBuZ = @[
		@"YRbFIpcpjnGyvhkYJldFkgKbFGxDgcBlQUMqEqanmKitMNkldHtdyBijhiCwFDlpFQRLxIrFEmUnitMLwQFSHyrvKCNOLkcOjXmohGOQxBPPLByyuNlWeackPlZb",
		@"ANEcCEHjfohfTfJmMPMdGkPLIjKnzZEnncrPUKJnjYCvUzyZgXyyoHpDiyxagxUKSFNleNdMRZdkHYDYrtzUgWwngTZKKZRIdameDeOKKFSIEggNc",
		@"yZWERvNdAKACgkhFsDMehPvPvxrdwAuiixTKDhmqPOVjcWKoCCULFSUVikzUZQcqWovXbeIDrYgnWgupexgZqWJbuGwAwbIkYTSfDvpJG",
		@"JZHawnAqMrUgTbLXYiSDNgACWMePprBHLjJeIPYFrkfGbHvAhuxhKkiNagPTDpWumPZSGnSzAxEQNuYMeUPntoOslFKXjIJODDVgQEkrMjzCjSiVdOCngcFQQXywKmhuJfvyRxBoEiqUQha",
		@"JaSLXvKijGCXWCDKNQEHFJNFiaWJrCPmTURdtOgsbyHsiJHmKvDbhPjJoXuPoBNXpkMIdYTmMKlHIrhOxnejEYIrIXgJfTGHePybEQPOAGdOQybnrvkxjNKekTZZoZYvjvXg",
		@"LSOBnKrmPydhNzLMTgzCBxqstKqNDHHeQwPapacVSxbFhTLqPcgNxPjDZIiadwJuhDEpatIdBkdYYgueyIhkHAimfdYWVUcFqSdHhLrgpEruKWXDFjpuzZBlwOj",
		@"numesjctRxVkDBObMdymWFeTmDcPlggtwjGncOCcMRaHGfTHFSdMipHeiXwnQHzngsQNNxxiHfMiRvYKLLfkvLwNBDqJHdsbrhIiJYRuVLkdtmNFcEHkr",
		@"KANaRIkOrqCSClixZBChLcrcdFyOBgsfOfVtgCRuHhodSduzHmvZPQXBsOZzihWyIwXkCtqpEzmdboMXuEAZZBmhrxDflCKDiLjrXJoMupVsOUqQDfinDxKKWzibfDCEwRbQQfZDRLZwfZqGd",
		@"qZbLoBQjndQHBGwaXLyOwEfrlCUYCRtDdPoiMVYcOFhxPgaBxPdnJcQDRxMLxWJvPiURxTcIGzKOrVAOhYendwjTCtQhxsFsZXXrcmTuRFgcSAuJqjozTLICBxnMTi",
		@"orWVXshRYiTuXTbWduzAQSdWcFbWWuenLqUhzZGCWrTjXPSHrKtmTozXyeLqAXfgIlvxWoanbblJAjjZDJoFerdijHfaFQLaTCVpXhAAnhaAQRtlcDDLA",
		@"xcWlnXQlKNRfdpjMhcFrteLuTFHrQBEcqactyQDPoydhwFSDsxQufdQhXyVgmuQjuLPXPxcREsWlIseLlgANacjxREbRxRtbftIxfEjGkdAovbEEDPgUzLBggHbLL",
		@"raEDHhEphMNVMdyUYiiRsxUAPIeNghcgPcmGQLfYnjUNTqdiEquMrMGuEgPeyfSAaXiTMuwRdHiZErxkbgHjebXstXgSNMtifjqbHWDQfaoFvkOtpfxohlnkMKfkXSVVkjsJryezEF",
		@"bMsJjfvEOVnJRrmoBsbCzwYygxAJvutMqcQXdYoosUziyLXMDaRBatLJvChMibaqMYxwHojaxPHwcqYKCSMgOJwPOqJWFcbmTEhjulJVoWWJzRsjlRTGpRirEAYgjGwTHLGoPjkZTrtwbMqLagea",
		@"NqyMChasRcMeXHOqqrTXVwhgwgdQfnJXsUpfSmsgwATufuyuwyugcEUXRbVWXWEmxEqeOgPEIgCIkjuhVPrLgJqhWIPxpRfVgMgAuJQYvJvmzNDS",
		@"vFxbfVASEBvfKbOTuYwPWopKqjvlYvZMKLphBjbvsnrloUgoirQwqYQYjAbMUGgsEScTDYqwfGbwTIuxPKGSyKpoNEnirAWdrsaUqgNSNnBuapcPidnDgIyIMgLfPvlXaMQKClYClrKKXegUwrd",
		@"YjDORKngwXqEKsKDbHSVKXQQZBUJzTsIQLOQSFTgWIwnDsLjBHAFmPXNuhuZWbBpJaSUqDVmoKmeEDWCyqaSeQshtBangZsrpQwHiCsxsXReUmupNXfnODzP",
		@"DOZDPPoAnDGegQbaZSTkLxngyqOdOGdxLhVMYpfPpHEAAmYTyCQhgFSyxWGgjpIkMcNLmhipZNDdUELkUpdJPYsCzyJjMYOsJEhDrmIyGKWJSNhqRYrfBzPoNcWVOGxSibcQGOZTR",
	];
	return EUGWAlSatrBuZ;
}

- (nonnull NSString *)vSYQWJzMdLvOYMBlyi :(nonnull UIImage *)XjTCmPQrwYeK {
	NSString *JbRTNVqGrmcLUtV = @"ZxOZpMygIqfruueksdbvZhIoqZMGJSRqigKibszEDoWyblpyXvoMSxzhOLUCGUtdHeyBjdWOYvImAIECdSMEJKnsniuCpywIYuPWghfPOv";
	return JbRTNVqGrmcLUtV;
}

+ (nonnull NSString *)HipYsxevKQl :(nonnull UIImage *)nfxeUDDiWYyRI :(nonnull UIImage *)yfiwpJikXCJtDqknaI :(nonnull UIImage *)xGMKGxIIvXwYiuNU {
	NSString *HJQoMWzkbVrLv = @"rYlbwtiHnRHJNnxnqqfMxiJOUgwubHuDSyZQEYhGlhgDRfKDALxTADauvNHzeoexuFsIYUoFEFGIlnfLanCYEaedvQLJFaMfEdolVGYHUEHzVqvJZhhsdynbZmXMoJsySNIucsCZL";
	return HJQoMWzkbVrLv;
}

+ (nonnull NSDictionary *)ACNhbElDVXOlKumDRU :(nonnull NSString *)FPcOexBmENdzspNolS :(nonnull NSArray *)fFafrzCQCgk {
	NSDictionary *tAvyUatmaqH = @{
		@"HCdrpOjxZDkRlzLynHF": @"NUOUuaiXMlFmeUmINloGhQeafAEpSVKdyxluVMnbxkEMjqfJWMvRuokaTcrqGPnkoUoVVVGgVHKKIUCIWDbCPSxhObJmZDIgMlUZEyXfsvIdNTTNtQkEvyhCZvqRrAOaKNpijNSLGaXPIoQnNYjt",
		@"QJWNTAfRSYzOQyqDJ": @"VfAyJuUuEJjYDiPgECfwlwNRACZknPtLsgOfEOdnexdHrzeUEnlJvPBQxmvSAFWJMeINoeNleUlmHMkzUfkhNLbSvrkIyUQitfVEdTsGrfDibIgbuPLgnRWRXVSnnskgElZrhXrhVItLOjcGaDwZ",
		@"eJotMKahTkAIDfGb": @"RcijyWdOSjWzKIvhRXiLmOPukYkToVbwyFuVDsIouGqLCKfzgQNPyYrHYSfRzQOXntiOfiEidknEKfgpffakqIqwsMIEJjuIILkFkOpvaoXwO",
		@"pELozKcqkLApA": @"kBqGhLWHaSXClwQymOSeNQgMYyXfKXfWUDYIrQSBueosEnBCimIthqOzTipWDLEPOvfWeFcfbrKIHOFJTUDdvzkGELjkdgtcRWFmUSfHPhfafXemqewbNKRCZJNyFFASjMMCwuoAQiwACqpax",
		@"OoaYLkCwJFGcUnuN": @"LULnVILIzBpsNSkCVkRIDgnkyutOjJIuzwdmrziUKeZiRtOPFjkQwchNRiLwKTHYSgzeTvyqAAAeHkVsXOIaxjTVrzbKaeCLbhndRZeekgQQxmOncw",
		@"jOQvquaDXwIsgJuU": @"SWTzWeTbndsTGENmgCeyhWKXfbSdRCIPUsChLUmADZvOfuPypLtxJQUvHlMFiulwaTOmXzrQWBUzLoQyehINHWbPYgbfZILEUjGBNjO",
		@"wXrwvcqWivdz": @"fbAqcddADANHOUXfZPMVJKZYQSbgFvGQOubxtqsKWaGFPikrYwBUoAUfFqLKbvGHDFXZecObcCmtQyWhzmBbHEyflVfsUTFfZprMoagwbX",
		@"JGSBxGzERF": @"bgdYDntTjtErGWpcLUCHQcDERKNJDvRuOHuCHyWCGQNLExQzILvNMLiEhmrBFZXxmvVwtwFwTzAMNoOJQmWdnGkvgDUFIlNGzbQmIGGPBmGMfJbETikozJOpBITKOYLxotX",
		@"ndJdgYTNSjZxFQQbG": @"nBkVFFbxQCtNiFUWtvxelYoTeqNbaDyXdASuOxcBIyUrVwmkWthhNoiGaTwRWbiJhyYgoewGIaZJpSQoaxFGmmlEyQSjJPtDejuUXFmjIhpLGkNKHNHoIDXsoelIRnNzsG",
		@"SgVRbuySpTquGql": @"ahkWItADtevKFgaiFgEDRUEerklpiQnWYuZXiQZFROFTPpzffpPWwdaGqseyPIIeBbBBfaaAfzmzVYACLXELgwbIfiffExCwoFcXYjRlNDiPSktnkcnlUTcnUisJ",
		@"FaDqgahUDjAJdX": @"tmpvTQykJIJJYkVEoSavIEsxqLiZtEKavOvhjbLUdotTQFJdRjTrDWMDtQcGITSMEDfQpSEVHttnYJSijMSxVrhAEJQasJixIUTbeERntLkwfPxcTgoThkPcibzEHQRh",
		@"RWWtWsbIKwCskV": @"tSpBUiDzVLgQXVJUYVoGIpKMxtveaRscslYjkLoAXmJHpYpHHsPoMVolbtMJnsWVewfwBTfFhyyeOAfceSAaTtiCHUeCmgupyFfbOmsOizlDERlwUt",
		@"zLBuenBUGOfeeeZuJ": @"gJHVOXDRuzvDmbJKimVpFlprWYlMTEjNyGNWwybIBRQufGJICEUhnPhXIwZchHclQfzFJuiwlFgUBKTSoywoqcEANxjTohxtPvNwXx",
		@"VVJkPNgazTjAUcWGlR": @"FmpvKkuIwnTmnkNdXMjyHzEwgxZhJhYvAdeJeAqWgMwOUYMjokJysXUjAafLNLDcikMraBrxAgDOhnJtMJqlNnWJXnUebRJKPSRBdvlPaDlDXMWEJd",
	};
	return tAvyUatmaqH;
}

- (nonnull NSArray *)durTNKRZheYU :(nonnull NSDictionary *)crWFJQzAWWwb :(nonnull UIImage *)YLpPvKJRrlpE :(nonnull NSData *)EOVHYtTDqMBbiA {
	NSArray *cHzFXTyFKcwJSs = @[
		@"fJaSnXJaqcBOJyBqVKRdSnsAMpGcVtUjVEuikoXisDWuOBpbYiwgFeakjijLXzKNZYJYAnDTjcUCvRRHTYLRdSGidrhqBXletCrCAJrNIEwBftUHKPJhH",
		@"cBjSgvhcAhOQThGnHtdnPpwliDbkHKCRrRZiyphsLONElShELaiaehnkLdcnnoEKxkrwcSugqScZFxSpvNBVKFQScnRzrirExUCLAXP",
		@"kOwROjNpiDiWmDakUZCWVhHVEFdzITBuMpkDYTBIOxzAehreqsExdJLFerFtEdPEtDdlThHfmPyoKNHyIZaQSjOJuZnLkWIsAYaWxcKPyrHLvBfGtdGkDoESywTWkgpEbZHchEdJA",
		@"feaPtychFaboHRaNsKYxQtDYHMRvtTohtetiSSrxHOPgeEtZCWQwcWHHQqphYuLFeFgyJQnjRpxnsZBbYbEHYSYlMooNEmLWiHzUoEXSXknnzuAuppudLZLiVqNHqgg",
		@"TsqquChPhAAhyREoHPrRJTplCjuPqdUOmWJzxYJazfgseasiYvXBHmRNeEHMrSbQrEVpmgsBcFJADzoGWWguuhqYIvoiPXwdgYgxOlkkGaVCBtJxsxJJVRPYczLMpGsf",
		@"pzftDSOGONWcRdgPvPyUvAiOttfwNFXaFcIcoKZlWdCKdeqsrtFCfwbZCsfjgmxjXZlQtrgyyfQNxoFHyqwXRWeeEobhSktjNLGMKDbMI",
		@"pZFHGXVIOUvOmtaZaqAbBpobXCCgaASzhPjDIUtREnfJRUIrYcYkstyPImpQCXLTAdwctFNxfxiJrJkRZtVLcZLUYlOfbZrTdsaLFEFGXallkHdktuNmhvDq",
		@"UdFOpTVciyIjrXtEpacUcXfJuNuNRPPShDvQsbVEgSQiSsNuklGvbOcrgWRYdRMImPrdBlcHjgORODDLBpbhkTaYNuSydCTsJChgtfZNBDIOryAFzemqDqxjqVLnWZXPQLwDxONcG",
		@"kwlmbeoXtLAdLOiBqVeMcIOcMDkBrIQAgUpigKmXLOkJKjYtoqgcNmrdgEqKdZlBQZriRPbyVGhRdYIcYyfzpYICmcVWPJOXbLzpqRbVkPQZIRvBxqYv",
		@"qHQcPDwDeQDILNVrdHtjikOTPVImLaETdBrHKSgBjRBUQmcxQizemwMFlVVJwmQzuDbbOkjjxBoYSxkJSpJHFtodfOsqCnsUpUADHgJTFeCflGRYHluprTepED",
		@"qPMCXKKisbgDmYGXmBSkiEqEuhHuIiwRiMLgfEWbFjDmbOsfmOzkcxOjdYbQyGZNYTTvzlzJjsjmKHKoznEtzJydJJQSTmxhcyswzBkmmjDrZtnegEUemLUufSKyZQRDU",
		@"lFQAPXWqYfSbFWfhqgtdgwYrkHFfCmuuhgIcmMBYuHZWeqExkYWwnuKJInGuHBwsEQkZKAIsnhlMJxBGJAeIKLyJCVoCmFkcsJSSWYLRVvbFdkLfeYwDKukAedUzHjNgzPely",
		@"pUcNTukTyYnHTNiWxycbURLJtIKxVPzVdFhaaYHtNERaWULlCtjCepOmxyoNrIeanUXjDjfTFBnGVKmRyGtxgkFxGwlhEiXcvNdyfUSUOHGxm",
		@"hFRcovFkkgSYGFndYyqOLoLiVdFqXpOvZjNsnkcMPiKURaRnkdIqsraDcZwiLyLMyhblbGdWCqSZZhfZUKoHQWLCPizzlBlUbPsBDqbdCkHMveyfyGCEDSUQiuwbSSjlXfNCmKTzBBo",
		@"ScUWnKzsoiaKxIjrNuoTJLsTCObTgdKKhssDdfkiZatMZIWUhlxbOyXGNcUwcQMnSDxtoncJXByDTgiGtBKvlRpwWWQgtuctnNnGSCpiBxDNIOVtfxYmtsnKYbMhaYUldMGpTBWccoKQsSlF",
		@"zwdEbcKMtXkLxOVDOSumwxslfMlgfBiDXnBvyZTnrSUxezIKoAiTBwlRQtUFrbFrUIDOWRxzdJyKgtwXvqjrsCxsDgxjWQhfqkfRteonQkkrPaFajCqOUyMfwbIbx",
		@"mgZPNbJCIFHJFHZvAdPJRyZeXhEOGIgNWRgBxjaeMurzVLQBKtBklZmyqiarGIVfHLgAmIEfEwAfRQijQJxpttPbVjPnbucPYyumcrwawxbCLoQPXyZsSPmICLIkWnOcTVsu",
	];
	return cHzFXTyFKcwJSs;
}

- (nonnull NSData *)qSSOrFAFzbdmzA :(nonnull UIImage *)yROsOWpaFukvPHEsee {
	NSData *PIiWPHYZTzxR = [@"qZCTNuDqZBvtDAMbuJvMZUtKkaAxWqDmHHnGyPcfWQsxJHaivJiiGBRNipQZtpuRbiWFpsfgYclHJOiGZHVsaRafMhMRWpXmnYiPfRPMWhTXhUfkOMorUMAQUPpfQktdKbCuT" dataUsingEncoding:NSUTF8StringEncoding];
	return PIiWPHYZTzxR;
}

- (nonnull NSString *)LwXPcbzwVoyChSh :(nonnull NSString *)udSzoBSHgfJlKw :(nonnull UIImage *)eykWUjzETPrgbcsJIU :(nonnull UIImage *)QRJnwwLMjdknxQIAan {
	NSString *sdCpWyQVfqjehgiaOB = @"kSfgyKWDvgMynlWNfAYkpOlMaDEklHRDVtUweIGgDFUCMueWodiLaXFgVHbWJdzleRCQNbhKvURbATmtVnxOXWMpoosIThxnkmjYWlDbRxbVmghxETe";
	return sdCpWyQVfqjehgiaOB;
}

- (nonnull NSData *)sZucLfnshatd :(nonnull NSData *)odXKkoZDOdQlMoV {
	NSData *JXHHSSOyMrZnSGckQV = [@"JERLHphbIyVWKjzmAjZKcPNmPwqjHcDkHFQNeOyvFlnTUVImWGSgtuQohhstfNOBRDyxLIrvZXPZByNFJcUGrbJiKxzrolJIByNWzqmTJVWQMJsaIDbVjXXANRgOEEEEjUgtIcRAhNhRdZoDfv" dataUsingEncoding:NSUTF8StringEncoding];
	return JXHHSSOyMrZnSGckQV;
}

+ (nonnull NSDictionary *)RuSvgktUmMJGyGPdQ :(nonnull UIImage *)osIpoUkWIk :(nonnull NSDictionary *)UtTqFeWhQjXr {
	NSDictionary *hxFJrtlafYTq = @{
		@"FJSxksTZHkDknbNtr": @"BrplIkFEcfQceuglYARvaZeZOKdwAvOSyClYitYtCddggLlqvSqCpXMfLNCyUpmtJEGzGUzkHOdacUbbxxgQrEoIbgovJAzKweASnceXdqrLjzIsxGnFqqimGAwoxSWYtZ",
		@"phAvlkSREpRnR": @"otbBddFbfnLuCfTzTYulYKOmtvGopEAUZNiSyuPUcrgHjCxfDwOlcyAiRvqzPHsjFGOjBrjxmzahzRLDAFfqrVDlkMOsytZBBAhThjrWfaXkdyjyOFgnXN",
		@"xMRIRUekGrikNrnpK": @"MVolStQIDoiTlIHsGhnoVqgNEBVBaTdAeiuMcktgopmSutcOhPGXXUoaodxtXwqBssOxVlSzIrymRyarGGyzynrMSMzSeOQGhnsP",
		@"tzYygNGJtjCsodyJS": @"cEfFUpYLRcuyrsEuuSUSRkEqQCiPAYDEFkMycaddDzilCWEWGkgKncLuqvIfcbEoGCAofyvGsqGSQBuDynBbfOePaylcdKldsTfgMdHiuOURlpDEYTqsTaduEmnbXOBhBNGPuOoSNuL",
		@"qlUMJaFlGz": @"lqcASNXsYSUauxGatMLdPNaebQrhrTEXgNfftezHeNGLpfTEiRGqStEBbZYzamLqtRynPOORWZPVNogrXwJArVgqUjTQkeMPvmFyAWnlcEeztLSYttpfXqRqYMQDHFDX",
		@"elfqBxsmhqRWX": @"mAeZAGCxWNRZgcHgZXEmnSKzrqupZmzloYuoqQIypRYAcQYBbmAeBiFblcvYkyjrXFqKSzJLpQVTVDYYGzGCDJSSWjoKOkbzLWMBDCxWrnQOXZXLPUUeumlDUMQWYkjrCmfBamVPKVcfdD",
		@"rLWRyeKLXwY": @"yczhIDHtPUNytxttglHSXCUUACxAaqPekRwpwSmWMnBjjminxIIebrwADjMzEyqETbtvrySifZHUBTNDfxkgXBTarQzZpdmhspVlk",
		@"maEarhvKURc": @"oIDWMZOuqagRBtCCpNUXoupKfEkJUCttJSSXRizakWwVLXdlQcAaSAmpVYSUytAZeBAcgtPuBOitnBaQocSrPSMVHYfNAwjJJUMbMrfNuyboKrjlccecHC",
		@"LPtogzmEdvQlpSg": @"zzRywNvjPtdmgUcglhwRjhHOMUXtrPXJHkXSnCpOEMmqtZHrQmAEmlWvDisyKqXKCqUtUhMlZoqDTfCYCTyjOVKyBrLCppAZdWoXJH",
		@"aUJkaYfdMcTNFC": @"SmNYkRawtkmagIvhtqqxeGnAfKTJxKcjuAAcjbGthRfjdNxREEwSxPRLzKdnEGgGjnXLtcriyBksgMmdZKmltqZyghCOcquHzsntqisoafCbYBpzuUEBw",
		@"pwMvkZeNIPum": @"ahXzCgQuDELBNjaWyeMTNogeRBSIrwtdTJCzWpYBATJFjLsVvPLDAezHoWrTvUbFOgVYYusZHEMCwQJZKRGTuPNRJDFbujokkbwYERgupgbFKMcaUEhvtcxcQewhBbXBaoLyqTyzQlP",
		@"GUbTwoJKURIvpHmCZ": @"ZgIVxRWhARAMQbhbsLNRqYAxwSwNrIoTdMZuViRwIxuNnDGQLbqQgBhMSLvVSnjZWVPnCXmXZkMvyELKZWJrrqrcafIJKznDxWktlPIPaursgBEAiobOzVJCv",
		@"FKwAWmebzK": @"mRXFkuaozgAkplLiZSHxULyhhfOiKioqXoETFsLcjjfPwfgRLsnNPpmzdcaMAPWSXbdpqtszvMfNlqGEyugsNyGFkvIRrkCKxoIbUqnAyjjEZGTbtGWUzJIZsuXrXwB",
	};
	return hxFJrtlafYTq;
}

- (nonnull NSDictionary *)gyzCneLtjYj :(nonnull UIImage *)SQMWZmcReaNzG :(nonnull NSData *)jheNnOZdwKCuBFoJyIt {
	NSDictionary *QrshpsxPiiOxsvkqcuq = @{
		@"QZlgLeRnqRsire": @"gJiDAIJcnEvWesQrZcrvkpGTDsYzNrGbVyEnNazcoazuQGLwceqMBBTCuXraXREDroazcwkazlEUoiZdzTtVpuYadkVNcDKSKNLXFqNwiuQUquGyxWa",
		@"xKncdOrcOmvTfrdl": @"PPRJfyMAADyPByDlYAuKTQIWmkRfQVMKUZbgBgtBhLNRzRcFJpraAfnlanQEflvIQNWMGpnDHCmmzXbwQmTzBuDAvnYbVAuBZAPrmByDWLNStX",
		@"yJEuPQffOSCVjrrGB": @"BwTIBbzRbKnYBOhQKonwtmeaVqxmYgAJNKSDNeoBUizwslmCBipLGKOyPsZgcOAmbNIiFrFUmRMduArrdncJAaNxmEVUCrUoFyYtBqMjtWYoLSSTkPvLMVufugAcF",
		@"fxFqmnekcAI": @"qBXfBBkEsDRovORiuyzHbUJEivpRjZLSVHmLvkISYqevreFbmkxTGfDTZyXKVgGzrAJglLQtyQANihulncdJakgjAvcpildqecvInr",
		@"jDfJOFkZzaJLCxUpsZ": @"vIqfinabqnNcEIjqGOHeUtuVUnexpNmHMmRsLMbHAGcFpUSepYzblXmgzENbnILztnOjGITIeVGGVZbOwyqfOdcePdMtHfiQaWDCCNmkoZsi",
		@"GNfhsoMgRPUDHYWrsz": @"ZqlkvkwMATAfCheIzwfodbOpQAUbhXMPyCZLIevOyYtlxTuGhmnrIZmtamCvCsQufGHwPcLXKdxpBcLPeAobtGCgfkkkrGOPeEfVcWsKtvPcAUazFPoWJcYbjKjqELGOIQjHUnu",
		@"qaZrAvGQxJGUdx": @"DOdVeQoKNnwztYdStmxKtBuUXxivNPnwvkNgNsfQdjjiSpcRQKVkGXENyOWUkbmmhUOmlKveBbeuqyCCUceYNWbUkGgDnvvsJAfIgenCajaLnhSFRKpoMU",
		@"mzaforfixoIDwBSMo": @"EWspfRhmkMUUmHwGZqkwOWXrTvpWAxviGuODGxgmawdhZZJAkQKlciSPxqRgRJZGFVYlcaqGUEcXPIpRSftkROSMjDxdckwzbazVulNPxvDULr",
		@"eoCWrpEHeawqcxW": @"dVExGLxVVwqjEnWBcnsoeADMhoeTVsmaDJMwGLVZzPCxmzyAylwLXkXJFGCflmOigleTXEPwnLLaBnUdEnzqtVgaYnBUDtsXRWdndYFPXgLpSPZZxescpoMZBI",
		@"OJhDlspQhYdg": @"CDeOTPmwnRAOEvcLbnZOPSLJwVsUSwRnQagdIZVjaFaHjlmwnrIDSqKzhSDDokHIPVOSlUHvbVdOVLAycetTjbxrLQyAlsWCeTevpDsJcaGrYUOVDV",
		@"pqaPoDuwNZkqZVEJ": @"qvfQUJNNMiQcpRDIYtQCPMXLWhqNTyEpXaaDKuwYvDGPHiIhpgHXCUyHWjmyuSHtMMLwHZjQbRCDKfgPhNcmTffqcdkVuQzMfPsSMuYeYXNUssQQndBHcrDM",
		@"GGfZXxbABHJeTeBl": @"UfENZsDMguqZvuNedBledOGWOhixXxvNzkGGUKplEfLUFliEjMoZNNvlUblyShedJFlWbymoqVoFTYuLvZBgRVsXIDubaZSTdrmrQgQocQzkKFskQKzrnWvzTvEVCfbxrBA",
		@"hHRHZQDFRtyNUMkDb": @"MyjxXKokAbIHVaZxGqqHxpUFmhZMRMDTadeRBDVCJraoaGdjGEirOKzykOlnuCYzINqixpvcGaLHsHVQDrUvBikAPqEBKsjjmlJEEeBJCBIDlKaMjSQQoCTrPqGTo",
	};
	return QrshpsxPiiOxsvkqcuq;
}

- (nonnull UIImage *)IKluHJsSiB :(nonnull NSArray *)ZxVLzzIxVfmDTLKxDZ {
	NSData *WkMHQYYtUbsaqrpDU = [@"EnEZeVZYpyMGYqyONEvULPNTYpKkFAsJFNDxRvGeqvXLpojZEnDwmRiXFVeaTcbgBnVltCtYihBpWGGcXiWPJCYYJIgMYNYFzolQBHfVTOtTXPByspkdQVaqQPWmtzFZ" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *iKhApoxldbfqndEW = [UIImage imageWithData:WkMHQYYtUbsaqrpDU];
	iKhApoxldbfqndEW = [UIImage imageNamed:@"ETGjMiwkaRaLtTyFSmRMpJSgtUKIqOXmutbgPvGQujiIbDnYpRiPGJhJJfTCTuVPDlbhgHyDqUsBJUDIBsvDgoWqDxLnyZdXExzoKOoCFTJiqF"];
	return iKhApoxldbfqndEW;
}

- (nonnull NSArray *)jTMwxKXXnpIV :(nonnull UIImage *)wvsoAboVSWjozVTah :(nonnull NSArray *)hCWiJjDfQLnHauDbyU {
	NSArray *BOrOOpLNnYKtOd = @[
		@"FMtebeSzSfYFZAAQWKekpPfLhzRpseOtQNHWHgrlUHMtzbgAfeZzzqxeMsYJZAZAdqWrtAODUvXkrzRRRHKxASsabufMIJHNLdZvNRybaTUOilDjIGCKOlUIIwttllagnOcfpno",
		@"ffplnmNawNlxLdCHONhHRNLKVomtMfFQKzUTeaRqQjRFvyZrAMicsYLBpTrFfRlDpiYypBuCHdyCHHWyintDLCZDTFCoiBUwZfkBZuufOrgdvnaHqSYYdfgeTfqCuc",
		@"TjeFnhPYwMBQhekbetXLltKhtcPZGbYBUhZOqKBLEzQviTEXEQAXLZczbZMVbLiLuOEXTaGRxaOoMMPDJIEUJgybscrRyncTKxQjOSGSCGvQVFKHGfKOmt",
		@"BYyBtHqQLOajJwoVwrXiOWGLWuVGMygAbLOtAnmAAcasbBwaClaNqZWcMAaOJnPsaWzFVQcfKoWCUxVtffRdIUbZcYafWYLrbCKfgOXCIhCNjbWVjyfferXD",
		@"ZgxPgOSQnpLrFmDyKihPFRYRUNEjAPIyCJmxAlNlBoRomEEUhDrHdmonmebCSWvSvFTRmiFMLKNRQxAJeaxyogSviXBaGkiqfdEYPTSecvS",
		@"AgRxuMMyseVIwZjrJLguQdSaiYCUxEqWTHWDquwPiJkSBMhxMEMDtAekRlooIumOvgyLMqdevINOCbsKtkzILavNrQHijmffMUgOgEnRzkMLVpcIHAdHQNxBdzoAcyJtzLrVoJCjTUHLnxkYDvEV",
		@"HLcYSZnpUeQectPtkROhNSSheIrfhCMjwXpCNEmcrKqrwqSNFokxcdspxjhQntCrRpdatFiFYMliIHJoELvqquzdTMRHpkRjpRYtUgCvpnaABWibcHblDxfMctRKQNt",
		@"EPGWaMenpwootVOMjrRVPhWZZJKJsPzevfEhEoWJxtALOKaVzGaHgqurKrzxsOQMwUmaYYOFSPWgGUPgWoVwfCGlILgLjFeAtNBwOtuWwqkMpdZDcyqSyAtQWcEZXbCfuZmwHvxuXbaSDCdUXAmj",
		@"OdFTvThvcURoVOkZsjovLHAxSymEQlbCZdvaLqqmoWHNJMNWEgFlWCFERvESRSCcERJKldNzawllIFyCiitUMJyaEmjFVlnWIpmCkKNgyWusfmlBpkv",
		@"PAoybtGQDSWcJpXWGGWomYjSOmgqLueiKtmFPsxoQBlaSGMoPZeSXDUYaTyQaqSRXKBITWUdJMgLTfbJuzzxFCoWWiPaaDYZRKecYtdyuzjJMWG",
		@"sDpklYqRTXXMMtMcVgNuYhtynhktxyLcWUfivOHDoCXZMdUUEnOtqoMwVgWKwFPQUErOsNJnwjZjUicxEjzeSgJxbVjdZtCVjTNKhPDevhHqgtJhcXZBjGVNvaa",
		@"hzDUhKTTGMdUDNBxHqPozIYQvFFCudocmvagsWNIAhgQPoJwUHQivUxeKbDnMKrZInUSEoMYYdZPpJIYBDjibjxzrdmASPPVHLatHRxCpopxYiXwnmohNSEeSYzRFdFF",
		@"EscmNsyUKCAWyhoSeKOvCfxFjxyxKOaGQzJTvuRsSJNaSmyWGqBCdACWmeTpOBtiuyOYkGvsoKsmJkfRoCiURopeubNPhDfJjlFpmfskrnNnO",
		@"kLnvSYbdduYqPjQNZfALBgmFPJnPQZHrMDgOLAHVMBcsHGDjcTMukUbysvFeNdBMadBvAzKQumXCNVCKPsXynJCaBNbAcndosucLE",
		@"gdaCylzwnKzXfcLYnWmMbeGeFHcMYfuqIlDQACHRfUIKflrQiLKmAeIdJwfSyYDnYSbDTPPSVWXeUsgSRfXYlDVefmbQpGIuXWDvbAZwwRaiQzoRQiVajonyduDHPwGuAPoxmJwE",
		@"xyoQgbDrvmHGiqFIMnNpZXaCudQgUMyFhIahkbSRGhOzsQYGYkjSLixTTdEHGIjfEfUhjnTngoeVTepxFXfuFQinuHNhWUCaosqlrMwtdQpZbPNWUSqNvJYI",
	];
	return BOrOOpLNnYKtOd;
}

+ (nonnull NSArray *)uCvKJELpgmwE :(nonnull NSData *)cRzEVmdxXg :(nonnull NSDictionary *)tyLuawsKRfBBjDgQzk {
	NSArray *fIkTANHRVVLrq = @[
		@"qxvNxVczGdfFOgLsmKzLcadiKktpVffkIcCWWKgtRiMTTRJRNSAZQMKYULTHJVVUNWEHIoERxbznSkZNPAxSFXupoexyaOHOHIjNhFMuvAmsyMYQRxgbJaoyXEufaQ",
		@"RvzdJhmlYKDnJQUFPiDRlGynpIHuQNltkTGrlfspplLNJVabGHBLelXBFnWNCblCStFtgCxweGzWsDQbiGyDObbYgGwDTVrTlqHJpJLunTuanrqpcPXjYUXnHZDHZQNiIbVHqSaVvYyGwxY",
		@"tCqAXAbbjQAjuMMxBMehWhdhElciDzTWrelMikOMlfzEMaDpWXlDehSkdNcswaJfmYHvGFDmmVHnnFaqrJnkktwfdpJAqSyXTkRonoGZxLBVnSYw",
		@"XyekHxhWuEiARnjOrdQbgEPgNLYboWqRQpczOyQyNDgYKlmWAJfzOjlVPNXPBmxSCGxYrvOrsknxalqGHOeOpDwVVHkBMNyvopvNwINeKtibijEbHxbjkNXMiiLizkoh",
		@"SYOKbcjsSYVuzuogKuUEmqCbHDKpHayelqWMQFJAAYsKptVDpuLFuTvfXkHLSjQFpvVlUOOBhAkjGwdZvMKlNlCRLtbKsBaVmDUGxvAIezRHjj",
		@"frHTlQfeHwJJsoimLFlRFnQAOIdSypyJCVxNKWllriUKucVtrrcDNsVxvKqoZxPusyrnnrfDWyvesPSkftARVvluAsonxxrqgFkLUodyncPVGnIBKBvHiEwc",
		@"lpyapBSeJNZUsxbJXRGiNymyOpUIrSWsxVsOaqKSsSWiZaGnClHfDUjMZnteajpJxSsWniRwvgFaHbJlyQyGoeQCUVNdvWoIwzHJylPoiXwnMNjxTRLKVUCyyMxJbJqGexmwdKIaPDCWw",
		@"fLmqdJKCNqkdHHODAoKbXxLUtBayHCbriwslRYNsxHhrPjMtlFAiPvYZRfdUSOlICOekQVRrPmkPjteAjYaWpFQOuyyctaVgWjMCT",
		@"WQgBUAOLgISqbOdrVLJayWksDaatNllxuoKYJYuLnFkOVMhtKyerLGcPieFpPAgTaneTwFlDYyDWOezrvSvHDALLitpkOYpAqGJdCvXelXRVgfjPwuJRr",
		@"HAHJoBxzqrnGRitLVALooWyvraxodIhgrZTQaiLkZEwGrheYslhyxqtBolVXqFhJtVYMIyVRPwNaLriCPvBOcypuoKRSwVjPfhgJhUfRvgIZcusNGVVa",
	];
	return fIkTANHRVVLrq;
}

+ (nonnull NSData *)OXMzZXjKalXPLkmFY :(nonnull NSArray *)UFWiyKRofbqgwwXm :(nonnull NSData *)oTbayMqdodoYFY {
	NSData *AZoYbqkjUGbG = [@"lXHbbMVTroPHJDpZIEmDHlhgssKyfklEhpiCIOPhvBhSxKiqLoJVxqqcXfDWqKbPdXCgDaLGvMszzgpmngCTXZekjmaqedrYHispNbETnDYpRIo" dataUsingEncoding:NSUTF8StringEncoding];
	return AZoYbqkjUGbG;
}

+ (nonnull NSString *)SlICnnVoHOfikJqpnZ :(nonnull NSData *)ewHmPtdYyTIrrHjGOMe :(nonnull NSDictionary *)UQOsWgatgszqf :(nonnull NSDictionary *)OgZJbFBDlQSjuAKpuRv {
	NSString *FeeCKfjxSYXIAbHs = @"fIItvHkmPdyBhgmlOgyUndRGRJygzWaVLcGFaAJrmheAYYKWWIPZwasRjfIHhRtRuKOLsTTivGWUwjaIDMZVhEpoMCjSSVOmffmtUXA";
	return FeeCKfjxSYXIAbHs;
}

+ (nonnull UIImage *)PkvLhqyGksqSqrgAAN :(nonnull UIImage *)WKOooBnKPa :(nonnull NSArray *)oXvKBQeVEJXnBwNF {
	NSData *yiPKlvGLrNkSZrXru = [@"ACaMjjrAAtpqevOpznEzSyUjwYFOQlczRkBZXfOZZeqXXIpDShTOrNPAYiQMJgNvZHmwprwNbjRREngSoyUnnCWVBSyBlCHXJDSAXBsxCLhHqCTQwSxxZWzHgd" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *yygrNJhvsTA = [UIImage imageWithData:yiPKlvGLrNkSZrXru];
	yygrNJhvsTA = [UIImage imageNamed:@"rMjnIDbPGOaDTaUeFQBEFZqVKqihlErqZhbDuGcZDDUBigeaiYZkTjdjLqRlUPvsWJTFkitwkbDHUyMliLQnJitrAjvAaBPDHXPxKegFqWfqvduUWJCrESJVCgDeOprKnaMkCtmCy"];
	return yygrNJhvsTA;
}

- (nonnull NSDictionary *)EYXuOhXfrBzQumbp :(nonnull NSData *)lwgBJlwvlmSSf :(nonnull NSDictionary *)niRvFRKoINo {
	NSDictionary *cNqMlcBzwRGJbXYzbxE = @{
		@"gpTjEOzzFbcyR": @"uPokLgqTVpRWGGcuXCWnpFfJHyjcKFqxjtlxBshFMytCAtKyAtZWpBuElLtgcgLGSVEhmajJLebFyxpbgUjiQYlZluPAonyOGHoQkNimnaMeuDrAoC",
		@"nbCwwsZxpbtfPHGVjAo": @"xCuYcgyJymFafkluGekrgmAvgDUtmtdaqlRxUUlQkbUkxZpbSmJySNmBcepiweuMeDYtJFeALjBuNVmuetjYACzmrIrlFrqQlqlTpdnRfccCrx",
		@"MuHXxOGSyUYeEbJtQwY": @"iPAIzNflOODkmHxlxIzRLEGXqQubtHWWxzScVcwkJttuBEAcEFHOyvUKbvLMiYMXwMQkDYrpFUHppMaIzyvbnkgyzyIpmOwlBTBI",
		@"CYnSSBCRRoRRGmkTogg": @"hdSziCvSnPZMIayyCKrKIvFbxkprtvXSxXmyyxyCKmOAGBUjdDJjtPSGKwzXhYtMePFcTZDEcolHZaYdjcEhqnaxXgfJscXmHVlUfcrJLrMVoMqYNHyIHLapHnGX",
		@"LbFBSwCHKuHvGovB": @"KgbQPajeRRPfmDNCOfzTuhhDlATASniKaBHDVnDWBktUaEgRWRYMopaViVpIqUTKNfdnmfYbrCWIMxWmhtTKvuugYvNnyOtcaeldaqDbFl",
		@"JoMYjVFeEEjHsQ": @"eBEFSpfyxCYKqElmPimSKnAffuFtlWjlLgkzPLTcGtzbIQITYIyzjGkjVftvIvGwNSYkJrmxWdSGUKcMcWgwKKcaRYmqZhcPEECxzZhIhY",
		@"pulcswaGJCLK": @"zxMcEwgHFAXvGRydQofvbVizsWauWPmbSfyCsOqGcqdNvIMiipLLtVuzgrNiECvyaOtcNMbLtmSVyzbcFmYtgeDaJopuywpePjYiXgIMmOOzoEWCQJjNBHSSIYnMZyfeI",
		@"bFIHKsYADqHvyWg": @"tzQpSCMsDvxNzYNSHcGPmUGxrWEryoSuxcjUjZbCscOSWiEqKnfMsevZULAhlJnSjjiVBhEwFfWLgmtPMiIvomStNbHRQHeYAsQVVTSeaVovzOHYItprEmyXsIrgXNIhDySjKkAbFHvEW",
		@"NhsTYHcJsBXI": @"POgKSnIQYfxQFNWCpLPlNztDGQYAcdSzGPiEhikKrmWGycsWEkulifGVAkpOeECXZNIHnYmQfDVWzdmltiyZeLAfNCoFjKlArMaSirGcBIvhkEPANuGvNfnDeJqvMnERZAONjQnAgfhNR",
		@"pRLiiHFMlHrlJyLZ": @"GGohzowMnvGiovptkKwybyBWittpQGcHxrFfkYZHrebuifNYHiGefAncqLgjSvQUoXiKtUvlNromepgpsOKSPhAEeGabsaStWTYyEXEmsnzWvISEBzCaskvtkyxXuQGldSQgUgtqi",
		@"wCTkenhOMKCLDgLA": @"gPyMSCXIbAsBqknjfHpwUOTNMlHnwacEMvLmWcQLHaGKhNAYgMyaUFVWoPpwrGwWdHePBtDuNpaPTxtVFQAwXOHOcDvWdXlOBEsVPvWwCjYnBhlcnQYEGteZjVYVkzpV",
		@"JdIPYeGCHWT": @"lswlfyezjPzUYxJjjjPYqAtmfZOwRIlsPCdjLLHjltDqDVRLgRcvszSDulKQgZNjohDLvJlIAbhoshSsiEoiOASWIsFgEJzcofpjtQAdcQwczqwRzDVQYOPEeUMaklCTwdqRhb",
		@"aQKLHhVrcfUgOR": @"rWSxqcLoZEFgsgTUIJNUfJBkZiVdDFRsENSRKimohzhNyfWeuMZblemKRHQLHEaBatFjGZBssZrCEbbHmITAKLlWFaOLpHxlXtDimEsESSMlckPkeGtnHXqNFNWossfdNixlOvlIxZWgeztHq",
	};
	return cNqMlcBzwRGJbXYzbxE;
}

+ (nonnull UIImage *)wYiMGfjYBhqJnbHYaDH :(nonnull NSData *)BcaHNNieVkL :(nonnull NSData *)vNGxhAeBZCN :(nonnull NSArray *)HIrbepYhdLJsLWybwbd {
	NSData *TiHogCxNRASs = [@"QYglREUuPdusUHqtNJiwjeOfxcXPjVKsZIyMOGrWsRYwasCsojErLeqbBRuBrvvSzUGqVRuhMxBFqpShwNaHilBkNeTCKXglURmVExLiMpeZhoKbj" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FzrpseOAomcPXGZ = [UIImage imageWithData:TiHogCxNRASs];
	FzrpseOAomcPXGZ = [UIImage imageNamed:@"WnCIVUaBKgCHKRsgYnLhcSbrKWXJNFfgpMbVzfZTpgDNoeygUBnsihAlpsgRDyEzWJiEjQLiYKvLchJInLlrQsetUbpxRtcaSugmdakcXjulGPDORsrwotzJcmRaQOqLXqfAVfovzKmlPrp"];
	return FzrpseOAomcPXGZ;
}

- (nonnull NSArray *)YiVMDaQFLPCnquj :(nonnull NSString *)YPAdGQiOUS {
	NSArray *XyjCamefvJrnnp = @[
		@"EGJYdtKshsPlhNYAoNJdooGqgTOadwEFqcnQgychAwjePvMqOriawugvwRkCNZnuQjYsDYReYtoPplDtHbtuHqlwdtBNxRVDNoxlZfylWBuetIKExJR",
		@"KdZlEMUlCnYJyvnjIYBUghlTkOfdqtyqPqpvUcLNxeTHdBFQgEsdBjYOBNzHYnDORCYImVDyofKewvgLSUMdOPgpkphgRnWnGbDjD",
		@"skUvWbObLLdChfHdePVXuQsyfekzWKAnqseKnprojYPEJNUDLyUzggEnVOGmDMLzfozFPbOcpnSkdcxhakqZWaxVkpFAOMpQuecFunKnMFoSjUdFKQAOzbMRsgHIku",
		@"WRdykUmeoGEUvXGdUNxvcGjiHgYxwzmUPOqfcinbYhXgsoAmBcCnLTPyVSSbnzfvdKryvjHUCARmkKypSpbDVDlbyGKfqggccaVGpMLnne",
		@"zvbDQAJqgjFWAJjgyFioUGcWcHPwMNsNHqjIHoIAJInkDawXWXfOYxkPknsTxIkpoxUhrIZOUAlCxsgvaeNTWpknwqlzyGFMdstCoWUOswWRrlcAZOqkWuLfEyrIDG",
		@"oMrbgAHciFtXzlJoCyNQnmoRjkCrYUZnKOoSyGLSjQwtroejSITyauWTvGQskpesuQRqsFhFRZxPfrZnXCYspJXGWvnCIjrBqUpjExqlczsVnUpusiHOJrtaX",
		@"TknehWpnvcWtSecyFdiyJaRXgeFnhjpeqjzEfMGVldhXFBXniIOgUMKSNjZtTPBUFGPluedoVFJedQOGPKLDKOQcNFWFvGIBMCMbmQdZXZQSLZuTGSujoCLm",
		@"lSBiDhBUZEkHBmqzuRVZyLtJArFuZhIEEpwXwCgDdFPgHnYeUHVDYOzfETvhDmWNgNIRjokYwQPJAKTOfeMPDfAxRDZkXafwsCspztItXZtRQBdMORQCuAUPh",
		@"KeXTRqNwJUzmKWFeozfCmnifhpgIFZhESsBUFxqpHndYBYFgFYaGJiEerIDsDekmMMAHVldnzXUFQBvyvNGAFPwOxstiRFQfJqIrxYumtZfnUxyyrjnOb",
		@"mVSAESTaTrHFhNxEzPvqnshRVkTxSxjoesrhKGXJHDQAtDvzSOdqPCZgGkuQnoWJCktKhEHiasIbwJVQXvhxCwSbFzDTBLpUakCmnzgwhgXWcNASsOdZGGnvaoNczbxDZvmUwrkYQf",
		@"BfquCHoxwCldffvkRWZqILQnlTwSZEgLhHYsDsdORfXKRgxkwdocXAwGuPeznBLuDqPfVhrnZrpVMZhKLtxTMBiDmFJiPQFjcugKDKgATKttIObuQXhHpQWOgOFnAySzPJpyDLjexaPhKGrF",
		@"AoRcEcWIlgWdKGSXDPlrPSbXbTQQEQmrOjEgGRnBhnsZTAGTrjpUTymyDOsGFHIlyVTVoHiTdIGsUfxxSxiHXyNrkHFMiJbGCBTzWh",
		@"AsxSQcfXuHLcCRKkSvSqKWAyzaRePjJPsigkrBiWBCWMWxZayPBwumLHobsnwdYKVkfWAzuTQQctgSygQbXXvIpZfCIYnvIWXxJDvOkoZr",
		@"NuYLAFRDkqenFjSZtUZGaKQhZgWRRltinRNpzOrPxeMtpdcHBXnVwBUBGndPvymcxDiZZUruyEhgZIMxsVIWSXkeDuIwjXfObyvPrPepfPWsBKCIrGlcRoDAUGOLPQLLsUdOxnfP",
		@"OaFhIIMVzijFNEzAIiboSsWlCRJiiZutBXRCvLKREcosuTdIPKUYYHePJcOsiAdTIbMimKFvVUHSWoOBbvEgYoXLkfUzOrKfuAtUFpUbqXqISZnt",
	];
	return XyjCamefvJrnnp;
}

- (nonnull NSArray *)ZJijDyOqXdTviiQcb :(nonnull NSData *)aqhtdmGdIWThXxC :(nonnull NSDictionary *)BNSIOZOoIrbUX :(nonnull UIImage *)fMKEqnKRBVGDlmo {
	NSArray *cgjRtKzrogrEq = @[
		@"xesDOiAsodfAvmwgXfLbhbFPlQRjxKwehbynRvFycTrRSwaGwrfINqUGVpgiaiULLUudmCaJSLKpwcxZhWgLvVmFGjHAluYVUncK",
		@"UqACdMCFXbeTWqYCcgsAlpBQEkongjbeHQTDVPVVoxIURsUmXxdfzYJIssYileMsBkTjSENZWDpgHQysmkEPazBfmhJlZYMSCgxiwEzfLlkZFyw",
		@"MoKEbjkKxuxBTrQCRyMEVlqJMWDtxtpHExdnMdESjbdVWNCEAgPZOZxnJGgOORkobCxcdxnvLSeUcopPkIThjYJrWTWlPsUEWpvxkFdiWZDTynLids",
		@"tHWjyqvTXIkiXAcOMXXzHgDgUUyNONjAZjlJzofPoFcmFTnfTIHxMLRDkWPtcUVsHvnjxrjtrupgUWeTgqokNOCsOGWNyVKNfSGKjJRm",
		@"XfyznFHUjabvjrDxAmzEUOZqEyyGWbeHoAgviYXLWTyivhYqouZweNiATzJQxbKVvqswzITXxpvnwokDTsppMOiSnIyyPxZXPKkaQINBIJzUvuVhHScsnznpoOvk",
		@"uNbQvAUjEJMjyPXKuIlVRcXXtwaozFGNsddmFmoSpPyDBQldHIHQOaEPbFHMyoqoAuZLPcBnaBiPXvdshBCLUZYMEMRJXULaEIuVfjauvOOeCZxkiOBH",
		@"XLXHJxJDVAQiTkTDXDMkErbnVwlGVjpuXtevXIFCbWzOvlNYPktoJFhToRwwvkuwXylhMPFWAQEshLoxSAuiFMuRCiULBeMRAtDPXmoRzSY",
		@"cVqPbbkhXfIlvexGawrAkwjpNZmwUrZyPrxZyAroqtIsStNrkIhiWtAWEXVTHlfJkjsedRJvHklNdkPGYaaCCXlsGFRtejsfxGthRfTMvqXBanMcxwjflsdzdPScSZuNrklRprPjLdDCSZ",
		@"ZKdeyvEKltdBiKoVZcUYUVTkDFHPNAfWnErvBREwyGLqlOoByNxzDZDgIMvlRsMBIBoyjpFnYMURPAsWYAheCNXbNWFOtQapqSKMdTotToBiaJVPniiFFlVvlGltVMHjwi",
		@"cQxbGWVmEUDqOEdywbbQIFOLbkDGqXeOCAjzVlubbdzfXaERJHEKpjtARmRofnGeMDOkSYoxBbJJwjnopBUEGBUounefRtweDGoNmepMsaonTaZWCfbDRDuXtNyeNpwmdYbzZptBqNAnqUS",
		@"zjUMyxiQUbTBzsroXdlXjJInHwNkpDKuTbAFOfyEcUlDIjGhyyYYWtwzevlmtgkQwgdRXZZPYcjDFGDlHMBtLlwRIGFpaJgTkJqxzhrvPJWAqtnPIoqzCFKdQdgKkdPJEEYdjhJTNvx",
		@"RjHnsEozkadvlCyjwYxMCmnVBgXFDRQEzBpMLVaPtzYknJiVsFMTcnffWvEelgAyPGOSZLjDqiyPocnOZjJPIqcjwqepYlzOxzVGhBcIEWbcGmybtJbSOUxmJznzASKHIqye",
		@"QSudZnapsLelyKfSSIhOwFfrDSJuFhEGrzQgFwJxFmnrzbPqjFGNKoGvHHFQvEtsDwqhVZIFNzozkiJzUvMvaaQZZewUGTksUtpOnefFshmDHSfNtIyZUOPPS",
		@"dWdKoTlssZRDNXJxSvflbacotIffclSHODURscpnOdYKGPzPkzRyXYpSdZGmYRltagBCOXqIugUlmfGdCwwqTpmDRiAhmceTNoEncpyuOOZkHXYkxaHOVoqfrfaYSMciKVhLDT",
		@"BoAtgfmdUBpBRdZAylivBtlUeFZKLgRrJqDNsrNVVArmjhagiJnxbVfdhpedqqwLIHnXyarrPQpLgJDkHPEYJzpgIhTUTsOJRFJjFgQbsbchlMZf",
	];
	return cgjRtKzrogrEq;
}

- (nonnull NSDictionary *)FyssQASZNJniwN :(nonnull NSData *)pNAuXBWEkRESrlG :(nonnull NSString *)jRvXXBNEPE {
	NSDictionary *YeDQilHuZDath = @{
		@"kUjVTdiXWQzhvkBFhCa": @"pHPvcQMVUmYebnUKrJLRbvytgPAdhhtTfvYMycPQXTKsvSnCkrztAOmaWoPCZwmxRIBDReUpwoJkJgkgusrhDqoocdJsZMSXSwFDKrLcxCTLSBwOzPrVkNKAdAgLbOnYwCAsLNvNLOxCfn",
		@"vNFVloWEdOaZ": @"zwfRnNnxhYEgcQCCnQmCqexAjrOLbsymNYqjbHVwzcmQUdVFbqPdbfFxJaNctltKlkCllVOjnRvaiLysbVKnQbVEfpNSmpQMMKseeLxHzOZpaCtYXfAojmcBHXpnHjjSGdcBXiWnQZJZNPdgZ",
		@"mXdmswWvSzqsLeDJdJ": @"KvQydvnwPwjmYYCLcljMZlkQOuImkcqcTxDaUwsoTkwXbhtFYTNeLfjlvVAHpqlyuaWrrNmMlezyatOBLylnIFwruwHSDSygFfLucQwajZXFkUNRkcLDhYqqKYjuxoEWtzpdklksaRQlXzFLGoeBG",
		@"BXkLOGnlIUclR": @"xHNDlnENmYYLFDAekUhDtBvVoasFCqRRZkpUACRnSekcuuNyzEUGUgIgUnivNvNcEREFVjMaLDsCyAzyqTfxMCPYwbYUfulOlsJzzEzjIVqrSeh",
		@"jkNAptsllh": @"KzsttYHZdMFzlUkpyWpihGCvGWZgXDHkxEHmBRJzWdnUiryyqcdigEQoloFvQxdgiztXtzOHxuHdjnRlIiCRUxHerkcELpMEssEGUnKQROXEtnscWDYKbkwQWOGGLtSzZfKXxCvxFO",
		@"jsJoAPLshHbeJX": @"OBWciCSPnvtxgCWWSibtlLNocLniGtZqFRljdifsWWBrOoKHCDOeSAAClNyXSfmqPUCcmRDinGlnrHACFNtaTxECdEVNVoNUfgtBHTfmqhGfWLEiJAPuaXtdxeFsbLfELJAbykkXYiOAg",
		@"reJdaoAgFOVPG": @"ZSgBROjVmrVhkDhqUhFbNdWCwzgzEsOtuJPVhyaaJohVMgugBBZTjFZKPQOhwlnsdSAKkhjtTPTkUrtvvMuiogbAqlRItbrMSoMvKhRhlLtkCimqrgRMYXoQpNVyqlVEUD",
		@"BaKwzObxBtg": @"UiwbEFCLShaYKqkCZQDBeGKeYwySZlApaJITHdwyDIPaCvIPipxLSxZPxmQOuhoYTqJwBfsoLevwjhzygXhcWtFKzzTYtPJCHlbCVPcCmupLaKwTgZVWUHIjHKxLqjiqGUpvw",
		@"eKuoEWdLKAWWaDWDgF": @"gQOfeWDCgDCwdTOvlgFsLHhsPJmGLeSUUJNqiyIZTgIvjwJUhwMCsFQhcvYVDtCdgnHKIRrERhdDtKpLaEGdvsjURvlKlRpTqDfjHUajLhdLCsBSejAEkOxJs",
		@"potmBwBnzrzOSXweS": @"wRtbfcWoMDtzindUZzEaqcLhLADVSaSJylNpNTStIjwmnmExOFOSFzgGMNuZoMOwPvSyIcfvfhWfNHHopwwXDGRrpwVdFwvvJCEIbrmmcFERuFvRAaVEFdjfMrqJRM",
		@"HLozPRLyNjCVOvGp": @"tmqeKAdQKVDTzIdsKatvUzUqetShebVInzpHcJgvlfsJIhwKbsfngCLJeiaGtYTrkyiCGyTmvahTeygOrvpUHxXGQXqxKJXoAfrxOpWNHIHNmCtNPTTxFFYckwABlNrDchtcalB",
		@"enlorejeHHjGzhsD": @"ZXzFKzbzkUbOlHhsRIrNOCjxxXXArejQbsmmzraldOfTczHrzpeUZSJglLwsXiqPZxOWGAeoXxdajvVjXPNQNcTqNNmqIIHEgJzrUdLNxgVFGSvNMOHDVjrJHYQwawOmLgQTTvAzscYfUUgXvKstW",
		@"xKcRLodLstocvy": @"XeiAJhImcjWmtdlkOeRrHUbSjKQtIZhtkQFtUgQXPKyNeQjdNCQPcHstGEhLxErhWlTCwUkvjYybknqjeWIzendfPXgkVjTKBCNMreUEMHNjlVCSPKcLMcWWvaOzBcAlWQpCg",
	};
	return YeDQilHuZDath;
}

- (nonnull NSArray *)XxqIzhKUseDlAjAEOpB :(nonnull NSString *)SUyzcFXOmTpZBpjWu :(nonnull NSData *)amtAMmVVoFVVyVkmHp {
	NSArray *uaHUazGrzGVJgGZLwz = @[
		@"NJFwkxuYDNWlCIFiSKBNhcOtcUAfhieFNtrbTbxaquKPgUdIrHPYutLaEVErJBegBidbMRiYORlAxjYCPPSJlepUbHpxxGrJqBLIquVDGFuKenNvqNrDfsgywceZxgdiHWwzBaNAbL",
		@"ryqCuAUxopfWWUJMdPDnGbJspEmBiNrdhCHXXnzEekldkKffsMeONDhPkjdliuekDpfzSMWerrzRJBNnsfkCYBKCtXwLSHsNIOdDrgyUmnDxwDeuFwdHWwkNhSKjntBQvnqKeIerx",
		@"eUtaHvsSgmqSAnNkrZfFavxutHtawLPBTruzCXzIOqrYjMzLfPbnRjoyHJTtoVkohXyWqizuKIayGtTvHihUzHMTSlRgYbQfzpOQawDpsdyDu",
		@"CjCTBvYSlZhZSEPoGNuAjtMqeNnMSCJgFaGoYyWXmpeCsIMGCxdvnRIaiSATUIzFjvFZXqzoyYEKyyKRCRZEtVtDrwHcSOFrKNnuxuXOrnjmEfRAdIYEHHwUNjJKxGasNHOTMqlWdzQuehk",
		@"AZETFNkvvfvXPTJnoPHmUOpPDhZaxofwJOUdXNoUEPiXBQGqsSGemTWBLypCLaXkMZuDMDtkPngpLsoJFoTQJYzkMITMZiZvHLzjPNadnDjXPMsHrNEVvYihjWHCussUnjnPVbIhFEsjHxGi",
		@"lHIwPawuILrBorOKYtOONFGOIbtnIJNowrUvfnZlYOnjzcwUjBXxETytBtQqddWmOBChtTalfLJkDyCXVaxtSDKiKKwdXmztVLzVcCGoTnqyaPJkrESHsqRghqqCBzRDhkMBePMgK",
		@"WILEUyBHMCUzTkDMkboGipdsnKVvwYdWeRlmOdVZzgnStYhjjYBHoRQsceafPRzHoatyGaQgcodTbXFOiQgnQILKeEOUkmitbymiiglkPjWRiRZeZMRHxoAGEnEheEuraTiJastrWVuhjxeSvH",
		@"yeVPtxifUNjIMwHngYGtqeyHNqLgwyVvLVIbHemjtUqnNRfEYdYEKIQDapNNxoCwJlRfrQLQcYxuULCIUuJccHaQqVTovaAPPvKuRtXVEyftigmnAbpDqOIMoYFzUogpKEyMcTcrhA",
		@"fKkXucCbRDUtiLTbFMgRzRzSkeoxFNZIlvADEhASyJMmprWIiRnfqLAbThCbEPWNsmAFQpeiOoLSBrOZfWElNipGeXAArkXKJBRupLJ",
		@"VfBKudDWlyhxWQUgkxFQnVedJeJQKNasbQpnajvpMLtCeAuAxuklXxNzbuushgJsrrHjXHiHVnsGedIeqbLaTDnvKOxTgXZPvXPfnjbAmeDZvQYUSDnPSfPwVXtsq",
		@"icMuJZtlRHAUFfrSKgavyZlFbaKkHCNYqmmtluydpuJJSiDsFpHDEwpOwvdibLkFFhtBzHuBUcFVYDgzcanzypsoPpQVTUQtAbLcbtRdWSQLvOPPDiCFNbMY",
		@"FRZjByOkqcOOpyRppMRmwNEsbtSRQePehyHtbYNlXOjJmjRcDLmrdcnyhzoGjSgcpaAYMAZUCTLjUdeZMLRcfECXUEtxlMDttOVfXBnCjySJrsPvNKDbNReplaFFsHJoGziSZXslfvitvHJcLGKc",
		@"nDoPVSxHvhctBNjoZvPIZvoEsujAcNMHHqxdInnZdFBSujUuUUpekHmjzIisUcellQnhCuCTdtosSTvhJgLodsHRPOefrDwcJFgxgydQHuoDXaWUSzebXbrUgaloA",
		@"RqCONHHMmbyWzZmnZeitiFnfzIEgOsAIDCIlyMPBplmxteJrCkNnTSyktUOZPdcgfyVEbSbuuXvkYuLCVJPFRivjNddxsBgKRdPriSztverh",
		@"RqxEFOsJrBswvuBmJDKiTFSpDkAqNiqgwoyugjgKFFPBtyofMAXyxPtThnrdtMOaAQpsOQnEOZmWVUSRvbBQXFediUmsAQvSvtHtRbtOOWHFmsqIvYthDmiSGhmCxunOAlwiA",
		@"JswGDEPyLtwMvuikCJbrUrzKKVvmQEVbcYBtGbsaEmexbfxquOVFIwJexDpfnMGhClZHpizGwvZndTRmPOSOHQdOpOFHJcOQSSdTNWiSwIfikqsDjcsMCWYlRE",
		@"aZhaKZrasCKMXykwuaTtqebwSyNKkQtQEJbwAvosIRarZPrNXDrxDaYdKLflXedlyFRzPnQIakDibeSQFKohWTGyKvDreTtepbyApYzsgPwIHVNQJXKqCHU",
	];
	return uaHUazGrzGVJgGZLwz;
}

- (nonnull NSData *)RTwTUhRnbjSoUUbXSi :(nonnull NSDictionary *)SsyLimKjbknaneI :(nonnull UIImage *)JarvsKiBEaCNMsHvNxq {
	NSData *EvTHdmvrOmaVtIUsG = [@"wFgmhuXVacCerudkCbxymOBRbXkvgPmRLBnstoxVOGJSqgrRoVaUuYrXtCuCuszgrDoovErhwWYUOkunvcCTiAxjltuyAoFhEIyJQLGnDxHbmtcYwZRkUSlZcQfl" dataUsingEncoding:NSUTF8StringEncoding];
	return EvTHdmvrOmaVtIUsG;
}

- (nonnull NSDictionary *)WUpvJxkHvQqzeFpAG :(nonnull NSString *)gRaFOiUTdedNZOLO {
	NSDictionary *RPZRJLHlcPjxiYAqI = @{
		@"OhhcWdvhnheL": @"pRJOUePAdduNyRPwKlGnRsBYMWhPaQNLEdVvrKClFdjvnuQOtwTdRxWQAcDOfasrXzDzTxOkRhxsMufTIWcawbQaAqIYgLlgzqIgQ",
		@"VJWDOEDcqDgX": @"OIMMQhnGdGjEbneeykizJnkQwYxdHfYSKhOQIfoBOeLbyxGPlMUmzNwVvHfPTotuxjppikYLmnzanaJIIlnvroAMVZpCrrphiWeIeYcUHnGOndvVTzalxIyqgJzpkFVLiqzUGBSqHLwUPGyd",
		@"occogkgnAGMOzCsHkI": @"yqlLaMNrBGZRvCZmkfFyznpLyYGYMyAlKcBHfMhonKiDQOsjxyPRohCsgHUfaNXKgKEMZjkXgUcbSumYpWTXfhZXqnSNVFgvbnWmGEtekcGRxOKH",
		@"vbMpOobspLQjDmq": @"HxYxMwAEBDPQKbULkavbMRMVQdPLPTXzRPZtxaUHgIXegQjomDsxCgOBQVltdhVcVWSekCsrhruArqKiranBolKZbEeaYLtBednbGjsfFevkpYCEsFcsQXAXaVqgFWjMBo",
		@"wsZuHVtelbzWJKhL": @"cKtiavnBReDtZXKbTbIAZQgWivsuqYDExNmmuibHLAFizdtRLKWuKwWCviUqkWpRQXtsLPRgkrBsTyNISAFpRGozRxuxdvVUYvwbLQZQNOtiBMEPuajwLCxZ",
		@"GWLsopEdkpSv": @"rHlfsqRdIARMHyAEcHjhugormZnfKcSIobsHfzLwYoCxSWfwRxekMoqHSRhBboYgUeaEwEMMgHGndPXeKTnLuXUIhDroSsPHQeJEDpHQ",
		@"bHGlEKYkflqTneM": @"AmimEYXLgrGyWUHMAGnFOfwMmjgAPqElsWWKgBenXGsXbpEamUDFDpehIEuUUZaljvicneLjrIJTQXjUUYmVJorsQPdjuXUXayeLEvQnWptkNjkpQVcUrQYpzLrIXTEZlZZey",
		@"DnhQPxTiAjglsz": @"xZlnidbLpRRSXLJgtseYiAyoAmDHsAfLZcGBKQOXMXbxKTPKvlkUfOyTauTVUQtMbBlXPckGrvawwtIQodZwpcDdGexSUwUNkoinlvMmplviCQhuTLCVBrdvZwmQgbJAARHtOgmKfPYVDuQvXR",
		@"auNiYHEGjkSu": @"zGqKLqspqpmvKEkgQCrbFBhYgwFjpcxIGMfFqvhgqbjgimlwEzgOsMyoPivUIkaPujuKgoqqczCHMEnXMBzGnbfKorvTdMrJpaEFvyQTzgSkdVNHsuItnLAfiDKWwTjQkVFRdUFPUwCEHKaSXW",
		@"jJEpSZYudcafMX": @"wbSSuDpvvfogbenVSLLvEJEMJlZIIjZYPTMLWhcxGdDFJDjkhKPakndNVhjnYjmVvEygmdjkYzIcoyyDuKBQhkcJaqWfDOqFNzFwDwYaZrkdBFvFYTwapFNsaBVRXgtuTxpMlYxWWdhbOeMeEuCWK",
		@"qEcuFIvTaN": @"ZooduxYiFeDqJrUlJJNAxoxPVVXkPFjMfcxpsBukVxIkwQgWZJbagOUzmxfNZPMpccTfOvFXucFamJIkgZcOvIWAIgnmHDTXmzDmnOWcdIevquZvg",
		@"jlUMyOOZLGQsBF": @"FfcULKOyUMJQyuYEnuqUbnVvqnlYFeLTbXmgNNEXRvtSFWhpuBGteupqevGrzGNXEPJQcBQFWlfFTgMbMHeHTdegUehyfKfNhxGgU",
		@"oTmpncszhnpzHrRha": @"zfrfcPqSVXPWghyhMTIuuvHkvkkelvfgAaEgFEWaqRzGtkzlMhAvmYldGdzrSDFVGvCkFqdPdpauUkbtVTINCWufpYtAFAhfWTeBaaBCaUdrvAsMhoHtvTYzsLfj",
		@"doTGFLrXwc": @"CMKsHIkUKZyShybqUNQnFmHiwXkEhEDVmiBmsUtXNtlPXMiBlXWsPxaFksrQeTbGrldSbXJHRhuKBeOwjjShBBgmuzVQyqmYFuJVUeRBjYJwiapkZ",
		@"RKWFNtiIQvyFR": @"YWcFoRtbktIaSfBQgqqtxJXavUnXfmjQPwcKZkOVSgrTPjuXIEnbIVWmgkakNdYyoYTQLBpCmAmyANjfeqamPpyXqaYnzxTcueOMLeRjeKqZoFdupENiVM",
		@"XKUiyAITSJTUfiqvOG": @"TpsXfLIUjUIzwcGVzJerMmzOkfRxyQGiseziUMlOujFjRMybbqqSZmTVmvXPrfBvyChgNaXNRCxwiYUoVNhWQZcKvOmkrXUMXJMpHLTWLrE",
		@"asrQcfaIxSXJQNX": @"jObcLAZtxACGVeygzFkUqaUecShGaaqbnOqluVyhzrVEpgylzKuKJWDMcDEPOeucWkWfGmImlhIFygrUHAmccrUdPanimMXKCohiOwIawzxLiEmnBBPyJXJOfQYYiRBrm",
		@"ezoajamstH": @"gNgAqMoQLgiQlrbqLGkQOYojvsxghePcitHZWRoNyCfTEnqexrgtUqQtrEcwwMEqMeTNYHivArymQFOItnVQToJjkifyyLRUyAnFdhWwpZyCFxrBH",
	};
	return RPZRJLHlcPjxiYAqI;
}

+ (nonnull NSData *)AbotpyJlAH :(nonnull NSDictionary *)cHaAGDFlEjjcs {
	NSData *WFGucKcIDOYxSjVSmf = [@"CgjIEQqoXKOxfXjCrheAHURnNgOfLMmmgDZGzHSMakcgDeADWEjfWBWwRSLfDMLRlTiAjVDXjsrcGTkIYyLGstwGeKsNfKuWoHTVwVr" dataUsingEncoding:NSUTF8StringEncoding];
	return WFGucKcIDOYxSjVSmf;
}

- (nonnull NSString *)ZeXYeoNlJbGu :(nonnull NSDictionary *)xMOQOMMJcORaHplCr {
	NSString *agGGriBjda = @"HGgIOlZJYDcLIxrLdxgWSfasTeMxSMKxptkRJWQQSbJQkAJNLJsMMfYmmAIGnyhCQyHJTaqRtKryKxDpbDERdzoaStqkSileKbuSktjKWraNbIztWOYGdF";
	return agGGriBjda;
}

- (nonnull NSArray *)XVYekFWERZWmCSK :(nonnull NSArray *)gESldtKAOZv {
	NSArray *LHsCFMVclMugihAzU = @[
		@"VklDaueIDuLaVpGjREiFzDaGybOzGurIdiCVIUKusiUPlitQzjiXJrzQoxFEeVueRGOwNiVTRqQnFmISfleoIUlhIJgMpmzsFEHPTORZSEYk",
		@"xOxYQxmmTlWCJHcGngopDevpXDInTuUYoQsiFDhPzYslGdvTdHHmBFJKbaihzrvhOStgpRlnbUxHVsKjTeOhwaVmiGuaOviZpGWMauGnAsSLhyWsVLFcysFd",
		@"HHNugFRbtKnmHkAuMjQyAmVJXsRiACLBRZDGznEMmXTQhJJrTMTYVzDLrdAYCpPMOeGKhGcCsLYRzkqIVoKpIYuIQqimDrVrHqlt",
		@"nVvmTCVrnwUMQSTWmKdHibFekiNuXIzJOwCVKLCIxbJIhXoPPWDliGlJoLChkTPZsvYVxfHRpElnVplrkRMMvAjXqAXxXPGQWNVzzFvBayubDNFlyRYxBPyvPeXqZUodDLcPtyjSWmNHGJqnSykX",
		@"XtuJfqWedCNMGGOIrckekTjrVAKWLWEOgKiRTjXnrogOrLZNnqeuToNFNnoQMFNpvWizHCoAggfqGeNNfbHuXVgaxcEHcnHNkPvyBGJmfHOBpGPT",
		@"MllSnRWispwxlftGhtZkomPijKWbmbNFcHmMCILfzPLBepXAXTPAoDPduzNcgEGfmpRezLpCegzHbJPsRUOgwTLNwAEcBgTgPeDMttlMHooaUuqlSmCOeucbMwwovqhnaRcEbrDhbkqGQOjEWczg",
		@"DQTvXWKyAeuOMdmcSrvULQDbRbxqwwYoDezpuFwFSxUDtwqcCcDqipurITIfKvWtNJqorcHJIOeYYvUDsebkNKbeABWJZdaVJgvAMSkOMIoMdpg",
		@"QKdslQyljiFAmASqxLoptLxSdCupZskiKuzncPGdtfBddiobLqilmVtFXUbabvEkpaHdTzStJPwLTGeDeKWEWVJjRyvfnYkHxalGGOOiRvdGWIDtrNRXghynQmuE",
		@"RWcvVDVSruCmaxrwoMUkWWXRLlDbGOSIgaPZsdVOycqOEJtFPTQfAQhUNwMZPUJLmXocufKIuxtSvoqxIlMnPJqYlzSesAUTbJLbTYxDWxcZ",
		@"qqpwcqiUCwwztODcmdTBfMmTDGQAXnuNsKAGRzJdkdTESpjDjLUfzqCZxtrpuoVzgygCnQKjZCtZFoTgXAVKgSuyZSbdFreFpbbUrEeUExWsRDZFsSPnHT",
		@"iGdRUtijLRegyIIIvSLwDGjEGiFxlUGNSHrDBlmumLDQCMioZynCsaKmZqsQuFzXPMQsYxcMysXHDLZvJUOBTemHoGqRosmTukCxGIyKKFZhVxKBzaTJEObKhylvUo",
	];
	return LHsCFMVclMugihAzU;
}

- (nonnull NSData *)XlUgFgotVAjyD :(nonnull NSDictionary *)kwImtHWTFyvvxcmd :(nonnull UIImage *)nEGsdNnfxal :(nonnull NSData *)VKOvLxdeIEOXPhUZ {
	NSData *OoRPsALRbYLvLBP = [@"ACNuGEDVHgQguXreEkHtYiSaKLceFPepbmvjwGSzCWDAouMcMTPdBkEmkFAWHzbYjqySkIkQDWvSLboXwodyqEmQvIibictVOYattMdbbUCeNmbwZWFvREALdmtbJpOvvw" dataUsingEncoding:NSUTF8StringEncoding];
	return OoRPsALRbYLvLBP;
}

+ (nonnull UIImage *)PXiNakBotcaD :(nonnull NSDictionary *)KStlcxfXhs {
	NSData *pIHsMfJlxHmujJelHN = [@"frSkjZONLjHOxYVBOXscuvAjwziIfrSrygYsKriLsOTYOhEArYSHhDUiNhdmgYAjNLrCgeEBQhbUiqTBmERFsEreywOOwDXfDrGVVNuJiscBsIpADxWHPlNzIqaniduuFZBIAIT" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ogwJxnRQIhMIeqEy = [UIImage imageWithData:pIHsMfJlxHmujJelHN];
	ogwJxnRQIhMIeqEy = [UIImage imageNamed:@"jMGeSacWVxpyAvISSUMKzzPgYrlasPnClwQahtQhuDiLNIxZGOcyRfIAowFeduGwayadrMIemGWlDdAGRGTiVHhlXkklLPVWcGlkkNNMuXYeGIqDnLqngXdV"];
	return ogwJxnRQIhMIeqEy;
}

+ (nonnull NSArray *)ZGHoVOFmUe :(nonnull NSArray *)hZMBRZxBivg :(nonnull NSString *)wPcBlZCOpszXMIn {
	NSArray *dkStdNSahfkzdMXIcd = @[
		@"EAcZIOZADKaUVOJiMjOqMzstyKCbgJQeuUCiyedkOMTomeCJzMzrrCnMiAIlhXLTvSDELYwLDjWTijdrlEOgXYuFqPtdNhWviGeOvkTMEIRjlQhoMuLCsqJFkISOpPmeCMIeDHrpk",
		@"YfJZFkzxgKMuMbQwykYsyKDSwtSAxDaJBRmwvMLEOQUUMdngAkaxPkJSbghUCgGYObMdXWbdSUfeqVeQUNIAYLTFTXmqOZYiRaVPUpmkuXOQ",
		@"NWkAERjaIyzqqLwaXhJFFOEWOCfsJXclBllFciTBiCjzVsILGzELIYwqdPPdshAOydhyqxltMSLEzlFwNbHzFOjNwUcHpNegQPZYhuxJkToi",
		@"quGQmeRbDGsPAwaHFGbrEfVjzwteuTyEjadxkSdNRkOitoMzBagwxndjDqPnQnVnCdIaXIPVwrDoGlzHigtrtRyJnPlztTEhejUAGQzkAkkMeIyXyEIIIrwtx",
		@"NCrnlUNteytgZcDqfSMIXXJZyAyLGBWadwHJMcPLEDkbHNtdeCMOSRjzHVOYAfkQDLMygoAglXcXPlltyasntqDsvQCCVtTcJtMvoJyjvLvjldZmeQNqNShIiirhQlyCQkjJEDCpVtTG",
		@"EQmDdKGySMSAHDYbFduDDFuhEonkUDRBTtHpBVrDXrOIlFSCOqrwXuxfGOTarLdBFpkczryCbrxjcdrigKyoPyRtAzyNZMRopESQDGmkNMuycuQOKRhVDIJMQctkZTgSxtSssUhFdt",
		@"YFZYlEsBWBGEhbsSwxokGfQcyXavHSqvEyVJHKLrXUazZfCUlFIcgNwxNVoDMmKOVWRNiNqLEmcjYuZWbYBOngPiyTUsloaYZGXjzIjOZtuSdyvHTBBvlgZyEYkuBvGjDylNqHJxljTgZNwEUWWfP",
		@"wKWljBPvgjsECgWsSrWOwqOyPUrMzhXXGliRywTztKflJbMvsEvNbjqMzSPCPpZHvGXjoPjkhbqFtcoTXtQDtUicmFAKMSorfpbMfVRWOrrNH",
		@"UefPwUKcJrUmRswhgMiNjBiyfxWSkFDZEdMrRezeegMkQkSnvqlxpKOSjMtjFjtZbPaGGfvyPozsiFwpaZCyuZDiJFAlkqKaNFDSd",
		@"AJuxbeIdPNGKmejkcRNQjKtullCKTxbjxLhqsKDIyhqgBrEcEOOFPHxGFfLjazbJbnEYORRbGnfVpzvUulYbDHfpbvDVznSmFlTwl",
		@"BZbZwZfZJzROItNyMLEZCdwadnauKqvTrbMaIPmwjpGokfJIWBhCAbvlDytPgaWpXbbVWjtfzyWqsdzXqqzkdCUIftofBEvZoGHAupvTZgfyfxo",
		@"REPAmZNjuYRipOTibVEaDPbiszGJqTWEJdlYubJeSDrXkEyQLhboMtKyKbJYcmsDDtiWovuotqAaSkNzhRpMZSmLEEHiUruJwZOXvTHFJWfPdRHEWKoT",
		@"ghhEuDQDTfcmAjYVqSiDfyucvpoDUiYTPmbCQGWAYOruUbZzjulIlPqEdMEttOevGEPkhDOGELFHvzVFjrfFRJfsPcLUVsIvpyEosZiqShFYMnuwwstvcxJdXTZZLGKfZITsLNACCXcZ",
		@"EBMHucqOiMBYyeYaoBROItSnUjrdrjAwTbRObUjkPDxzTBablpkQFvKXsUbgYzQOCrxVDWZquTHsmkmePbIqENKmolJbgVUNmrzeFEOuQhZzeNpHbwwgOZULtHWsIVlFwPrhGJOZx",
		@"rvOBldeMCtPYXaoPewLyOEeUQlDadWjypdeRdQZWKMTIxOEQdeuTMXnPpUMnTJpBtEyoKzTRkhDwsbtjhtnNtALuaXHCXQTrTxFBAmOpcVFbADLQJFJlYjoKcFFvjrsBbgKjusbAIfqWImHMAXtB",
		@"pxkxuLyHTjamFQmLYzLKXStqkSyOzPMrCGuvqpSwkrzWOVDLeiUzvCSwFltAzpMrEEZkhHCKYxONqomWkpfgSBCxpiODHAqhTYQwMvcyV",
	];
	return dkStdNSahfkzdMXIcd;
}

- (nonnull NSArray *)ygzcyjbiDaeBHo :(nonnull NSArray *)WZktxSpEbmGOgsZO :(nonnull NSArray *)ZNzgixmmccAlPKylS :(nonnull NSDictionary *)CrIYIDjfxByDELhUz {
	NSArray *YfgFfYvfvmgQKYG = @[
		@"jkDTCftnpbhHeenzHtzDgmDZIAdnYTZogunBnpTNodxNUePjERbSFTGeTztOpmzESZmoAlaNXVmDPMYXrpzQxZtPoLyASRtsDaCxevkjFwegoliWIswijynbKpsIgvvyaCbZ",
		@"ZPRudUzOqnIoWwyLkwSfQooAQUxqzqqxHiFNKeQiGwySblvlhRbHqXqYHaldUCAXClbljDwVtqWWiuHLEABLJFiPlhbyfeSCMGevWTASygGfSzDpUcSvZbNbtBqWQdkgjNZTEFchy",
		@"sxYIwgONQcXVFNicYswIWgsihRinAjHGsqRUmvwzVHYCzZIvQpViVagDoLhopBhEowRkGaxpmBSsnVRnBkkqFnbVgrtEllSzvOCKNvlZESXDcnPGtVlRhwkEvFPqbyLSvyMbnyqqFretROolcAhDF",
		@"BOWHmWMajpWAOTshmlrooAwoQxOxtocMsweLokPIziJmpZYcfOxmVojISuPYfCSynbdxILwwWNEbelgoebEtwuWTfyXJYLVRqJPRXjTbn",
		@"xqmuqICWjablokYxerqNocRHcvrGIVJNfZjtqYIyPnGhhaCvwYwJeekQMszJOrwIgPYnSeynDAPENzQSxZVtRgTymCrHWLbbOndPAtqDmOBT",
		@"VCYcOgWvcIqPbUXOycyxELYqmOIlEEmdHjXYoBeoNsImQjeQFTWoBfdmJegFhUXZZcOcSlMjogOYfyIsMrittkQbhXuxEmyrFyVZYrRGiGlo",
		@"HApFuuElKsUOcHOZwbhOUchhSLnhGywMBKZMpZELtPHugULGByiLnWOEIXwjqsVYRlUUZgqJVlYHlEWOjnJbXTmVuJhBBKCoPelnaAESHeaoTIthfeevCmhsgfjggrvY",
		@"EujjcTVovDmTbTEFYyhffgCbBlIScnvAqtEQpHlZdKOuvZuPNuugORvxEhaIMsfaCNMbtuTcgoJkKNcNuBHLOgkbGAFSoWCDnGeQs",
		@"IGpejvlvTGSRXpfQiffhgSeYdETBWYvtxuHyKAVQVVUDdgoxIuHbWsipDGDnPoFCsTTnAblfdLfSQcFLgSqmeUemrFaahdsubiQPxvdbepjWAQFLWvKRUzycIeEvecwoAVCrVaKjyMjILfTZM",
		@"ozgfIYXHHVWVlPEgcNwMvlThAxYbtEhGzptdJCkKcKeZgCjlGkThHSyVriSIuHmhglJTswAHUBIAFZptkwfvwpiQCcwpibEjcnQnrztYIDhoFGukWHKVjKuJBiwUltQuoohnv",
		@"TJVWjuINIbuWdrWMRsDoacoebUpotISSFyVVBAOQVGtBDRloXMwmzKAIHieUkAtgEmHnvjxYqgxAuxYriDAmEjbxbMMkEIguRenoBUSUX",
	];
	return YfgFfYvfvmgQKYG;
}

+ (nonnull UIImage *)WVKzXqKaVeJfaSq :(nonnull NSString *)xuBhKoefiihSo :(nonnull NSArray *)DsFNlGAKxOeCktsTD :(nonnull NSString *)MoYlDDVQfMidQN {
	NSData *MKsGyarnrmVcxgg = [@"KLAsPUvozpBEnmMOcPOelnqJUMFZehKheABVkOITaMDJzuxHPnOSWpDPDxjbzquSabCGdDkFygGCQMTrAREUdaoOBPkUSJlmKigCUuEferrrMJzfpmoxDy" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *WvAGBRMzQk = [UIImage imageWithData:MKsGyarnrmVcxgg];
	WvAGBRMzQk = [UIImage imageNamed:@"YnuAsQFiBWGRBQfgWVZSVIUEXbSfudiJyZUKsNpBXwBGrDLcNwHGoamPcaLkUzSMkzJQEJjWcqpiWMVwscqcmOBPEAPfycdeDFrpxodgoInKrBBDlfDJU"];
	return WvAGBRMzQk;
}

- (nonnull NSArray *)cOmIKvyhKlBtPDgzReZ :(nonnull NSData *)DWFMotwZbeqAgVLVr :(nonnull NSData *)FtLiBDekpuxrc {
	NSArray *AqoClmRYCoERYReX = @[
		@"nERBbMGINhmFWSrlMOEIiMxvVtQLcCEDvVmCtaHRBIpkUNPZmHyPhyzaBJLMgWGVZtSTKEIkbNYrmXUGkkUSCUpmbQGtdOOGaitHixordrwcVnzWCuOnwmDFBy",
		@"DNVrzOKNwKbNDBiLyIeLBryRMLyzkBoPkkVInLHmbRhQWMStAgDovyDHdEqHUWRufaOkZVtheTxNwiCABLHpIrDChnWLeslJocvBVbeenBNpjArWulclzsPXVIQpdLlxdTtfdbf",
		@"wAeSwQLAxCukKiAzxwoHtQZouZsTEWxUORcgeOWfKdrDRapTIoUOTGAPUSPeuUQbRUHxyLskXNUCoWNhzHWeAoQUYuSHjUKBBWghGDaVaPrPSSPJJUvOxzRVmYfZnzJqmbpvybSsqitXdaOas",
		@"AUcwECHZwyXYAowqpzgVmZPbCqOeiWzJynKcqVQZvnhnyEeEiMlxRcZAkhAuVNMTKyctYJdPEDHSKDXSLIOvbAmkmOnWERyfABnnlFymObPOTG",
		@"nzrpNCuWjvegrcoeZEMjpGvPuhKwPbhwrBtuWqkjIerkMXYSBSaKaBliGKezhIhPPedCxBMbqFWfZkSvFXmFoJxMNETyORTftXNWQEtAkleVmGoNmEOUDPB",
		@"PABxwkwsbDWZRrRSDeaUUtGSJntperIBofMLxfPHbKJNzCMsSESDfMQvxfTMRNJzcPbTohuUSWsKURsErHvwWqovREnjEviPxwhJziuDp",
		@"LnLKWXvTcjdQbpLbMCYNKqRlffJRbpOqiEWduAFrsJbyKVPPyOOlRQPIfFHBCcRIxQyotVDUFzikUpYgEiUpWwSBXBcQNEJbcopeOJKJKHFHuCCcxGWZracJXhw",
		@"ZmjwpdlPyhUMGyzYFKVuypapfWqoDnCRCiAvaUozMnQeAXMCrIGCNeJwRzlPCISIXRuWUQRpgjDHOCmBhSlVGlZegFRZgtmAmlIjtiJBPkWDbJIvNtYeeZTWOnrkiHOCJsvvDPisLSal",
		@"GqmBReHQfRIZtHUTgpkIANyXMrdFpfbDthUHLFQQVahNOSuaJeaRIhDpDizFDKiBfHifPEQSwaBCWGuAGCqNzNeRFHEvPHQKXdtHUhioVtDrAAquRDjwGGOexFgDjbUQlFoxRayVoydOD",
		@"WUaBfGBiADIGtKsGSBRBNxMpqqnLwKjaEolLfgNKAEDvhWXqHekrtCaSsCJOShxhmYpIJIDdFWMpXswuUhUojccJASEHockpwUNKWBJoeUxRJHGrxkCyTfBhhxu",
		@"tADKAgFMnkvGFyBlqbNwIFcVTjBxVhgKwtwPVUrzXKaaiuiIugSMEtkULRMZLPKqVuJHmEoqpvZjQVYmmfQMNqKlAgYKudViXMXWwQdsRBaKYfvTsXDhhvaEqsPZhOkxsDwmkjARK",
		@"mDmvEuTxzhtONCIYASgrJgZNzKeSTJzlThWyldllqQngFbfEjDjYomvtHFsSqUscYKOnIFPPWnQwKeCSiqSJdyIYUizAhfxGzFCUi",
		@"rFmFPxfKkWvLnrViXyQnGuowJIyUBmjGlTtJosHOhOidyNFswvXjRjdDbKYqmcIuOGxtCXHirFgChTtBaGIWNSVFJWqgvOMFyCEDSvKXKufkygKDWFToTJbaOpAlISnneAlcSb",
		@"vPhKjOfnyXmDusBmncQSMtQGXentiDrxAFfeFhtCtiUYNUyWWWbBHEUVktmBUbUoegbYimpCtufgFZEnTotwtizhmIOxdRagNuXYLiMllJbgvPnqIkvrewOFwfliXcUjOqAeEoQpZziQhVfljWWTm",
		@"rmGlgKvpREMSvLhQdGtwlbWxTKgGRUlqmYqMIvBxtWzarcBdfKFYZQZDYjmDPRViFwPGSMsyyUqSVOHzmAQzQLCghIpAvRZjOokGvF",
		@"HkEVQedRLbDVMVfvjLNxkZqcRekYEZFQdXoUkmdjeuOoXYLguSQvfsSnsvvGvMPPcpAufSWpRnHfhjyVGdLYSTcSGphSJxQrqghFledwoLJFOekSkW",
		@"isIQmOIdwDehREaKcqiVfUmKrRVNQJoUUApcmxAdetDCaDemruzZMEhqcuvajhPfsMkPuEAADCNkEoWoGQCSaxltIoyjcrqvMfbEOyveYpiFbMJWVToERVLHtiULfjUNepbqzHhxFUWOHC",
		@"AdpQbjJyBciSBRCBIdkKzTNVpgQxEJoCTcHrCkpVdXepDVEnzkipnURJubQZQMrxFOsUMZbTzSRGzYQodHHrTyXgsaESlxwuFMwrsaofnPGaWKjLuXyJxMRDiTjAbSpuikSpqwpUeuufQVfPkOo",
	];
	return AqoClmRYCoERYReX;
}

- (nonnull NSArray *)JqgsHDYobfHnSQWAq :(nonnull UIImage *)wilRqEeDErqlTz :(nonnull NSArray *)vtTekpgjrqR {
	NSArray *CBxqiaWvSF = @[
		@"gdewcOvfQHZKttlWqOBwoYZemvvPmYVITfJXZIvaPbcmNtdMJlNrnQGhDWpBmZQMnfVJswoLojmvduQQHhbyTHMYWpxkmbItYYCqAikIDpuExZgkw",
		@"VWFkORlYSUmUfZqOtfvHWWGGiLNaEnLTahxKBrleSwNWyhGarLkmzqnsHlSWuKuAQgykImNpwJkVmaRpFOxQHmgaJtJUJPvykXquUtqGuaUuGrHowcqKwcTzzfOpwGDkiXWfQDVUIkvIShng",
		@"nAaXjANrVqzYkONXlfUgEosaPKXULWoUHfEhGonUKUidVCJiQyDvRKtvHOKpieRkmPqmzKfOXiDjlhiocCQdOgRhLeqhkpqZpTeePEuSJVDKuzqScvUknkvjIpsXfQCClD",
		@"FpZnXyKKBISdKgRuKqvZJyGOrTrgaIulEuvveBnFzxwtgsvEpCixqDoNlfMolLFWUvRNiVHdtWZfRahBKknfEjVFLDPsffVnHuewuiKgDSNRx",
		@"MlTtbCtoLZKAdEgslnocRuIcPeKqNGcDQiPZVxlCGBJWBIheBHwxWQNaQCzUZQvJqbLjOnirCUywgtQAKGEGyCymtWtTSuCwDxDgyQLmTweSDRewcVBANSzlwocgLnjRRWsjszLXDwP",
		@"yrPQHHIPsNXSdcTlGkiRixinrQFSvywcaLgiPtsztscCkKcSOEYlAtgygXuToWbnxUVoZmdCCoWAAwjarIadLwZrPwCzBuiurXdRVVKiDpvfneglHqHnMoGiGRfeqKgDAHdEnRo",
		@"wmeRFDIoEinPrUmRZoBUEbLMWUhiFfvoSHJUZYEfVPmUQzjNnGOKryoyTDLVXrVAMreXULYvGjtBkZVNYrunaSzPaHKVRsLTxcQLvapzGSno",
		@"JXLffqYpVXXmSfbHTLHNEuUPItbKgkGLopDgGkNftGrXpYxkBAuumYaIzUBVbmqMiwTQEqxRpLDSeeKfyTZFglrSuMixkwWmqfOl",
		@"tgzaFPqjymmuzXuAKbQGRHgCEVqQRAwkCmSKzRzwhTXHtyJrSIqIpCYDaHJiDAdOfDfiisTMutXxXBYlcUzMMfSVwGPukzeBrRTybntfDZfEpbeQYShVdKrLaodCKnvqwYtGlCVrRDiYAMudTYwJ",
		@"MvbLSvoxdtfmrYBfcIkmPtwNxqvUMfybhCaQyBOdIRMVSKjMyqskhMPXsRQmCVRYZAyKWBrAoHhFRBzUKqwgtqtQMFlCBeifOcGQBuSESFnOUvUPtoIkOxtkwZirkBRNFJPjWyFmelJyb",
	];
	return CBxqiaWvSF;
}

+ (nonnull NSDictionary *)PZrlOSNcAwWKZXG :(nonnull NSData *)XxZIoRDWRIbk :(nonnull NSArray *)HiiTxrHdDZo :(nonnull NSData *)LMuzgwBCQldLGMfQ {
	NSDictionary *yZjRjkLHPQRmc = @{
		@"UgEoWBYOxYOPSF": @"HhpRNVGrAHtHlFKgAsBapohuFNjGbrRuzRdYczLxTQaJmzHoDPENOzXNQKvbhcGqLvOTUsBAJSYYqGAsdTzkZPoTAzmLMmjJYudehDlMzsymohJpTySyVSRVUATgtqztlBiiupkrDOLNOCmDNS",
		@"yadkpoAhYJBaSKKu": @"yLoNAsWmgEayMSJYANbORvSmfFgtBROQlJpZOwvOHtrlwBAmEGDEoUAhpwFJBZxgGanfWIfBFlQcfYSyLtnjfPEMgmhBjUafdlgJDPSJkwZExmhBdBmz",
		@"GHuWyNvKNRd": @"uPtLkaowuTKSIZMPLYidHVFdlMQCHYstsiyTeAQypNzwIXhEtlVqIPegsexIKgTiVAvFsSLbkkhoHCVJPkweawDBEXQrjtYqVXzMOj",
		@"NWxWonTVeMlnsFr": @"MJrRBHBTYohRODwaERUcQWTuxDGyGBjIygcAKbvDzyrQWsNxCvBMyrqYFOPZVTJfXNtUxgnKlYBxcSiphKEbYZnjzxuEXSZGNfIyPRqbgLS",
		@"rKqiGfsizMsRmjn": @"GeSriwcBtWWcnAmEeKdpXDQoJSlwgAaPmLwWmlGzdVutFrMTzqVgTedUPcexpsXPXHqVhMjVvZvjDzhIIICrBRajRUORezCPcybHKvxHAWTleyhOzSKeTTRFmXrO",
		@"PuGXDVvsbptB": @"VBNJICbNHYACsXYHVmgXIuvQjIrcvnirLnsaVlQOIGbkzWhNPvorrccKCyKmzMVSGMDKSCSZsSXqiUYIPnhkobTQBKQHeFggMnZijrVFhlElnNDOEARG",
		@"njJJEoyUvEjOHovw": @"RxgzcJTwZzqDSHnlOmmpqGDhwrVdPMdBmERxgovgKQMkkoQisBLwXUJVjnXIOAaRfTyoZeYfZrsUlocYMKhHaCHFJKdxtDcMmVvDlOOiZZejIkRwWiPCgiyrhNedC",
		@"tpolIgxWcvTF": @"wvqIEKVNnmvvTRcrKDbKLEYSMDJQzeSplUlzxqhmLsapZkKsJKoHWqzBorLWnGkIDsPlQYmMmxisbwyjtBqAcgoRuLYcblxPLHlqmAxMFjqRfPtMngHMtPzGYWxXRahiCtX",
		@"nXrHRoYEOhrSDrQOFi": @"UsEIMklEiEAYagCsQahSehKnzSTYLBuHhvYWariNDBxokVulAZkqmkezFzaNpnfuoDmZhXHaCpcTtTwAPkZDrtcUseHTURHcUvUOAIUSCDqcJaLJfmMbZZCFDdEQlXPGUiDwllSmchkBTOj",
		@"sXAayHpAHSloLCYppv": @"DgpmakAMFhkhKEfvejtretQaSSTwGgmEeLJwQJvGgvAxpDKxtkDyiahCeliFZPsRGTykItJZaysbFpAYmrsfBCLCHlxoesTJZeLyYdtUgzMWmPZAFScnF",
		@"SgTsnFUnFNffo": @"PycYyKPxoNzxHWzhSNKvgoleTJzGXknckudPovxSLwCirFzWrKDtAnBWaJVqGwEHSYMrhBQrBkoiSwrtsVFtmrbTYTTMNQrHeJcbFJgEe",
		@"WbnQJRCUhbK": @"cRQUXMCMHuWrwGaxihKrHuRYkHdJaizqZWgjkQTBnXMYAsPZELqwsnmgBXafEuFHumQMPQBsnJCfjumaBXkKNuwgWYgjAAZMazXtZfAHBLaUfvsPLGypaqBNmzIUQVmTVdUFoVzLxNE",
		@"TbLIQCZAHJ": @"vIDQxpOtyljuepeJjvubYtlrEYWkxGLEMJnynpnQvhdENUOirtxPMTYOGMILaOFGBPwSxKHJLipjLplLERTNEPPmcbIgTKVRWZxCYSZkaIEhieCkWvOyFtAvIhYTXLUDfzzYdxsWWyowMGuEjIz",
		@"HMhiuizWlLxINAb": @"mQWOdmmegbACbGvbYWbGPTpmrQtdtXOkWajpYGZUvPHTvPwrDkZhmQvdFaMNoLNvktfNeqornHiiqWaKTtxEEcZSjmNSmkbGPlDKs",
		@"ecxJeHcwRwuFDi": @"kPPWcJDPDoOoKZqUHjqsVWfgAYHAaCUmgviRHjMVXvzBHNlSjYcsINTGlBUWsEUcyIcQMnleChlQkywyvYoZxeRPCLdpwiEDmUgITVeat",
		@"KIxXVuqHtqLRRr": @"nLOdoOJFDPbPzhpenpuuaMFaqwHopOOVAZiqSXwKAjNuAefxDMKtxOysvKfCtCMqfHYcegdgPnzelsZFwtfMCgptFxncdgOglkAhcZkltVUusqUwaZrYgewSHi",
		@"URYCdxcEiil": @"hIeowCpxjMxDePBYNfMHbKLJNeSuNwiaZYPmStfJRnfLGVXbtiaBuRDQZCFqNSkoTbvYrqIrmSmRKRDHXRTHeGgYcOYFdZqBNXElnmcHSgMTQuw",
		@"oAFksnwLdYVDjexWf": @"HJkPBtwvqiMXezXvdCOYxYSRTuAGlgmPgKAiGfeYnazRkYtwwbRkjmJMHVpDxxSjVcBEHXdRQIGNiFZJImFooNjoQQwklgtqaphNcwdcyGdxXHKMwmOSuiChWIfQoisxwxGQDEjQbSjFgLZSutp",
	};
	return yZjRjkLHPQRmc;
}

+ (nonnull NSArray *)GTjpexTxBWsj :(nonnull UIImage *)wGfHNWIqPvDQtEuE :(nonnull NSData *)QrIDDUrXUPopvkAK {
	NSArray *DHnsKiSDZgyxo = @[
		@"frOLXtlebwaYWDrHBwLaCYZyLRyqnSYLwSncwqwSZtGaXSGExmOCpdllbfZhHSGplfhlIQKuyqktbyuILHNOuQTXraYICwouPywhiYyHxylIxjgbfRtiYExGTDgFm",
		@"OkTifrUAOKbroMdmwZllUkncHfTuvMvCmLQqxdYcjrtLwrIjwJrcCloTYVePCchujWMxQnmmfDEppxppOKxMWAbONSlUzJlseLHszZCxwghMVngfkedafaZTYUgWcWpNWVSKjkboClaZ",
		@"LbByisDpIguvWPuYFjGTzgShjOlHGlUCyevPfBiAhrlJChkAuajtNjLYBPfFkBVmvPmFghgxoNjoaZRcIGbQgFwRdjwjGBXybimGtGKnVLrwulEeDTWaqERYdDuGzBUG",
		@"UnnllZdySgmcJBuWCuVNnQiwQexuTCpYZCAyAbtXUkAtJZSfdTTUksNaUzhtwWCudlJPPBtoioHahGVuswlJWboRvgtXNTgcKmCAyMbsUXRTuqhb",
		@"zIbYzUHmWpqjcJswUmjMfnmVPsSWaybsEVgrEDVCRMnuhpSdnOBVsbjjKSrkMNnOvKEjfIqYwPiWQBepTWtqzDoHeUJelEPLgaSQoWsEGmkPzpswrGDHKRVqbnOQGFoypGmyanb",
		@"RZLqPdbBcHelpZLzsBOkAyvmScqYJNnPDazUSaLYufMQJtLWsxwYboGnlDJSFRwJfZwluyEcMzbLshueUIxnjWNqmyKtglQefPvTftvFUlnBTqwHbPN",
		@"UpmeLrCJxbDyavshhVtWDeFwFmwRnGYlLzprvqeUkgmKdCYMMSbeyxsAcenuarTfveuLZpnmQxEDFGwyaqvYCNZlIhlSSvaGMHIkUrMFKDvmEgJszGNnGWOeeYgqgltqNOqiZeMPNGuTLM",
		@"sCnqLXFAmxfPjeKXZEmFJxoasFBunyEqWYVNZREedYyJznkJPOetKBTFtwfPxLPyZfGcWlYPSvLagZsPiOZLeNulcEohNwvdfHnESeanrBWTTtcXhedKtcnLoYJ",
		@"ncHTLKbVmwbMcHtUXNsaAMsYKOaeioNOgoxNhMhHRlVIyRYXKezVJUtbnoCjGAoMLGcuHCZbfRSIYTGFfztkCxRSUGZXYwVvIXZxfPJxDdcwNPjasWJITxeldnBF",
		@"VfKnxgDSUXpPeeMzlxVmoPdumrntbkTXazjqcyfJbbGDopQcqAuOCuHTcwSMnRkbFlZatnooynqPRSqGbtcPIXxWbHMwkIDfcoWbcyfZMSAtQGKmZWKzIJxvReRepnjtjbfMZGNcEUBai",
		@"UtwMIXUfjosTaBnbXkVfPRWyGDGrPwvYtNyZrvoFadNjcSfwPsuTaGsjKxtgqmKWdZmRGeynSEhjgdfVLyBRawaRlLJiIcZmYneVAYor",
		@"wrMNtBslQTRvTIWOnHzsQihuQuVtINFWlojCNeHHfjOKDlQxbvnHKLMyGJUupcTFiNOUiKPgKgFMvAWDnrDbmlwvFCgKqfiOpdbUFuJvrmSJb",
		@"YRgIZTgaSWjYgNooIkQSJZfKnMCyyOQQKHzwIyCZiSknsWtPAHUtjEdTGqyUsdewIfqxNmtIAKSdMnBwoFrefzmbWJDgZMuHkBkHFpsRhzPFyF",
	];
	return DHnsKiSDZgyxo;
}

- (nonnull UIImage *)LMzxBvDxSGMwwIRhNWu :(nonnull UIImage *)nsOxHlErabu :(nonnull NSDictionary *)znVSLzKmfmG :(nonnull NSData *)BHpLJFhzptT {
	NSData *JGYBcPKpFCJZyMRqFx = [@"UNQrZSTOeaHKogGyBWhkjkdVpCYMynajukLQfVNPYjVfMeVrkxOfnDeSXtjMLOhFANPBZjZRUHIbgWzETPAYcJpmDleElRqITtzsbxOgeDNVCVSDxLiybpiUdWhMAXPonlLaovDqaPqhIo" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *bFXFTFZaRJSkenfYWGW = [UIImage imageWithData:JGYBcPKpFCJZyMRqFx];
	bFXFTFZaRJSkenfYWGW = [UIImage imageNamed:@"NSRrHuBAgjwZbsgJPgvxQDKOnkkpXwLHVkwvjpmZhHoyjjAxgMGdSIsrCXpzRvNyJTjedcxQyXtfubQFagYlkJntXnhhyuoMebvSXBQxxbsiapAitfKlYcqhmbFyEd"];
	return bFXFTFZaRJSkenfYWGW;
}

-(void)btnClick:(magTimeButton *)sender{
    [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(responseBtnClick:) object:sender];
    [self performSelector:@selector(responseBtnClick:) withObject:sender afterDelay:0.15f];
}
- (void)responseBtnClick:(magTimeButton *)sender{
    magChildrenTimeView *childV;
    for (int i = 0; i < self.btnArray.count; i++) {
        magChildrenTimeView *childView = self.btnArray[i];
        if (childView.childBtn.tag != sender.tag) {
            childView.childBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.1396059782608696/1.0];;
            childView.childBtn.dateLbl.textColor = [UIColor whiteColor];
        }else{
            childV = childView;
            childView.childBtn.backgroundColor = [UIColor whiteColor];
            childView.childBtn.dateLbl.textColor = [UIColor purpleColor];
        }
    }
    self.currentDateString = sender.dateString;
    if (self.selecteddateblock) {
        self.selecteddateblock(self);
    }
}
@end
