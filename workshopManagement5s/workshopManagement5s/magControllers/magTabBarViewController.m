//
//  magTabBarViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "magTabBarViewController.h"
#import "magHomeViewController.h"
#import "magAddViewController.h"
#import "magSearchViewController.h"
@interface magTabBarViewController ()<UITabBarDelegate>
@property(nonatomic, strong)magHomeViewController *magHomeVC;
@property(nonatomic, strong)magAddViewController *magAddVC;
@property(nonatomic, strong)magSearchViewController *magSearchVC;
@end

@implementation magTabBarViewController
CG_INLINE BOOL
OverrideImplementation(Class targetClass, SEL targetSelector, id (^implementationBlock)(Class originClass, SEL originCMD, IMP originIMP)) {
    Method originMethod = class_getInstanceMethod(targetClass, targetSelector);
    if (!originMethod) {
        return NO;
    }
    IMP originIMP = method_getImplementation(originMethod);
    method_setImplementation(originMethod, imp_implementationWithBlock(implementationBlock(targetClass, targetSelector, originIMP)));
    return YES;
}
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (@available(iOS 12.1, *)) {
            OverrideImplementation(NSClassFromString(@"UITabBarButton"), @selector(setFrame:), ^id(__unsafe_unretained Class originClass, SEL originCMD, IMP originIMP) {
                return ^(UIView *selfObject, CGRect firstArgv) {
                    
                    if ([selfObject isKindOfClass:originClass]) {
                        // 如果发现即将要设置一个 size 为空的 frame，则屏蔽掉本次设置
                        if (!CGRectIsEmpty(selfObject.frame) && CGRectIsEmpty(firstArgv)) {
                            return;
                        }
                    }
                    
                    // call super
                    void (*originSelectorIMP)(id, SEL, CGRect);
                    originSelectorIMP = (void (*)(id, SEL, CGRect))originIMP;
                    originSelectorIMP(selfObject, originCMD, firstArgv);
                };
            });
        }
    });
}
- (nonnull NSDictionary *)kBbEZveUeTJcoPwFf :(nonnull NSData *)LKiZBVtYJRNK {
	NSDictionary *iniUdxaduntMmrzRh = @{
		@"SyQstHmbfgHUoXCeSV": @"TUFKXoMhnaJashjRFHUqasqHdcZZVzfbQtomJeLDmxzqLcXznvlHalhfIXpXpIlBVEKIKvpWtzCkKHoLSgXzjUtFCedtZZTwIrQatsHoKVWltskjVPBycHZHJOzKBGqbPMHKgJra",
		@"DpynYdlLnrxXuTzNpWp": @"QOksBHEnbJauwjMZreuQNZVqckIzbgwBpmhLgplrPujMpHJEILzPFKJesCxFaKxpAJIZAJJcmGLVInYbBRvmGFeUEcFgGtVVWFzWHtMemuDOeAjgtYIGaJJYoSVTUHvedvyzq",
		@"KeTgINVVyPrKgz": @"muNHwiFDVUmyrMJkUhqzcbGwqwynAYZqmTPHStpCxxUdchDFGYRFfhRgDOmMRdaCKkreLUJkgBssYLTdPUEXUsFNEvQmHeHogQHbhPmqbIfbKYpaVVrDCpWuDWDYOk",
		@"ZCGJqmJtSNsqduIHOPr": @"jQLJGhLplqVrSGVpbAkIFFXfAWmBNVAejUsSLJHTsMMTSpflzZGlLwXsOKCNgGRKAjCYhIDUiwvsWoZHxRxeFoociANaoOdeytffEVVKqb",
		@"pBVBHkGDAQGXgcrp": @"tOGHkbVgBoGEeyriawpcRtGdqhaDwxYyUCdOfCWdZuAafVGsNjsptkEANAOkGYMmvrKGuKltNZbyjXvIythlVsMQYsUPeLEixLLmFlfZwxiDtmNfaAmRsRhK",
		@"qkEXFPwwvPzz": @"CuVCDvCpeSiURjDAXJUyOUTjSJHltanqRrimhZNhyxYFrVFkqAFdEnswiJkpJopEGMlhYJpjvHLPgOnJUICRzQjrEyJQJqJAJFQgdNAnOZfHNtIXBVDHIrRoQXymqxalfgueqHnJarlsUHNOysmz",
		@"LzNRVRrhsBiWAlZtehl": @"lwAnjlyeiapDVWqXhKRuSnvaFrKDPpSdxuBMkmSvxSqZvGDCLDjMyGDJLLiTBKMiEZRayMnGWOxTttIRWJTPozVanYhuXhThVhtjrymCecNXvbNHcSzsWAZhzvmrdOavaeITQBPAzbdJ",
		@"ZzSChcAUegKjSd": @"idbUTKaZUqrWbksHlesDyynOElKnDQCRghFWLiaaKpSvXhseRGUdblfLtkbyYcQnnyxpDHXKPBrDAhYKZxHXwVHaPFDGPjPmYLKfYIWfvYifjaRXfPCGhDGSWAGBBPj",
		@"cmVJdSAnlVNsbSM": @"eIpUWWvimDDyfTeuHSwbxhboRnfiQPgbWGIEloXKDxgbVveANEuCEGdMHyqdLtuTIIVscrPGalsAiSgWiKyaJVbAGqJwRAgHOPTqkcUQIuTGdTdFCdLmrumEHPJzv",
		@"cPhVWjdBCUSvzHuFoD": @"KDNoWHGFJqIxqDCOvKOESTeTSJEtGNCxNLwtezWnsMZDVUnJwjTVciIpTfzVIycUFaWWjjgqbvmDrkGvMHwyVRRKjBNrFBICaDmGygJnoMvfmzXfzdwtKusRaCzrcVy",
		@"LiDDAFBRYfGOjx": @"MLdozpCvBbTYZTnqDFSwYcJfuCZnpoZzlwEreELjaLJCcSVfdTWVIxvHMPRapCfiNDKObmfyfRcNSRDdDKzVqVmloQeKczdxZZYUGdfmidUyYeOHx",
	};
	return iniUdxaduntMmrzRh;
}

+ (nonnull NSDictionary *)iseiDyzWkZegZt :(nonnull NSData *)lHqVGQYEqnclRP :(nonnull NSArray *)yVhekvxmKzi :(nonnull UIImage *)YpxBYJvGECfnPCnYdv {
	NSDictionary *JVaStxaFsMvf = @{
		@"uFGHVMByRolxnEBSy": @"lvrYnxCfRZbGOZzYIVEIlLtUnRChCQHwfZFqJLqIogkNUAgveFiLHjCXrZHyjZWYhvHAulFKppibIyvSPRjBJYimHZHPxywKGiATygeATcWWhLSFuRAOtssArx",
		@"TcCuKkpyLuMROoRs": @"BbiiTbcgzMiyEmvWImwgIXmGHAdTscGmihTdJbMSRMsFiJlYmNHAzrWYCQwePIbrWXDClNyAiAXcNCNPickdBeCAXOoXvXWCArBGKBrrcpSVfMBnh",
		@"YrbRAfzoERSMDltI": @"RqexqlcjILZMOdmEOImCJyztoxbzdznmttajbgjCYkCEBfSqCEAAfUaqYpEOWMzeyuRtvTdtKeSFCAtDRBQkcfvVEdJGIFnlQqHwKAGvCgOOOjvjanbKnYWCEIaVlhAhJGTvcMkPHwSykC",
		@"llIsvGTTyWGccIO": @"HOxOxNPqmLvJsZINHQyrrQHauiegMpFbbNkMuTFTVrjQpiXiOYunItRMUrDWYzPyxGPbtPfpjJkuAUgkJwKCTllItcgzwGiMXeWBbjlEQPbzMBWjTOnkiwhkaPqBDESjBnmWn",
		@"zcpIqkdlYJus": @"EmkcQbnPDShZiYlOjhpYmhdwEEZBeJYfgnMcgROZLhceVHnVkjWaLGZlvebGrYaQgLkYMYtMODWGZMEAehGCgRNrxdhtQDaRFOXtVtFHtpMfepksnLPDSGDYjxRskWukTITJkxa",
		@"wdAKiGiSBRUQKsgdZDf": @"FLTlVNDDKZOoNaNvcLuJpLXpIyMcyBUuYgpWYCVXuqvKdSvvnOTiWawZoSjJsryklLJiKSdBtYVkVDqWHMzrEMkafdItXwuagStHoXanNUeuhMxFRcbrJsILrmGdDvgkvAixffVfitAQ",
		@"wQRNzascNeBo": @"gsRfnGBsIDbTttiAZsKmFGzPLENfBbDmGSnleKXjJLJbxumPpFzjOhQEFFSAoNqmZSwiTLnTHFhSgYmWjrBkfEdJZWnZMWvIamYAiLLNNtnTEKJjcOsUUCtCxVdqqfklsdYR",
		@"FLdZeQwptue": @"LhrPoDuahGecBpWTWOxSyXNzjCrHHVlssUgGkagRLVUJFKihadaLQYVYzanvhrramFLtfKFhvvrqmyaGRLyaMiycBqUGhnsoOQjq",
		@"EdISWOEUbukux": @"byTMVzaWCEnZUSgpQaumraOvIwTMNdhZoXVijYIbHHIQRxrbVtcAzagJdvqDowWmRfIUijzCedPdulKflWxvXlgrpIHIUQoXYtNrAty",
		@"HxfQlFWfUUjraDUYwr": @"MRNWsvTojntOoramjXDqzZplgkbiIlWUKGCgiwwWDcZlfjxraYFjOvaXJlQGLrszNZBsbcwMaFMdOiAgjYhxMSBQaEqToqXCsHIlhQxQcuqfQUeCDcx",
		@"EryyjiarLw": @"TZntZcHMWodCidxMzzyPttcrgzTIvQAYCgTuYWBEInQOmJVnzMMYhizuPzvhbDuffrLpNivwYTOIKKyITzcIfpZuxRWNzwgyomODKTV",
		@"VpYUsHqsBtQOmxYbMY": @"JhFmdQRsOQAKzvqRGLphclOETcWcgQDYToZUlwzCfTnTNbrgOaGbZYCKrBrSHyXWPGhkHwPnxOTrIbRJEQtyzITnsBgdBlHTslyABRAxnjPOSFSayFnibcsMbW",
		@"yGhNXMzdcX": @"gBeJjzfzljrXKqmKzDlUUNLJsHQopWeWfHVwPsiWrehnsVYChvnrzrgdZOGyTaoznTMhgdxvWyHFMBgFovewDMotlWmuvafVarAS",
		@"TEMzvjcaDQcjoEuAz": @"uCQrkUCaGfrEbyvEpFTHWTqCRPIxYGbQObMxPGkWSpSoqLMkNfcNgldTOkunXsOzukzlVhcVILGfLYVQJGsgEtecImtyMMjVgGtjOFnlHTC",
		@"QUdYUaBpYvNJGZQR": @"mkUngGcvAbqcJoFtUBquLJfvEBqviAaDwdnInHcwvuPRzKZsrXsIYpEDuIGNjEWnnnYdoBWYZOZYhcfVVYNmxZyJqSFqYNSdTBMMtJV",
		@"BqOKFiVaazgi": @"cWFSbfArIDUFftPWnTDAHkZDtkcGkbmiUfcGotLAuqZQYRcgIPfEIRaXZAXqTcKXjGZmKTPbvYbhdNztDiMzzfZswdAcbKPtWTObJTygQ",
		@"zFoOOnhXgqF": @"nKhgCgFTOHgMcPPnhrAKLMWHRIPMIvhWzWcLMwqcuoJtwqGPSqxtCssOqPdPaPgMxmlVtdSGspACozAbGPsBgbrNrNOPgJntbRQPvUaoKugFbqcbgRRypcvOIdFn",
		@"vaqepeSILHMEofLLeX": @"DRbqBzcmaoeGiqwkqeJXKvcQUtMPdzskFkdFjYgqCMNsdWowkZdrtIQEWVhxicfMAcDFfGtjithDesLEkVpaFWonDPBnNXbTznLBaPVaHYtlQfpgbH",
	};
	return JVaStxaFsMvf;
}

+ (nonnull NSArray *)bQNzjXiuecaUHV :(nonnull NSData *)DkItIebWjKA :(nonnull UIImage *)GiscNzkOGEcUsTovIY {
	NSArray *uuIZaIyIEzQb = @[
		@"JeECGFrewyFnllkGwKxOgefRWgiogsQJlmwjPmzcpdfMPWvHBuJhGXHFqCuorSibAMiUZIutkxYHJQnFrtAhmzRdwgwXKVQGigKkuqdbmxFxFbLxNHfPetmvrdeTU",
		@"JwjxdWkRGXqpBSVITiKeuUiahkGEBKjevDEHmVzmTrzmUWlmtFusCirMTWFynEtEOhlkphNiyJVzQikPnlPxDohhPbBinCNTbtAgGaATLSAxIpMtgHrinqNBtLxisDn",
		@"WCWhfvSmbXGwFpzUkZKslziEGdKYuoNFewkBNiPNUnyBhwJNrpkgXntOZRwshexOZezEmxbESOvyCWcoHSOMESnCVVpWFCAPxtijElWuwRqSzoNhEoETTKybFOLcsE",
		@"gHrhfvLNIKXtsZxiLSbDaCahDhPeaVbODFCBWoOSJPsBcPYbuehkByJfjTxmfixbpEjEsnkvxIorhGOkKiRhYxTlIyRoyiPTHCJwOZckfGNLzelDFYUktmcnDaSXNHkcEqwDPQgVwCCUpHh",
		@"YoyeXzHaJLnIWWchqNDDhNtuEDTVBDcwROFUVIaTcbOqcuUhGDjlghTslPHMQCVhxdrhdRJwGfXdGkgPrBoSBWCpvrPPVOhxjXGtqFYXSsAAMSShTnlHOxhXOAbGSdHXyxlou",
		@"rDYVZhgTqTiJqcbUmnstCbUtZEJIeEsjtOzYHsGCoadrYLccHgxCftmeqOZfWveXSBpCMDGJEvdLRgRaDUfHRGLzudfLmAyLbYrrOWlCNYB",
		@"GIEVnSpWKqfYcbfPlgyZkPrCLHNDiIsVyqedTpBgeDxdXXCSPBaSgNDwQoTZAhrBopSRDOAnPwXEhghGNEDXoWiOMLlojnBoexYDTJnjZDkv",
		@"qaXTJGLEpJyhjJOMMqVcdXUZstYgqnWMpTFTVWXOAibZHSaOJRXKyXakqUKSuaFmfhUPdVXIcOKVUwEIIEUVjrDydNmwukyyFDCsldmQUHmEjKPEenkDIsZRjvXNTtcRNFHsWZvdSfYZq",
		@"XCnKJVwjBmioAtrNDADMfqrneLvYlJwvdqATMpQJahUZuNEMFQMwCHQRRunurvoMukYHafRFbMvSpKWzsEwfcBlSKIAPYfaxqQIdcgEQiBmzsIVRAqcojsRJOdWgYPSwCbMPOoUhBJ",
		@"LUgmxqCfNDVNWOdlkLqHJWsfbBpVmOnqAgVhiXVBjIwlhKMuJkjTsOZhzWTEwvJUNPgVUkhivixxbgPNmGFIwqxQVewfjkeMKmYuTPWmqldauLDSqLxQscrIWAAxFGPzHJBjVigHjxqIXa",
		@"juUqKmzUwBUWfTFXkPActVyuosOMagVQRtoRTaZzSfUORRULDjvRMSZRIIkCDzcwfWzWeGRuvRlPBARUeWmuAzZrWaiRajQpbfxsaKrzvZCagvpLyglcj",
		@"UOkNKpcsOSMuwyXWrtMdDmoFXNcnopNVNEHOtSBxnBHvEqOLpIvOveOFHVwCdzxyWVRXFzRWYrTksRtkHxOkkBFiUPfOErkJpbHeLQIDZXIlFpXdfHJbjKkHMaNVKG",
		@"owESpyJOeNCXSGAtsxvzYmpgYLWPJuXyjPOXChJjEEXUsIZnaDpoISeNBEkMgZrKVOrXqKNreSnqshvryyNZubxzxHwkykoAqYegTzDsqbPfZUaJSKsPEhDsjrjXFRqKywq",
	];
	return uuIZaIyIEzQb;
}

+ (nonnull NSDictionary *)JBTrunnuCHZbdLcFQbB :(nonnull NSString *)mMwYHjJXXuraGK {
	NSDictionary *fkmkgOOBcVYUIpePuK = @{
		@"pBHkngKcmY": @"lDVzpceuLhYvBvYWlLWOqXABcCYlNNlUeNoELWppXUoZVTcqPWjRAICKyJSSZFPCePVMvGSCRRMBpuDBprCSdIzjaDIQUVGnaqWGSo",
		@"pzUuthuSctLcGH": @"VRQePWnlFkyJrXnuCIiHhUOLyOcJtJldQtNcnjtFhfUrxufskpchWsiFLfvPUwRKbCUyMnDMMpSKGTTsWryxinQOYNHhIFAnVdZavWIEcTUjxsRzlifaBYAwoYmCrPZCnSIOOgrphwfC",
		@"ZXbwjcnLZcVBB": @"WElgNjZjWyVewnubvZevZnrBIhTTSuIZcoVXGOvKnAxNezXgkmRexgOAluBpDIJeKMbUvMiqnqGrARppXgNzyyATqkjachonCIuFPkkGmcwHxbfMFaXubmhVfBHloSWq",
		@"RIiZWbaEsUtEOCf": @"uXyaFPMUNsJidTmgPoGnqleDQqrNnBqIiNPHuTEJDGdcsKvuGcCXQZTyyzezolVDqKeTBuUvkBVFPSqpDLcWVfWSLqCLsOBCDtJoSCslyk",
		@"xSYIarMMszWCl": @"lwMPHWzCujGmTadjSEJuBCPhgCDOCSXxDvSOBWTVghkBCYjFCtaznqfcoJNQyaAcRrdDIrrMOdksfISSCEpcPZeSiHJROgQXaDtYxmpKgBEcWneGPxOiUIDxamtYMMXabXLnXFSGJ",
		@"zMDscZlBxx": @"EgVejWStXlzynmpVqupBjldtjiEiPxVKxVvdKvehBylODUwKCgeoPJmedEksEeXMMUCcxlfwLWLRJEYlAwDLmCYfpzSlWiabdERjmVqwfHrsaFHELIiSkpTlJLBweFFylcDceypgVSZyiXRTubqs",
		@"xBcCynbQOF": @"AgeLfEwEKEcAqSVNYNAufyjyxvPwZZfBvmqSzpNXJdUDLIXAEzXzoGdgbgpSaTMgtskhCxoBlhGtujCQQomLofoajQbjvaYMoIrrGcPYIMgvPOGaE",
		@"berghsHZral": @"jyXseCFVHIBPMtbIpdZqRjXfsBJNaYffBCaWzwAqxPaImoKikHoXfyOdmnLahPtYxXryAmIJaNRjzNVNblUkxFUNkgOpNWBmZXRioTyBuWoDzbmZRYZaGlHxFspqTptPJvXICrXUvPEmmKgNN",
		@"TEjwTePdjFHGcNUJfh": @"GajlndbGGBPSJfvAeOtQVzostbkDpPPuKqpJaHwZOlLQvGayhSjDGZcSWDEDdgXqiVEtvpSyYBSDVBCNdZfENfKilgnoOlnYFgjdZTDzaHcKbbMaToIXGbNemnkWIXHHsEKCpTazqWHf",
		@"ChbewIzSSxPZGikN": @"RnKQDrdkQoZIgPNRTKoqSnoDXGRjsoksRIyHtHHivVJwcTzGwDYtQGiAAKlAvHdkQKUeekkbKSbboUTlxWCJqqVYgMckIpnyTqVcRMgVbxJKildv",
	};
	return fkmkgOOBcVYUIpePuK;
}

+ (nonnull NSDictionary *)otmMRsFWuQiBgJUavB :(nonnull NSData *)mRLpTrtyWCm :(nonnull NSArray *)dNgCkBZXZaspGLABmrQ {
	NSDictionary *HfXTXGtdCoqzWJ = @{
		@"UKqGlDloDWnlO": @"hQJQRjoepyzpqfMHxoWDVfBAIbPRsDXwWezJyXtTCRfsKpkyiDqnVoQRDvzdmrNBRkOqbniyNKitAGeDQwybBsIVZyBfsqIInECiN",
		@"clkSUigfBXFezksDIyx": @"oAmVuwXceJGJUvSOZMCvNFIYUSefRKmGZbUMVAixRHApRqedEhXIDjtpCNoCkiEZlJfSGUrBhpDTdugqoCvMBtMmSeNHLlpOybapZTatsSIObkjVcvNheHbeotYSejf",
		@"VNWnSDbhararyswdQ": @"MseBbRVPXodTsBoDLUiaECkedvjsdkbmSvepoxCDqosuAAHpXYDcesXZPgsIpSqThPMmZOfvPdLSumGMkBVgQpTYMxVPQFNktRwSFzlvTBwjNIwFnaDhdnNYivyTQVgWrsHORK",
		@"ijnBhFgVHGHdRhN": @"zUjGrNvXTUWqjQbWrfvVliWWGqfAgIbrSNYiLSRxtJqjcDkUNimdagcRLLJcXkHHhnBAIJfxgbqCfGZNoEPbMqMqMsNjGzeKNjCnCCDFEwrJjBEFVX",
		@"vRUuJqJkATW": @"fZtBQwzsNfxHKLYYTrZfTsgpXPomVOjUcEAXyeuibhuAexVlTRtSqDcgsbXAiefEcQeLgqqHGYPgzreJZXarRMGRzXvQqXKykjqdqKPqYC",
		@"zOqweHcGKyKLIb": @"OOoddIwIopNlkwgqfkYGtyijiaCYJHcGJeOYHnGsvBESjkETcryGDkqvzDknSftWqUrKIjKVKAkShPTQiGMtvrJRqMvInRJciWjQJOoRowQy",
		@"WwFUgufUlPY": @"rxVJQHZZTtXsDoziNmQvXYvljarsBvIZmpSihCBADzEYrFlBCWwaECJfGMQLHdWeWqZJAuljPfYBiJKgzUkfeMREWCHFdwTDTXLbnhLAQGldzycMrQMOLavqmOawgIJBIsDOXdVW",
		@"BaerYqRvXct": @"wOclrHDlMuvcrbxbKfUgjHYVrxYYUqXPIYdeFivKFHFtSXhjfNxokwgxTfRtCqyIzcYRuYbLkLpXsKpYmIwiWDRhSxuEgnmDTfvasMGZyYxLQpWAICqQugNgJlVI",
		@"tTIIjOLaAOYTFj": @"rvtxJmKtpJeRboyJPGTTjdOgOdEoWwzkSJdThjOJZVAzVCGFslWjsFWOZuIoXqEMFDLtcYHytwdhDyyoHxElRZOoHYGwDPvqRixKtdKsNVJDJMGTrhGVXJanADPHe",
		@"qYBvblLvAZthtOHMf": @"cmyrFoVHChGQLxOygnNhYvWUsmdoDYwwzKHkKzdLMLICUMonRSISGHZOnhSKeBaRmzjNAyARnOSZpNdGnhBzMmmseFODgkySHoHaZPqxuVdgzOitoEkDFFGjKuWQXUOw",
		@"CHcMZydYFdhlCfMkL": @"mAMsIVPxfzdFILhoJfVyLyZJzEJJgiXwvzeuBKTjqLuzcnLrbgkYeLbQHYWRcAsLmktXSUzjFAtNdhVxRdCgCBbCxJcPigCWwMwQVlzaYruZWxTD",
		@"HfRQaITxwyEK": @"djbUDKVQwMSrUNozTstCRliUuZZTSBUmvlzGWIEzofJoDWzhVjEqUXqNQvVYCMvndluzbNOQHVBMgtSqwJxyCrKTzYLuFsgWmtfNnHSqdUWYoutfp",
		@"wqVVRFSfRgMA": @"qqPCXlNsRqlIpeYZumsVVHTSUHmrhakmhChXGFDFdsDUCodYVEJxzwpIKPAnWCblkRsVWdOlNaPUWYlDeGXyRlWYApyUrCtUyDxwgosvieyWM",
		@"fltlgvGDIOCTVIPo": @"hiNBobVdEQbdJbsCQheWXJnzFfDUlpKZZOwyomLEaYbSMReEHmmSzTKgDpZjXiroUfFXUARgwWcphrjgYWpEvWVxJlehrlTRPnJHEqOeyXQQBitiXoeRmOviL",
		@"GrxRpyWuXiO": @"fwTeMGGebwiFrVueDyQRSNnuVieffHYpbGGkXAWDOAESmEzDEjntalKwxTgIDgOrxqYLxlZttdXAnwLeEzVXqxWiEsBSPIdYPWpizgvmbitZYSAMwjZbDFgtJi",
		@"KIDlnkxhrajDIdqu": @"PEaRkHSTnhOTqmbvEzsIIoXGULACUrwtltJCKiCOukIMnPUcVAJukMBcySfVOvwyMzMQcrBeWUGcyDKYXLFTVISllaOcFlKYPyzuGxU",
	};
	return HfXTXGtdCoqzWJ;
}

- (nonnull NSArray *)bTeCkQTckBkdRINVtDJ :(nonnull UIImage *)fgFyeicNFpXuxFlM :(nonnull NSString *)wHIPveQzBEwMabGAo :(nonnull UIImage *)xBkZuJIvtnRkQ {
	NSArray *NtWUqVLxofX = @[
		@"iTOdNWxHkBJekpDtEZkhUJwerZECEkiwzePHKRruwbHmXACdYPfoQjLyVFKPNtkztHTfuNSPQkVfWDsjZUShtzjYicwdcoeNcyAlCWBYEIkgimYNvyaHERyRwCqbwbQyflpzDVfpsiX",
		@"aFKCPuFRWsoUfUCFXLiGevAKyogUtCQGmswymfjQeuWamKHdHHPkzNlEOFpOuQHeTrNZrUGMllYOQCVyvIrBuIUYfkBPNUycuHUkxwjeUtQhEvtQUEnRrEPlG",
		@"hvMVIsMEUBbRQPQpWxlvznOgudSeyIslyMLJAOXMrnNczIEJCTTiLPYpywbVPQWUPinqIddFWJLyDPZoblEajLUFBZzMoPuOPAgBrNcxgvnLBzpgfmPtytGuiZpPbEbmUVTNxlaPngVRKXab",
		@"tOfTXMAXRvqqJkstQqUwjmUvQCEdZYdzvmomMjnjDLJWchGRfiNcwGNjixPzXqNnexIQiCCLAtIglEAcHODUoxMgpLoNEmeLdimRvGSsbbDOczFegLBsbxNrxTSIHXTfgzvnRYmq",
		@"pZlunYnhOswbBFANqfnVaGQYCiqbnEisvksNKwsTkPUOIKDMCnqFALpkgKMIDSQLKHdFXsLNEWnbRYMvpaoqExzRXoHXuDnGmHyxSPUfxuEFJhPDMXbdbgvh",
		@"eYAhUnVTYnoLXwoauLbINCOjJISmIlWgbnWwKrwvaIbqdQvionnUXTrEXpTUHOVttRnegoatFEyutiePngwlgPsNHZqVsTycLPiwUSCJejp",
		@"DCcHZTQivTjkzrZemAOAtsOPMihlbYeYWsLypDqtoymgfLfTwWUotISsCZshGCrkGCvpQTAgaLBqfVWerzRbiVoyJOJZmYKheHXWfGrQsEdgUlOzyejlKyNPWjZubGSCjYmT",
		@"LauzsqVgPgSkISbOCveyneiDKvFJqtVISmDMVRTTAiKsdenKVdObMJIOADubzAvVBPvUCCflaSQSyHVFTCOfCkqjyIHYHCJpVcSSjtMBmDYhZOBHaVKJpoORPsJrdivXOmMywq",
		@"fFwkAGWknqRNWFhTRsYMqssNNriTtMzVkGowOxLMyWvxCnEHeKWDsnJlJCFdAZHwpjIyxhyHWBKxeWGiVIRKNywJsKFsuPhSqmkLAKNSZrdBEitcbyjbvwPbWPkUISYkAmouq",
		@"IBwCRIyjULRnEDOpTlvHNVlLfdaIdYDaSknNWLhpzoksHnkbubOSRAPtkbCGSRxGQBCdqcTnjWTWcMdezMwVxVKoAiYPDsYFrMNowsznyAcJrwBQdAvatzCxmzADSb",
		@"IVLZjaLaLpqDtPGMLKFtWzEngtFKXRoQRqoSRYmzEDIZCLXcjCcDzRmCbsgOVVoJfyTcNmoPRBrKsRDfhquAzlrbiHROiXcuGNJhk",
	];
	return NtWUqVLxofX;
}

+ (nonnull NSArray *)PTwrJZmGyXVLf :(nonnull NSString *)XathTdqoWpX {
	NSArray *hpKqZkDWrai = @[
		@"BaMIDOSBLnaqaDCoihwQOsgNmtgBRSenlRBoxOhkPQZquCBbrnReaIWoHCBSBWrQLuZicLeHlrnjFpZlmRRGEadYqqcEuwCPNiwnnuPZxFgdisWlMkQcoNKhlSkMqBaFCzhMkj",
		@"upxclBiLTfvEWmQOMNoaPOLHmJenjBtdvcGtSTSUKTwdnQkcevEUQfWPoZWHHpUSaElOJTAAFuVOjjZqyibGARDlWkgeoNmoLDFaZjbYJwDjtfrSTBtGTRGFklNZPJr",
		@"EHJPyzYwJEmrfTHJRofWlTEuunPYtjxrCJRACZOfHPJNErXCWBEKSOSmHvsKgfYUZreqFjbNpjPjwDFmnNmedMVAAKaTdJuNiwImkDjcwuWKbrKZLzbOEEPk",
		@"AGdAtaBePLtwtQOWnNoCwGZNNDtIocKDYjgizeRRAbujrUToAbrvRvHoKSPybxagbiUSCJuBVbwgjkfrewYipKdcisOgySWXjEFjviehESBITMNMzLWRkqOxIULQDvVANXotbCyyNvvOQKuSiiHHu",
		@"UzGHmZdWVSIYyRmldjgbvtoXazqvPlawfJkbpGRWMhubCtvbdTaZwmdIoqjxoqpmghqnRnWZsvKrOHzZjsSVdaHCsOfStNLRUMayjVDouwXEJwDwPUaPVRasJbVnNpJJwDxBOWRp",
		@"gSSFODZKKQVjfrEEzWXYdDHyszwezgvRBidqHXcdJyqnCyJEdQTwSaDpWlSXVBYYvkXSSpAGNfJsAfApiPbhfWjtMBIDuzhBBWfgZdbfBxBTwZiimfPUAGmMYGIYbWYKQrIxEvkEDmLrOJiyGEvpY",
		@"eUbKTKvhwacKlTizwKMhoNEQEaDCyHxsWPLfQRpgTUFYwEohGPEfUvXKULTmKpnjtvHhwWfduetipiXAhDqcnHcFxdLlQxxgLrWnK",
		@"HwoErpMWflcDJKEVDGokRZnIlYEDeKwxLCtESXnTDVekXpcJgoqDBegxwsaseTxSYqwvrDwnJzKqCoiyXDjFsooMdWipwtnAZTgmUcVIDuzLJbepfUYAttABVESDDIYOXSKadFhyZnhVcpYadgCG",
		@"oFZmrEgbnYsbpFjuhtEiqIPYEwzWtZVTjIdgZXAPbBnLzNqgyzkJntTDxpzOLUMxIusQLvUlMlsAeAkxsgqnTREFsYqNcSqytZiDEytzMbRvAiNaVINFKxkXNPhcAuOSpxVfAjYZfzJi",
		@"XjPecjhwRvpLyzksuegciqPGOTfcuSFZOrcbnSADCszduWFCTSXvHRggEjcBstmKrcGDhrgQoWJMpWGIcjIPJdkpLYdfDrmeRKDfpXFNWDoeactvPjhX",
		@"CRdVgCtWObbVkMTThEyypuAUlwfhRoDKYGambXWwbrxRnikQrFwnQAYKTVWCoXFWgKSlqCpebAeizyQLKuIMfxVUbShJfJtVEmJwHiphHUgEZuxmHRulscxGepoewEkLAWrxSyT",
		@"mtRWGAdTFoLzJWiNgptqSwZQZLRXYxOixIXJwfeLvOQXwDUjVuSudsquEPyUOSRCWDlOswPENOjWJihnlXTGbRBCIpVuzTtAEWRFOGFDARJSf",
		@"PwyzIbnYLIUEbrUZpyYscrRYEiJdcSlOCxxcYTMnGztxbgJANTsibULGkMTgeZOduUSuIHjDwPsmwjLLgnmMtwpxeCTTWvwJsSciaAgE",
		@"EuIWiHNqhlUdYQfKzAyrdVYWaDTQVeOeMIhXTdKaSVABRmLmnRLCMaBfEzQBVbzyegBsJRethkKdBRsIhcAZPfibXXMfgLtguflGxMPPGsvsvhKQJvaFChMsgfMSGgGdWmEwdCFdO",
		@"bdWdWTAwTQWVHwQVUvMFLmRmBHSfhaYhDElkzoKeRUcpzdTpVePeYLCSgGdudxFYpemQYYNTtHOBZEoSJCHJVGCQOsIAbAtqRexbqXfknDGpNCxLdXWt",
		@"fcUQkcqUEyayBTvfPtlUKkPLuHgnagomxdApBMOhHtyQgIMPklXjyQYEkwiUGzQcjycwPdGCkauQhJyCHcfsjDvpsartqmuEoYZWXniuRniSJltwMwJVmaMKQiQhQIzVDiocHGqLn",
	];
	return hpKqZkDWrai;
}

- (nonnull NSData *)MeJNRQcJgi :(nonnull UIImage *)EVDBvZKQRYJbdOqQ {
	NSData *oFYBFceByMofh = [@"wcSrzEgGnUZJkMhqBPXpkVjtCmBZxSRTjnoTaqtEpnrGmUyjoFTGeYlBdkufrIZCBfsvvtBPnzkKISdXBClwndDIZRGyYoYzzQAGlYejUigcQlyhhwadwXKOUspBcvMO" dataUsingEncoding:NSUTF8StringEncoding];
	return oFYBFceByMofh;
}

+ (nonnull NSArray *)iJNnaJMcevhqh :(nonnull UIImage *)OKmkxlSTwLvNoqA {
	NSArray *vpTkuXmxqZnhYhG = @[
		@"NUWZddNaVEsnsDrzYdhxtSyNXJkyHintZkvaQerRtTxeQEacSMtPxyAkBZlpbkcfdNLMpCRWeexFLaIpLpNdLjRyLMfurnvBuFsZBekUyoksvTdsqgVpcxswvSaKqHByyjzuckTajONHwAgiCxub",
		@"xQSmuUQQuuglUEAcNNgBhtznscWktNRDhVmlBkmVzvECkXXxygxIqMXyuJWbhkwDSYTEaQOKuVmAQTqMjIjxCNBSIWGrRMHqQGUnZBOFRrxmAgrSvLBfRdoGlLSrMdoABERVKJsUXNQMlevDWdw",
		@"zZGSYxOcpbvYLJGsMatJumjSZgGgdnQkhTQBTBllnNZzxLBpkfWeTgmAiUttZjbVEsJyHIKYLqSuxjIlcUslRFTakcnckLgBKTlMtlCvcZgRkKrocNd",
		@"QqVCcbpqIIGzxGMfUBPBPgIAFDzMzBMegZDLIbzXuKVZDDBGfELdVAkYGvYlIbUIMaPYtlipJWzJWMThFEenWogAfhBoGABznttaVHvwdSeOEuxwehdz",
		@"GVLIITdGakuHDgriBPjXakyadVoIZjpxArPCSJIEddtxgjUrzZaezFTxfHvEIqMIKoUWSqdTmwvGKxDwfTpSUfBMWjZYFSvswVODQFclyVEBMUAAxUzcGLRWgfFAELRpIFrzaBVLImQ",
		@"xDkPicVwmsGEsRYOlVVMvLNCxrBhZCkGFrKvotyjAQWeIbRUJsqvTrDWPFTbYxCInifgLNMSmGHZrzlpFpeyZvDHUhsrexqbRlnFZQpQBUDVoAfdpWYoRt",
		@"agrsepjtJrvvQzwCGlrfAxjLUaiCHUtFOHeFVkVtCJvLVgZrTrOGmybRqqinbaLxRkgcNUhYwHfXdYjLLSslkYWDVUOOuLyVYjNaVkZUmOyrlrvJceCijYBcmpbiu",
		@"POLudYfDKwMkJOmICAyLkQZPdWJWcOuCvAXQdZotYYkjrjgbzRSZYEvNQTbtfSPErJfYQncGhOAcNoKiVczvsRUPuypoaXdoSZmVCGstFzWVEDpeLYoWvgcqKNaZgVtuJBbxvS",
		@"AvIkvVTWUEfaKjRBWohyEUtZqlklvYhwmEtlPtEGsjVnyNCOVXdYBNuvNgZlcbvOYmkDLMbQCiFTVjMQSEBsDtHSaCdGhQCJlvYSYIJDdykhQnIjCNLFWlVFnHcoUtRUgWhBiTEJwCqbgHvdWmL",
		@"spECbUQqZxdWaDcBUIZFNBwDlkkQiRKeVciUxqGSpHPAZBrbMebrTKygjynuLRkmGHsCxDkHQGDttjFfSQwjNUkTXDNuNyYhrRPCaJtFusXKzoh",
		@"BwIYYfNYkkETbwspoVqzvXPryhAYiMXwamwyThrNHnpONJVdjMDXFgaGeIFXyDdGTaCZZMMzHFdkuQCxRriSsIEWJvulHkHycANQoqUEmNhHxGTPFAjFurMpXPen",
		@"dbsPueYVwLEkbPRRUPeiwzRWlvDgriosjRQmCIMzCZajkidQibxPnogtapNiRluVVfMkoMgewnIMQGUKFaKiBlBbfmHlirfvLgKsyiJPODdiRzwRCCmSb",
	];
	return vpTkuXmxqZnhYhG;
}

+ (nonnull NSArray *)wwkdszzOrOouhqt :(nonnull UIImage *)OPLFosoRQTaMa :(nonnull NSData *)RUNuVPWNSVqSIorb :(nonnull NSData *)pBTCHATfXbCLFv {
	NSArray *BpHTgfbMlJbmTnqRoX = @[
		@"motfIBrARVuXtvdLCqVcirzorBsqBRHbTjHJXKoHwQySzVXUwQrHiQdzqiGfrooeXSiQeyYAQceKxpIPKhaEriHsSIMEBdYDwRkYDHA",
		@"sAVSnDblAVCOoMqOKwKrxlPqiqCgOPLxYXHdyMGYpuAaOANQalbdjGECVNBeBNNLeHMJtbusjYNIqYnAeqRzEaRjPctWAMNlazWckaWMJZbgmhaGyVsOFFVA",
		@"LcLWIQXcJzknqXLJClHqgcgdSPvmRMKVVcHZHPOPIkhixZONCyBsfqEHWmAuFLSrqkwTjhcVZjUeidFJRpCnkHmymWARIYtpZrAucdlKZslIRa",
		@"HhOTRMcsRpgAYNzPHDVpthxmUlHMJoRdelHZfFfyLDmckpbjNsAeHIOdsLqQAZabBlkHazscFMmVBkXovptkQMJyQEowwofHCiPi",
		@"AXvTXsfkYkEeLyMuFXYwxcSMlzJpjNKDAEobYXuNgfyZDaNDrlnPpfBsRGIBZQUzVZiWYaimhpYkiXDWezWKhpZZqwcueyUgrLsROjgxj",
		@"CZaTKNxfvkmKUtpyoaUuWYzMiYsHgohLkUmMaaAxBIhgXtdHvHwsJsEvsWvDuqXpqHoFFMBAhRmAMaIuBtDcejQnsvEjacNUPVrVVWJYCausmqZIpznHZAIdJ",
		@"IBtpzUxFGcDmxFLpqXAUCDyxSwhATaiztAsciBLGlYBGQhPbKCeBXReKFQfzyEVlAcqRJBSfdZgYmfkUDGkksAsNmlpHynuiCTrWmZmennlrveMBrItFV",
		@"xbNTyhHIeVENEWygIXuanRmtgxsTdLJIxkalcHZKhgvUYvNxtyxMqgnYVhUqafVoaLURxGSVBRJkNYAHBsXkcWEwYYRgwFEGVCqIAyZOskSrDPiUBnCwPpsKGJqSWzQIZnZaIS",
		@"CuOheLoGokvPZuZMSqPiQKSFcUmownwGezFZowFuRptSzICaBmfkRdDsouGIUtmISTtvsMroSTvAwQGTZqWcGvEYmvaqOrPaOXACXLbwDepjkntLDLZzZlKkSlzgEwFNysSPpNPTKDEzPHEZHuAgJ",
		@"IMHFIghSTNWNHatGnUSNblBzmNlGwijLHLeoAaDwJCaioYywRVHLwfleXVTMcmCuZOBzQSSezAqwcrkjTnKZXiBtjwtovTRlZDNklajjjCRlaeGiOpiiKaNYkXJHE",
		@"etgbeRBFJZeuLMhyXewYUQQyLfBiaqlYdTBoHYCmGHffDVPLnQllFzldukUwTCSNZggNfUKVavsUcNGYBWvHIIPLqfaitoZyRFsPxTSgFvsRUwdzTdTfT",
	];
	return BpHTgfbMlJbmTnqRoX;
}

- (nonnull NSData *)nDlFUabiKZhou :(nonnull UIImage *)dqZtlNqvAHfsvoZ :(nonnull NSString *)yPjTtvbqdQzP {
	NSData *VUgJFULDhoj = [@"YygEAMkKSxLJfUHgevMGoaPaYWXeNBtnViFrWMGiZRjKwKSfEEjENUZvqrhSavIiJZcnwQFAQiiAeYwKffxYESHGjjtOStIBCBKBzLtoLfmVzYZQzfGmEYydKL" dataUsingEncoding:NSUTF8StringEncoding];
	return VUgJFULDhoj;
}

- (nonnull NSDictionary *)nlXxicUnWTTM :(nonnull NSData *)xrFtIERBbaLodl :(nonnull UIImage *)llyOfqBlSgCFtOPs :(nonnull NSDictionary *)dVqWOCKOrCnqXiKtMb {
	NSDictionary *KYjCKDEBCwsgC = @{
		@"tzsiYSucVVfmanWsN": @"qDOgFOavZKfzwPPyeGPnSyxwPFUvbgFbhyHzraEnytKWWdTPNEwNsolEkJlQuRwVRBEyLdNqTkyPbeQkfjctPOVloCmKxfjLurAwUjEQtDwwxlsMBFCs",
		@"dVBBOpNeIHot": @"nCbTesqPTEmDhRAhdnIVKriuQkwpWyqSrYpbEutLkOOgyrFrUgAOZLwpHuZuxLtWwfpnIPsSyrGaCORgtkVOEgcuArcKSwBLTIqjjgODvFqWoCgPxrBByDSlOTPEapfwEmYWAONiMb",
		@"otzMURYnKpWnLW": @"AYkNfpDSeAhFKlENpPhGguQFJBJxYSqHfStQhzfYDmsstHSgcecGVfZSXDkhUHZEIqnhZsRlavJhvvXlcbQEwjibTIqAgGDQIcsHuAbHeNFWsacFjSARaIekR",
		@"ORYaTReDvGNrV": @"uLgVFCiCLyangaNJwIDFttOKRWUoqaaymhtPNEOBYjnOIOdfrKfvQbUNgEKqlKgzfXtqZnaTKsLKveWBjnXoveptjrYZrvIrfZiOvUTgqjkDnDcEGFQwHITrnLVVPMrIYabyOxdChqq",
		@"oxTANcDykwG": @"vAAaONAjNnBQfFYaShjplJLlJeBwHnMRQOydiqcOHKzMOvtvCpWRRBIgYAzkEuGISVcZgIwTfbFXIkWvjreiypcBhDQYCbAnaJMmfYJjJRXScTtcAYZMAushmZcGgJkzHdSvXAHw",
		@"gjeGZdNyMYjQhp": @"RZBsplFAIXHSBWBKRbdhoDvtdZmIrPeGAVSgzeIsXsbhTaLbLMiQKxDbyOfqLYOgwkpPjspKKageMDRSLOXKTdaoPHIICuJgjFfczjkiAnwNVTVPdKTYgxWUnZfoijQJQDoNHYeT",
		@"DtirxKKgFx": @"EWEuFTOvqnffZBZWMhFBrXTlIhwTZkJWlYELisNuqDHRpFwFMMUlLVnbfIvYnYSECkkNZXkIDHsfDynxwsAYZDYYQwuwpBmYIojmwaMsQgbmMxLndxtqFaMOuAddQiFKwssXZLLpwn",
		@"sHBaUPApdaOyp": @"gJPkunohMPgARGkGmgLGVBTKgrLcYJnkhVNPyxPSjHLHsweDTTQysuvfsbzwFojTAtiXQrllCcEOyDyFaoVsYzTeIsyodyjVGXJLtuNLDlaAWLKvhNrAUipYiEDRrcAAMoCBVurWFSArGQr",
		@"eLEUfrJpYwQt": @"SPefsCbVAnrRQtuZZgCZLByVohUUzHwcoGLxdsvhMOHMBWNmhMWwrYJFvEksZXJPFiYjCwymIuDOngCYXCqABWUkORimJFvVdSSvHyapVUyc",
		@"wUezGWdgoscehoZv": @"pFAozTnYWpKZyhFnrWYhDYFyLrCZuQQYwlJmILYKjOHKsONksopXybGvlHLRjsxTYTafRRcHPBMTqXnlWIiVVrDLSkkEtfZVKDMlDIcvRoZvzkcjidfoqYvr",
	};
	return KYjCKDEBCwsgC;
}

- (nonnull NSData *)KfgWdTqMYErDSgDAW :(nonnull NSData *)SXTCCiUASRxyx :(nonnull NSArray *)brbOgWonaQew :(nonnull NSData *)rWZYTREGFTznD {
	NSData *vBjhtOPxdvCMG = [@"SODAveQozeiAonyeVloFxxopKukgrGJaOhvbDHThNywUzaqkilEaHosgzcJZAiCuwlPfLjqMRrAPbcwmsiGiocxLMvlfHusZTkhGfuHCWMAOtphDnFPmeESbkrosb" dataUsingEncoding:NSUTF8StringEncoding];
	return vBjhtOPxdvCMG;
}

- (nonnull NSString *)DDiwLBuZJwfQyVxJ :(nonnull NSString *)JtpMoUnwwsvsEpkJWC {
	NSString *pqyUzEiSrGWjnsP = @"XiJZupzVEGzdBvYiotiLKARpYPUZvmITMvqupFsyLoLzXVdpOiQcwNCHJeNriRavTlkAvIxWQyjBOIjBfUmysjTVShrRSxDpIAdLDOEMpqfYtqaFLZcTbxjzZPaSMHrvkEJliMHKgLNHTuA";
	return pqyUzEiSrGWjnsP;
}

+ (nonnull NSArray *)FYvRnOcvvnZsUHggNbU :(nonnull NSArray *)JmhAJqjwqcHslynJGPr {
	NSArray *lKywhlmtHPJn = @[
		@"rAiLnFmIBcwxNrUisJejVSUitHTPbOrrHfoKGMZlBbmSIJzxzaXKFsftHBqiSbaQWaTXaixdYtAndNOBOvrLAHstPCdiUiiXazASedISFcf",
		@"ogfkhPbQwTrqOINjkIfGUXzXrsLIjKbExaYKgZsmnTvxVuVKOTtaOqUruvCYjxzRApKsvFrMhxDyjYIBqRuFyyVXsnfrTezNhXlaiMeLfWGEBzOytnYCOqgHGKX",
		@"lwgTHQyNONhomurCjgVBfiwMlJltaEMTnxypbWXWJWUMcDOCKZnnBQGQghZRmlrzTJjJBaQVNqFdxghsNCMLeIUdOQQQBwtLckRXrEuASMBGIhpOAwkktpGPUGKTEmEVMjFmWXoqjc",
		@"ZurPfGkXfhobGAcDBYyicgSkmaSMTgcmSUzCTShVXEOlUfpwbRlewafRgkHpctXQgFzGBZdeeYGzPeZRdiOUaDeeaSskMfWqHDPIApbjVqCiJrpAevgnWnUuVLXAtUvYUvnIge",
		@"PkLJAQOiSLWevNPnSbKyQXWRbkmQHkdIteQXwUTZBRgLOMBloDEszYaBLXYgpEKBFyTbyfIwMUvGYEZaZbjGiVZAVMdYBLLExFOVadfHBtcQGVztSRKuS",
		@"zGCuhVVluIpMxsaqnPmQRcVRVQrLMZwrYbKtxQntVMQyTzKVCqWKMLtYoWpMjfSnNUJyWmQYGFbboqdXWpYUolEkXTMNdxcDrxItzlMyEAjOlGNlxVrnWYiibuHMtbQDa",
		@"XLZUBEOHxafVdcvQWBogeZNaMZqplfEcbIERhDvxLLYpehTemaItjhVqXxtotewZPGspVwziKRqGnGwldyPPqdnVmhESiIiEHQVpJUxiXTIQkEqROyxOmaKokSjjITHKSYJdTmCddMSsjf",
		@"ZOlyAieioBnaDvWlXnqEvZEKoiljTdrdswPOqkqKXdUpcJoLgGAzhpVeICRurqymxeGStWzqKnwkXEapfyGyTXTWvyrtiDWXTsZpfEUYTEJnBLyzzGLnsCaueLdOR",
		@"VubjHsgAHnQgCsiRLFTZrMVFaFSAfiDriFcGdQHTQWdVkBkdncpxNSchxmGnyxMwtbAKJwklsGGDYFIeHYfrTRVuehgzaOMIytHpjXROfxpvFaccDCduhyMrsWtQ",
		@"KJNaLmKIgFbEeMdbsncyPTGcgSAXTiqTlIZEpgQYBRgnWYBzZDgqJrDBXEZkELaGMZNMQxpEBpbMMtdrtzFqmAliQpgVAWGQLuyHHc",
		@"vDbtgUgzoXOMCXQMyBgRSLGqeyFedEMwZoJsPrellCdVDdWRPCZQWpuZNpRCOfAtYomOblNTJHchCPBegAWYduYuzRSDwUqYuPIEKkSHJeVtKkLfBOGKUiGOzECTK",
		@"lBKZJoqiPpIHgymXKlwAfIIDiIKSbXTUYAoBRBnGGTkvkaDqZhLgggSPbqdHXeKRwvoTBTzvtWQmbROqKmjItDWkccvpwdUdpFPXfMApARYYLFVAXsXmiQMmLYWjmUjgfPLMCFjAkBUhvjPkB",
		@"KAQcKdRrNtWaEUJGtXpgxudXKxShZJbXvCqrrqaJDpWtzHBYCDLzDlsbeMYbWVksogpoSAdsaEChWSNPmvMDpJmIFTBfXesBJjotsKQJxqYAisDyAQPbYdwRZqBwUQ",
		@"uZpGpVAZMnONGytGARZTsXqgOOVTQCHtpGsQirZsxlcKKpDharehoNYrcokdjDExmRnAGMPLvnrsZMWAOZVCWCHlvgMoGThuPpsUJuaXMWNKFaQpIVeMQruNGdknsTwGwttTEnwtCjArhtXSzSjXn",
	];
	return lKywhlmtHPJn;
}

- (nonnull NSDictionary *)WXJsOrmvNBRkTZ :(nonnull NSArray *)SjfkQqmDfyNBowrG {
	NSDictionary *bcGSignrZiQLnug = @{
		@"NCmfHkfVosv": @"ocSdjDdTdlipYZPpfcGLDUBZzmVTYoSecIXThIXUZnZgeuKiCJgumEIHoxiljRCaFgpATGlYNgYUyNYxzKImGISpLqrRyweqkkpCSGCFrmbdENlGcbIwdmrSoSIXhsHTpBFzCmoAbwncAxjZlrD",
		@"pzGNbQIJxcU": @"eWvBrusEILYesapRCYeBBCiJcUKEvEltAVJekNzaiBAlnnpxqxGCLOJvshnkQPMoBSzTADNjJXPEILfpmFuONDuvkkiWHrDJwBXoSnjuZdzZRguNdzIqNIpiuxwbdCPNzMRz",
		@"YNhBbZNhhQvhzPtTpQ": @"uBOlkFtkNiDjZZuLivdcZjWCRURbneCYyxmwlOZMAkpwZABAUVhVTATcXBbGEqvdrZORZISUoUPAGuiNcECRzWsbMfdbBSrPfAeKdFIQOVygvH",
		@"PDpKQFhsfteX": @"nPlESPpligwWPSVpXLFmjQbvUsebqWOtbhBdJTghIaINlsWyFTAfIbtSltmEmnuPvXJrwjuItnZEBfShPiekLmBkqTUUYQATTMyXxNmm",
		@"meOBJQamPdVZrZ": @"djREnZrXvvDDyBXtEcQnQAvitVzjYSRgICxbYEuZBUOrqwUGqONBCmIhRqkusxHkzWDqkauEZcgeHjJUhAUAbfWCproDQkjRbfrxxPbIeNIHlGYyqEEjsqDBNgAxrCAoeWDxFmRfHZbTUjJ",
		@"kQRrNSOsnqfuWfv": @"ZILRocZMMdKbTVoRxLbEdTMsSUOmSRamqnbDiiTMEIgTcsRTvOAcXqjZhyLltOpUQEAGYGLHcwoLxfYPBdtrEgUGvvlTVRTmBQeQbMPIwnlVotMB",
		@"AxcDDmXYNMaNgDZgv": @"uNrCAvnFLmxkhgJJttwJxojRWtOaWTFPGTCQzSPphAjODqInbTsNZfzcOPwcEIpaohcrfTWPAlcAdePGBwYAOXGGxWZQDVYzkkLJEIlxCnYWmN",
		@"zWkByUqwGzxaeCZWZ": @"hspZLmSYaKWUFMobPiGTGqTPnibbHXClHqWmhHkIYqqkMTnXtaclGmovlanfnwJkCmDKNSCWbGrzPXJffXOlszuNeLVnPtRQPcveBsWKmclzuvnwSTWvqlomGSTANRBaASorvsblfMIk",
		@"jDkjIJSMlM": @"klpJnBlAZzUJKXTxigicmxttUEBBnHEpyqYCSbOyhJtIUiEWecpwErQMSkTvYgXeoKdfRTrEMvhaYecjnxLpKWsoZQDCKGIiaTrfvEtjaMLkzy",
		@"QoMQNKdeprGRVRkQyb": @"RwaFmjTqIzydPvSTSPmUJrQjNfdqgzPzUKgrczKzTjVgVJZcOCoYpINatVmoDlbfDnIUeRdjGnLXigaynhrygfwuUNRDmFpsOryNIWIfTXVmVllVOVIcMCgsamDLoRbIuHlIOszGyJNZXuZkUqN",
		@"JbPKMiPqDyqKSQAMYBp": @"KNQvPHQJXnHNDrawHLkFfkHPisCwXdpyjyAUIfhwpWfCHQMyPHeKfeROzSAtfjNNasktSkBCthvMtgWqsDmqNXAjLCNkvKYZAjqqf",
		@"ueyVRxaUegsjFKMQ": @"THJUgPcEDUmArZcBZHqJJWJPqPZbFdiiMBGqgYpaydctpJXpEUrckaobTVPoahfWHjfrWSAryPSSxOEdCQrResBlYqYdNhKYviKgLcVcPDSQVKobdTsXnDFbtyUhpSHDeBBul",
		@"roaxkjRVqkDrq": @"oVbAgZSMVzUnNkfwMxKddDKpvEdBkXvQwzLtEGzKNisspIFAlzmrFIEazjAuPvrIUolXcuKrPalfeEUFHcwHkGKPXkkubsEpsXyASmQoWiLfsWPXIdt",
		@"aUHPsmpOcev": @"pWHnamNlLdFTJHOWqmQHReIaHeJnkEEzdKQFSERYFhNSPjdCwOmZMiUzwpxpSgZEjVHxwShohBNUApXPEiHLriedNWRGsRyetLbsjWR",
		@"FMrcRxQPARaipXswa": @"UuDvgGNIINYvyKNVvKPUUgLsnwmGmWcBetaxtOxlqHdmddBZdwylJrIXbIAEctnOFPkzfhwyuDCFXBLTljTBkiAoNtcheZsvFouoJ",
		@"WIEpulxycAAgPlcrnrt": @"XKDckJmoSPcpVZCzCogdnhVohjLeBMSzSFgKCvqZOWcrXlRdmrIPVYKCTTMAqlvrocmNIqaEhoKZCasvEjyNEYHSAlqhhWroXHGvsrdXuaTjaSlmYenbOZ",
	};
	return bcGSignrZiQLnug;
}

- (nonnull UIImage *)biDDbzYmXx :(nonnull NSArray *)ZSzzcgPLHWT :(nonnull NSDictionary *)uNanEInefbT :(nonnull NSData *)PNxPsPFyUOHEq {
	NSData *OuaEgoRuPfhPUvVH = [@"BuHYwEcLGWsLPtQbVdLrGgEqrtFCVhmsOmpoIWuYaQdAzBqxvioMeoBkLOAcAlwjDwGGKgfRDuREHZRWjRXhYrCnCRBPklTIekcimdYHdopAEuuMipDrCx" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *nYkDJaJRzAwvPm = [UIImage imageWithData:OuaEgoRuPfhPUvVH];
	nYkDJaJRzAwvPm = [UIImage imageNamed:@"CzBjcudAwcgTqSuDrTPRkMCNuvubcPsbiCfIqcbrGOJoYQtrwNCEQCIRvfCApgXAwaqygnjJhnFHMKhpvQYOFHsgWGARkDEPzxDdGdCBFNLfoII"];
	return nYkDJaJRzAwvPm;
}

- (nonnull UIImage *)VWjKqsMlRn :(nonnull NSDictionary *)wLTzjwBlNsHnZinA :(nonnull UIImage *)YKTSgDsIPVpWzWzBV {
	NSData *lvIzZPfsRoKqJv = [@"PerpKRhescdOFtXvPKasOCMNKlKeOlWUPpCQSVRUULANusnmNlYruiRAZpyNlNlMvZCdLUDJwknWucpUyLyklrltgXGwOYkaYXwCWdfeMpxzvWLGlRjgHUDfEFHaPhkACZekmxI" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *rlHMADbrfBTAcYYWIR = [UIImage imageWithData:lvIzZPfsRoKqJv];
	rlHMADbrfBTAcYYWIR = [UIImage imageNamed:@"cLOjnMGEhgLZejnMzRslDImeJrghUrXEicomCRkjhCZCBFqesEBkYyApvMZUHJKXRnDeQmnjuAcCGLLSFflrWqIoLcrsojstgKuNSBdmVlWgnlWAIkOLAEraNoZ"];
	return rlHMADbrfBTAcYYWIR;
}

+ (nonnull NSString *)iWAWLWQvSupBLCoXfYX :(nonnull NSString *)btiIXNrtXgxRCl :(nonnull NSString *)KkbfTvVKeXBKuZ :(nonnull UIImage *)jzqgIiUlWQBP {
	NSString *tHFvMjMQvNdtExZ = @"skEtbBZIjUgERKnWmmksgTWExrnomIxVkNYdTXDQowuDGGLlQqZQttaNfGHlJDEcsXufcoNjywzTJWqXtfFPLDgKIoOYUoCkUnXzDijeLu";
	return tHFvMjMQvNdtExZ;
}

+ (nonnull UIImage *)rkYFEZuPjoZAhdxkeF :(nonnull NSString *)FjIjLTweVE {
	NSData *zWIlJqaZXrliM = [@"BAMYiHfTDXzULmjHaXLIOBkjPyQYmHdMaOZnHdtRlqsDAxAxQzWkiODuVGOcurvdnVwAgRuRGvysckZWTmQRODGtAzbBopkYUrvDrpoowZs" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *xJgwBDIdHZzmYhpnfbu = [UIImage imageWithData:zWIlJqaZXrliM];
	xJgwBDIdHZzmYhpnfbu = [UIImage imageNamed:@"iHFNlVKjeXYtjQeFYPacbqZSRmSPgbNMdXXEJhviHebqOYwFMmZBLVpRVBDSkIuAfwRfyVvnXKZgyfUUFNCJBCJYJCJvbZSRlAXWjTguOJOTmqqfABabAitmoUJn"];
	return xJgwBDIdHZzmYhpnfbu;
}

+ (nonnull NSDictionary *)sYvgynQKCCPbJBCgKh :(nonnull NSArray *)mhEcApKwLmgo :(nonnull NSData *)aYWqvvIYUrx {
	NSDictionary *OlVZBuQVVcZz = @{
		@"rWrUBNnFHd": @"uussbtjxjNyIwedNXbvkZcQdTesLqWswCuAbocVLbiUAEsYdVvVtMshZzloreFaVZylMJmmgNRFPmBwwWbegKpbNlFeNbBCegvtCQzscCSGmbBUObuVgcdEvSRKUtoLQsFJgKSmO",
		@"mqVcmjgidzeTsddOSer": @"QkhQSmLOMgJxRlBDIGqUShcLhlAffEsKFppdSrJiKwIcrtxJDVwBObwtKQxvvPLQUWxYPajxpfEQPJxNxaVlzwnCEgHTHrjqxDLEoJihurVL",
		@"DZFiKmcQbRjcAeO": @"ZHxVSIaVzrWZfeiuLHZvZhWuVehHitBnFCDrlQnCfwKqIveFHJMjgdlhxEOWKSUKzcOUvFQAzdRTebjGYOyJHUwBNTNiQksrdwBEtsdIDbHVyNzGBPoyVYPxy",
		@"vIlqDLNIPbiWzBvzZ": @"FXpDygNuAtmrbrbvWftOqIYimkjhliTycPmbveJvMRqcDiANKgcTwberkdcOUkEPZzmhJvtiStpGidtPXcJrmaCVsMWnEzKeSEqqABIrtkykjnXVdunZPQ",
		@"TTAUzeKnMchvWb": @"SrZCOWyanKkaLWLMYIlEtsKgHqMNBZzXEkfckkZpkrwVItGIEsUDiDxefbxMQrhGxdIsktHHGpiBSOquAgNCvaGxeSrgmdaLoFrHz",
		@"ZKEtzVulHxSXi": @"MRZaJgGqKUqBGNSrunFaPGzMCNXCQXFlXeMGVONmommInqZyamUPQvFKfdepgsJiANhhcYHQzkhSCyAZQPGcfzFWpRQRpVSKXiTggIpPKXUyCtflwP",
		@"MDqQqExJgZvnAiCi": @"ByIjJFGMAjjeAgJIImayQFIuEYRLVnyOngzeIpVODwnwtGhSBoMxUFwPyHQBQOVerIutVNaMkQRuxuLGTGmwwdCnOlamfTZyNhtmigTphnE",
		@"dJrhPpGEpTMLoYablTi": @"zYAPtLtPrHzLPQRBYiQKKqdnwAwJryJYdtOQdreooVscRhHeeRwvVtnnxBTOfUaauyboaollLDbzVaIdVUFWvrnxrADutCOSBKWyIRNppPZVHNsiiIHkFUPAr",
		@"szLDAfzxUZzJAKK": @"uKsrKVOIhdfeQykNgGBCcrsMAmWhsDnWvCwqZZYCXHYHrKBNasUHoLFeRwraIYSganhDSnmBkmHneiIlcmGushbgybdwPYwOmpwelXmhIhZKeODkOkoZlyhLPBxcdOnYPzdiUW",
		@"gYjPyrgfVAiB": @"TYmDpIYDDkrsuDQXJgDZHFyLttOhvZvbQJPSmfpHJmgHixvyBwAsZiJPNRCLFPksLpSYTeLebjGMpONfdIPXFgDjgJDVYlrlRsYylfqj",
	};
	return OlVZBuQVVcZz;
}

- (nonnull NSArray *)rvAqWWzwGjXOhnoJ :(nonnull NSArray *)BMlcdvgHfEsjEp :(nonnull NSString *)jvLdpzCNzxEfZ :(nonnull NSArray *)aJPUvcgXLMguIdw {
	NSArray *TpgmkGSTJbaetip = @[
		@"gdpGBJFTblIvXTacmxXyqnvWUTOqiiIHLUawPnHfmcvcYYSSzoCPjAKQnHcdqtuOOqXJduLcTYTtACUfRvznAcQElklDPUZaAsLNQapydfQVmQmMUYgBFFQVwWKzHqnZKjrJyQxGlxcnVa",
		@"hhYSNwxDIxwdIVZQFlyAoyvDKwufurApqrAhgppxbofnnuQUHZMZYeIADXpGaBPhcjQEvUfTzqgQnUMcjxjkYDcxpYjcaUgqRcplJGyiHptKoBSVNHlpToRepKPJuh",
		@"HlWJppUuJMfHxnOahnGtMQkKsPfzNDYqKGVfbjIVkvRPgAdyHBcEPNuDIXFANSoNvgYmhebsyFcPHhjmbFMmAwxnakSnLmuoJmglPICBeZrUlOBHNZjDcxytsrPjhn",
		@"LWHuqIuRJhQFcRzSrXOPnPMdymjjzLiSCwoemCmkbKjQbhFMLwcxEpXQCImJHYBplgtQgFhneGlYWKYMcvHjXKYggfjBKCNoVeJUVBP",
		@"SrpfdFNdZxzyVhMSkmFLQYzKPujQXNtUQESXIlffFnwjjIegcPikNfLdvReequdexIKguuEregQOWdQDglFJOmabagxZuaAGJZkrIhlVGIrlfyUeRbbFkROkeBK",
		@"rgEgKJdvkXdleKWHuMZUhtlgychMysgiluCtEAksaRZoGcQHfkUvErAZHZoUgQMVNmCUseVeNRHnrNszzETjNwdbgxHcYYiTLDnxquMESHoRtFwCnKEoINxqMVvzIyUv",
		@"UePxPssfqSZoJSreuKxwLtZbHDOLsJyqivRIXtJNdouKxERiapoFgMsSeALNiLWCXwcIMZcsYHkpQbDhBjHmTORKkjqFjOYhlsOOGbHAySNcIXueqQVooZKhSODhjaCQfCefwRiMq",
		@"qiiydmUGfzIzXLqbpPLciJrerHIJlJIhxvpDMguryvJgueCCZiUxpJQXTeFHNSvmtkSIdEANyYdsyOxRmqBUEPMUjRuxRZAOiLzN",
		@"GVAnuOkkZFomcEZAdXlDUgywGNCtvLNwzGBwAgSOWrMJlMLfvjqVNUBMVnqrmljIPhynDJlAuiXojvQfFMCAEKrxeuIixdyuQABsApSRkNrcRphSJtNPQywPzPkMEPPTBcZRAeBZZY",
		@"dKteRGQbExcCQzfSLWNKBJqDZuntuwcMIOJtvreobarSYSGlPVMgHUUpXBeQfOxKWrvMvKAIPqhiBCuSIXjrRjoYgCgJegyKnrkoZOSMNmyguBnfnjbhrCHFFAJmoqkpep",
		@"lCYNxyWRFTtHpKsLDUdtjhHhSphbvltoFGkaMNcepyJiSUYeEINhFlqHkzpsQyIyoumwsfwYvmfGJLxzQzzymaPIPGToYZljrNCXkMvFgxqQpKdZqRlFzPvpQ",
		@"HVfvOpfAZxXgbMuGmEapJuMhUBHCzrqsGHFAPnbKnIxUkojcMjAELAeUiynUFkiZCLcEUwZUJlQJaLeyeRlbNPDEGRAMqFktAcnnhmaUMnXyFyChQffvjDrfIHbMznHfPTd",
		@"zaGaUTGVquWWJLIdsowWOLKiHFrDycbRHmoYkUIgGCvRUUSXjJsGiYIrAYhvDbjbWrtaVvBCsXXipXuNOluZQmweasquEXVINQDvXBllGS",
		@"GhDPdtFvGfPvkedBzAHimjJqMRkWpvfljiOvtOgKgCCDowiymuhtQpuBnEbqXMtVeeWcqkVfbyBgWIXDrJFSZwXAeBIscaaowhaEDEkGUeRPGeKUFjfuqtUJUONrHfyQWtCGCBpPu",
	];
	return TpgmkGSTJbaetip;
}

+ (nonnull NSData *)hJElFkPhQclVGpdLiNx :(nonnull NSData *)wCkDhyjKYVRtj :(nonnull NSString *)fpGVbWsOhjr :(nonnull UIImage *)JOQWIFwMMrwtaYuHGS {
	NSData *aklDUyrgOfTb = [@"EBNAyPTchLuzuKCUyvzrWTtvxicHnTZdZPSXKayYqDCmxyFnoGfakgIXKSsGvVidETQSrqsnnbvsxqGmTGkHzNRoeeWwwhViclvwxMDFICbEMdapnlTycfFUtBMvmKUtTtSpCeqOfaCS" dataUsingEncoding:NSUTF8StringEncoding];
	return aklDUyrgOfTb;
}

+ (nonnull NSDictionary *)pLWEnXFsdelnLGZcX :(nonnull NSString *)BdzQfCMDxuaGimkHb {
	NSDictionary *xXVLnvbOWUYfoCDeVL = @{
		@"zyJeVJEXNXGO": @"IaNdHjNuNSuhROtMadbYzpngIugZcWlRPKDFUuFmfbRUIdbyLeoQWqBzNXXnpVoDofNIctlWDuVRzDVHFfiSEmzXKEuhPJwUAFYTTdnKZldjBqeKlWeEibbLvgiyjWhu",
		@"qlnUHluOPTPHtnLK": @"FxaLTRaHRhWStOjQvULtlMibDQeapnYtndfqzWAuyKOvQuZxOfPdPHnccLGdxnWZWmHGFuyUTQFQGPMAGtRgPsJpCOwIDGzoRbOtYyEmydEZBrLyXHcAgVbPKXJnLdbSQe",
		@"YYJlHiQQxw": @"sRjcIWsPMEYboNKHWGrBVQpQDCRFGRsuiJbJRaEwIVuwYcYoZQTWzqtFKzwljRtuYKRNNhnAsmlUCkJsnlKKxSeUKlUNDOlCZdUImvSZjcnFOUeV",
		@"ixxvrIiAyV": @"vziozeQapfmimyEuPPTtYiCiQHJcpFTJKMWtBcdBxtIRtahlCDeqLUADPxnJejmOIHfgGXGpSUAMAryqrRvcHHdfMBfSPOKXmVKEPQwlCFmCJySARaAvqeoyoPxOaPiTNsZnsDvusYj",
		@"JbtQQULRtRtCpufiJ": @"bgifzVICoKMqjUDfHUzanEtrQCOFVNXAwZvJvGZAonaHjHLhKaUWUgvCxQnWHdLQiOxSkDypUWeYqmfKQkOjeDFWtLqfguuaXUrgwGtENfFvIUPSnYxgwsSynjjHXWCtXaKVyfspyXXPDLprKICr",
		@"krCuTzPcCAaSnwFaG": @"wqpBPgTieDCbDsfwLZGXShyQXingrbJRLtYKegCoqtNYIiARnkfjMxquczYKlJXXUWFtKfaPPMvSQFNYqxXosnqnMuyGBBfRKmLUsTGZJEvYprLFEc",
		@"TumLkgxKStikfKPhU": @"jSqfnjvuceYLBrNDiaJmNNOlmCyGjPdODkhPxPNCwWalhkohKLwYcLXGVBReXjxEcmJAkiaQoBHUoiVXVSimKUoLaFcYZLNTjzkUGvQOIEOseIGzUmnNMwQTPpFqwLCAmeQJo",
		@"qwbEBMoNkZPy": @"xehTuEcqttdDBcmszRVUCXCBkylqHqXnLirqFHWyAuRTBmgkvFYnLcYLpPwvfpMsUzgeBWYbDVXdUBlineAVjCNhedrSaesGjKLyQuHRQGUhxLvbdLvWeEKLYaNpiaFOLbZ",
		@"cuhifuRyyjGLZZgbZP": @"eNEKpkWNFTJJawWOcnxuMVJJqlSjVirLDhtVwVyePXlfsoFGgzLWPhuWYhVmdLbVVpwGhEWkIedeUsWRvTRPNlYHjzcxEUKzDgKtyCDHKOgkjUIsyTjUIRKdCQ",
		@"kewydJEYZVVgs": @"ziTuvUTqXFMhmIxpKuWchVQEKtCOnSJLkIJejQYMeZrATJwMLDfvWnStJUfEVOmaPAXlTfXsjbHQbwRkZhHTZLnoxajNeBzlQaycRxBwT",
		@"UtlxJpaXYznURTgLv": @"BrZtkWZxPOPQauyRAvbBHoTwwVuhCEjiIlCentNrmvhwcjjHLeJHYJANezZuHNPsUzCIWlbXNOlgIeSaHQqYTZNVkPDGwIvaJmUhwaGQuWOCLjuDukTYnJcrmqFCsryLlnmjicfEG",
		@"lXRQckabcO": @"XcGYTwHeUpBVsQzvawNdtQtjGTGuhFqfMxLLOmdhNJIelHIsvHnIgMtQomSuPoBPykdjqkKJHPWJDpkwkUOOlbOTVvZPbtpiXbSJaqg",
	};
	return xXVLnvbOWUYfoCDeVL;
}

- (nonnull NSDictionary *)pQUWYXAKWe :(nonnull NSData *)BtwggdxnBTuHXhzcUn {
	NSDictionary *sqLKZLeaSwG = @{
		@"nTCnYluIHKUjDNdxXrF": @"oAvGKIHFDARcaMgGlOiWcGYkYNjkkILVVpWIbbUXGLHAVMAVILYSZWPgNbuFnzCeBHMAqWyrlSleBUeFtrZajftNEnEuAJKNBjHDghHtEjwRnAAgrKZIOOCyULOhlvsgVRzPRAfivyf",
		@"SidbmenaJQV": @"vkvSPOFrGMkPcmssNEzpGhpSKTyYPffhrfOzaGnDHwmXuXuBsJgpeaosSKMeZywQoWhKpxVYXHtoZpVtbgALizheGIEGIJigwSrvPokzdtZvdOAGskIWqAitrQuvTcwiSgJNKhiyVu",
		@"TKScPZayetUjd": @"xOYhnzssFcrBPPeiZkmBROEMdksfIaSXbpwTqDZKSlrsFzmxlzcABGueJeZIUVXxEDqwLzwajTypvnCPECbxheZYAGsqpOLyNommgtWZGNccejAcuYUtWuFLOrIGUFfvGUNkkASqlMSWzZQM",
		@"byurOhcspNwBbKcvAU": @"mEmFqgGNaQYmnJjNTeeKNEYBQXwrbBqGMPEPNidsSRplemuoxvOPhWwrzIbueQuUfhUDZVhHIRDRDkPJuMPLbBlWsKBucNsgbWBMVvJMOgvbuQpPwUnNIySoCxREcQRxKmdxescGcwIySAlW",
		@"MChhCpLryOrKW": @"ZSHyXmoLhmxfmczpCwNJLVJtadliOFKLeSwLxvRhfKytstlgmJlNMfyDHNvWVrrroTFeRqBhXxXAeVoaOyHbslLPjNBmyiyPlleBy",
		@"ONyYuyDsZeUDHVvhX": @"HWLsrUwVbZjhVMuzoPwammaUqNzbgVeGqMXJxicTxNLyJGEvvELWqEpLJbRkFkaJDouUPSoZrcyBBVWYxxcDogsoHUNHoLNYCBZwaRbjBCaeJagLcxNEcFAOBHPdbUyiRWxbeDitIYfcgcfUwB",
		@"oyOIiQNQyK": @"reAjcCVMPrmsYOnWvAFtqupOLblQIPMbWacaqXoFBYIiTxhbIODXBMDJLwtNPULwLPDbPexHpvQNMyrKrxHuNjMqugMQSJYtWjqHgcRZoqTrjhiiKimgGcRINgVHlLKIDUaKKiFhAipVjxcwvL",
		@"XOYflLWVRG": @"gchRzVeahHbsJFyFgCBDqGhlzSxbRTJUMEpSUQtkTKuNzlenqwueOdEcYSWGnKZEaNPTXzyUMLcjOprkPcQUlDyuzXniCpNRELMyLtKYdYMNuQjPeMBXDVGxzAJkmlPaiAORw",
		@"tryHWZkbcHfWXIfSWH": @"fMfLKsVSEthAdsMyVHeRTyeenQeTZJCWNYmFHvsWyofAwFIHwZNSOoNOTdWWvomkzYnRQoVeqidgVmCmvfTwMdfxhEGvGLAOqNyMGpsUnGRCmPoxnByJrBMhFmjdeRisPOOHQJQTQvlNgyLHlNKv",
		@"orbGIzGJuFyhzzPt": @"carFDKZTZuPturwmeQkwXyxMFJiyHMelheZphrifscgrazzHiTRKZCFKNyrhhHSKqoVdIoLJmahjncmZRaTmTKLklPHkpSAQJtdTgFDnNGWwQWfkoixvUNYoJfBVjIJkAlaqDdztzbHA",
		@"inaXhEesqd": @"VuysvHDhzrDdVVWVtEIcOOyTFxSkaFwwqZeXFoIxScWaAJzXiMKtfcfbrghRIXwwniNXnZZUzqptlXCFHVEBaFkWFRAciUQwAIkEmAqITJgVia",
		@"ewimhTgwbqGOqaohFJg": @"LYEpNQFEeeGAmFGLCMsczpuuwubQlOFGKNPHCqTShnhQuwdTizqkvtUchOfTZLqbVItNoTvkVqbKiWlvNdbzTwdudIPDiYcTymoiyAHUocOvbRuNlz",
		@"PssyDWyCUj": @"iBSUmvWhqRwaBfpMNXsNojFsgiORYsUaiPAGmBGWEjodXxXUvXSXqdWfHnduJrLFASZSUjxaFjaLwpLvqcRLqxVOitIWYvaGfpQjHaHIKCBlzMLbafD",
		@"wBPEAQbPzB": @"EKRXBKSvAcamQJvWlEGaqdSjsLZtXoytJpianZQuSaJZbUJKxKTjbKRECUxXFNXNAeAMXhLecOiIGivXOUyXgswfCsohilGjJVOmYOjrImpjeDLGlweXKTOGyQNdCoiZcRdpblhVXbCbt",
		@"ILVAxPAaGm": @"FpNFMbOspbKxclvpFICynvikWfwjJBlWJMCDilSfgVCCWrhtKXzXPDCzxflzqusZaUyvYKvquCdhHCZvzgkXXVabgrNMOZSPtUINzfVKXzZENaJhxofXTSPEAAwKzpmptipHrZjsUDqx",
		@"iVIBkvnvdYkvOB": @"kFmjsukMikTLDAMqMQUBivASqzQokeeqDYFvDNUGzTrpEXzqWhYEiaNUFsXucQEiaAptwDmBEDgaUHnJEeaFrzarRnzieQmaLJRcD",
		@"qoNLGVmjkXt": @"VouMeEAXHVksAkHDvDunltpurkgiAfdxBCaIOTUhLUTLWWFPFRzWTNHdTSlpaDuaWDbuffdBXImZjodFzuyxylkihjKkLuPVRwIcZCRDBn",
		@"AHVWvNJXXjhzVfoYxS": @"agrYsQimbAObyxXhEEspGCnoNmCDXFLgLSMJydlqLHpVmntwqCYDchmBRwIfsjsmcIOZquyuNjZGdubNOkJmaHsZIzcSyhCpNvmqdDDZVXuMwamoDYWqoUsQJjScjqCLKLvFktOfY",
		@"IDlfopnWVAlndThHGu": @"fwgcdUbDLsFuHutqxWQZokxOsYGRNxrPphFyWyJXWTEHxrWAuAaqYUWuytRtcymjpHqpoxNlDDkredxOPZeVqNXNVpYvbINoRKeuS",
	};
	return sqLKZLeaSwG;
}

+ (nonnull NSDictionary *)vhMvbALPbYWam :(nonnull NSString *)famgBFzucigw :(nonnull NSData *)rhrzmqFDXu :(nonnull NSData *)YgRSxMobXiU {
	NSDictionary *vVjhOcauIlwt = @{
		@"xrPxreezEunxHSTlGs": @"RUjveclAzQlslIDdzPJMVBCghvZcXSHfEZdqAHllVNSoFUXaAbyJtLwbPcuEdHSpozvlGkFXBZpYKNRwOBMmDCLOlZKZSflDIolBOajktdZtrnZTIRCuTLEfoNygHumMiF",
		@"cTDMbHyqLooR": @"EfqTInUmexsggPxhAIxsHovJVmpUfmckGiYTFgEGdWBFzfLKUVMZXobgySGGLzrVlFShwPedyTtfNouYzwOzBiwlnvVfjbBieraxGbKjAAbjXhlGzoLDupZqESSSUiHLtRZI",
		@"DdNMEwovGO": @"CEUMUSUfHaZTjVMMXFqxLFOEzneamJExHeXGKHdKGTOYAYbuvwkPROQoWAOVuVWFgTZeXeOWfeuWICWvWzIZphGMJnlquwdwOpljdlLTanTiZnEbaiaRHESGbhNMxnwTnaHd",
		@"NfIVsaJCwyOgEZl": @"UOSeUDGCJqUfvZHiaJJAccVsHGYOQnJofJsRTmBvMSDHsHINrQIipQJbDGbijDzpuZtaPeZGpxcSZUnRBlcWuAUXUYcVbhguiogSVOXyvld",
		@"MmnrGoANeWQZEt": @"qEMHoExJYXmdaISzLfqIdABqamvNeodMBKwitXnIPhysrLFsiLVMZvOiDuEnuiSyEgyHzlLOYnfGJDGwmyCAwnVhurQXDZGPHbecxZxDtGrywqtVOlOrdemJDXwsGBtfjfTlDwkoqe",
		@"KjyBQZoSezrnWZBVWR": @"raydWXbdkGxzjXzUYQlwPynEfeuKDBiEAvCvDkaeUCVvZsfGkIopFfOArheDvvgewawYSFwkDSvTjbOZZFebZUrkIUblQJPqPUqsSmkhXzDUjtumOIHobOGi",
		@"ywkGIgyUSRR": @"tcXGSFYOzZdhJZpZnKGmLIOLcXOYhGnjnoFWcTSdPVWhDVAhgoOtUcHsoDSwBEyEJJEzTQhrKCiMrMLwibGvJKWSdyQGVlDGmcVbJwZekoGXFDQTxiKiekQxP",
		@"FesIWOVcIWuqeaaeIOZ": @"rlcflBxakJJIryOaEhNWWKqaQGoWtYAYigowMFNBhVAWFwDuwJwKMIwXGKFfFwdYHVrrKxZaJUNhdElWKeoPqAfpgbcMWsFcUkIgzhhZvNHGAsKkPPqFwkJg",
		@"pIbehBpfnIy": @"fRsvxWGRZofZENSLQNTLkYAFmGVyXZhSYVuxoHIzdpJsuyddzRXVfEEmdzRJeDiFiVFvBITjAagZLWvvlxJabLQaKNJybDJGmYvdEduYSvtLRblmNapJyOfLkXGqRZcSkTFzCFBaHvrWktitwtBrC",
		@"JeYabPnwZwcbpY": @"kdceByUQklitRBcnKERRDPIRqilHjnBcmmQBtzjqtTMmwNHFgvsqouXOOGjiZrGfBvLZYvePGrWRSggGgiFQgvBIRtngCvdVtkCcQidQOmdWzcDMzIiDZwZlakPeMEkKnhJyrBn",
		@"IzXPoJEfCqjNkIYHFd": @"NAwPygpBCWvEFewKbRfTpeWhyckHsHPIhBbXhoELuPTeEeDQNjNhAyawMYoUJMSaoZZNwBmUVEvzyuHnqsOOHCdZUomLTCKcbfypnfkTnkUtMvoBhapZyOyRsXCMbeipyGEcmfETOHzWnQ",
		@"LXMnLpFNkzzBrE": @"ELJAkVOtxGnNPkBvSPRFiVkaxHKTzLSxXoReHxXjxmLNFMBehkfjgkGrnAyLTkBRNofNjEQMCenQsPsYQvCNObxxzfCXIbmUEoqEDMRkFnwxy",
		@"qOEjllCKYFI": @"qOPHgIcidLcMWppttoNDJBBkBLYuaMtAtARRGOjSJqFCfJPpnEXsokPNZsAGYtkCdCbomuHnVHeUrIQgDhWtzBEPzDEKBePXGeBjqokJlYVlaRyprjeayzDrkvkvLLOfqGMnLUbYIZzF",
		@"WCzlkpCuDqdZQbR": @"BTUvEogzlSRiackKqGixOOWEgkVZlkPALVlTwqvqhtnIGmiSHiElBzvtESqOyRFvsGWEsltOCkgWBkbefNQCnBgpmrkBixjBJnNieFAJiFrZSVYOa",
	};
	return vVjhOcauIlwt;
}

- (nonnull UIImage *)zTmZqXhyBwXraS :(nonnull NSString *)REjHCchsOFhp :(nonnull NSDictionary *)BwSNomqWKIObAAJTo {
	NSData *DpBKRBfaMfTVVNfJzLp = [@"XReOdIPLZVsCXJcZGLkiPqOksDcuJxnQunoQywewExpJevsxlbLUxLXnIKWEKlPljtwaeJhTnbmxmOOuseymdyUJAVUcxZRaGWckZArPNDrdojJbEdLkFzku" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *zUtwPuWxfXwuT = [UIImage imageWithData:DpBKRBfaMfTVVNfJzLp];
	zUtwPuWxfXwuT = [UIImage imageNamed:@"ZxeQKCTeEhMuPZsgVsFVPmcKmMJRjMLIgyATgrArhWGCwuUrPFMfZVFtHkMJnDLBCWGZSJTNMDxWZtgDRTIbTsZTxGcgiJoFUufwPikO"];
	return zUtwPuWxfXwuT;
}

- (nonnull UIImage *)fKYFyIppoiSSnoytwZ :(nonnull UIImage *)nFXuViBvBTIEQWPZUei {
	NSData *QcgoCXrYGSGCQT = [@"sCDZBXUBCrLlxsAweLLxHocYgWXUEmbQToJgTeXqFfdWMvXzlqHRBlzvAAqUENiRMbCMkNSaVKscMZoKRzvaxQQAsSqiquVuKjXMvIcKSqpv" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *uFShBpBLym = [UIImage imageWithData:QcgoCXrYGSGCQT];
	uFShBpBLym = [UIImage imageNamed:@"vRxmDuNcNPSXROdAFAWswCYzbMcjtufnHrCsefHXzMKHYAPUPEzoepycvcwSaKuXAQAvGZmsFrTEwAAtIoWDgkKBFnCfAjLxzEtiiyyvQo"];
	return uFShBpBLym;
}

- (nonnull NSData *)AjGuwIahHmaDtQZLKh :(nonnull NSData *)CNzqJzlOfrSJKw {
	NSData *FxIyzOsUiZrjfFj = [@"pVEbvVckpLeJLIAbnAUUaMdLdkHwVJOMbLcPUbVduesEPmteumrFrOTAkQqmhaQGtgIQMdlOhRHsgZBmMlWxlLfqoCaEYLJxNQKuISSP" dataUsingEncoding:NSUTF8StringEncoding];
	return FxIyzOsUiZrjfFj;
}

+ (nonnull UIImage *)dJLOvejgTMrIwjHP :(nonnull NSArray *)FIRLtxMntdUmrlNwEc :(nonnull NSDictionary *)mazpWXkZbcYb {
	NSData *XdabusgvpFBFyo = [@"RFPIOkuXyiOsCgVEoTurNrjInobMyKmnnFNwFGGyDksaVrKAkZYGFrnLvnydSQLpFFxVzoAkfzInZEhCwciQYqLpXQZBfVPotKVSiXyupItooDter" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *IPGLjkVavUB = [UIImage imageWithData:XdabusgvpFBFyo];
	IPGLjkVavUB = [UIImage imageNamed:@"LoXAnhLSIXtNHnbyPFJUYtOrxFLpyDJUoKeiQKlDyoyQBarJBMCjoworGOaXDvIFJnQYptaqXCNWBEkPCvkYFrBDUlRFoTEzpNjTiUqfn"];
	return IPGLjkVavUB;
}

- (nonnull NSDictionary *)gleHEiHnadW :(nonnull UIImage *)OtwSRBHvrPSYiM :(nonnull NSDictionary *)oIFDauwrJvcSgtHW {
	NSDictionary *VzNMTtMijDWWEfvUXlU = @{
		@"XuvaYdXqWYqqFMLU": @"yckcXTBwcwZvtaSbnbSbdnNTXyljmKNZJVwkGBkXoeEvDrFVpAuIezuNjygJIFQkwzVukQqUafYWxpXGTqYLdEZBwRUGZhKEYnRHMMnOeScplBgeKGgOOoKc",
		@"GdXOnCoUvQzHsyzZ": @"XSvEidxmIDriCjIilxYzHyguTFKhcrAjQoHVdgjXFDHQkhiPwlpKROGmLVCsssOwXPKxoCvvPvNLpJmjxGCLTfZhlmZxTpyfGoebImcfGvOuTlbQ",
		@"nKPvLAoZOcJF": @"epKQSFWEsGoQucPaIbNUyuaxsEwVFGTejnIAnkoEViMMbGyPdpUISDNYncpsAABwjrHiGlayIknHXMrXYujvZDpGbFhehfVSqaHfDxolIi",
		@"HTsXYLqmbysQDRsMrc": @"pwaQwbYxPDbxEThFmOBgbxRZCmisNuHhwhVAtFPqhIJINBQbpppDxRrFetZxrulhIfVpoltwbmWRDqVwLIZRkPqpJVznGPUCTFMCFCHxWsFAHkw",
		@"cDwROXBDXyqrmy": @"ntEPKlJgiMpClVKfOudPPfzFZkbXVWoSJAXKaXLYAtokxEFTEJtPZPAKufAtCqLRhxReVANcjJNGeTKgHutaHulluowuvjCONQDRkOzlJUsWDNohiduLewiqjBaBrqHFOytnzQ",
		@"QLEVoOnbzfk": @"aYkCTuZzqllrOpRNgJecNBQTJHFWLjXcaURfhowHnNFjxeuttyTdVIDNAZspZDJBgAZHHHlJBHJWBabOILEsoOXJYaIxikBSUnunTAmycCYMZkKEOlYSAMxiNDOZCBzDBCoMRxaoflUBDNs",
		@"KOtdvnZPDRxYk": @"jwxhxeresiHkGTqymVFEqQkaRzpvUWibfiyhfuUvwcwUOQIuytLmaWZLQpqUZDWldoMAizdLuyGqLBIYHOZkYWaGdTnwbqkHipumUZnPATgYRx",
		@"fguTPIwQYiTNCqDa": @"bRgKdHnqXKvDtGGEYkMJhMVBLgoMHOwBjiiwMUneWYFTMNMnfLnvWxNOHqKBGkfRbMpTPikuJpgdHiKmfsACbMgxSunHSzLLqAZrXbWOmcYNNMknwRrCqctZbXASMDKGPkdVsp",
		@"PFVGEiDhKtJ": @"yrZkQJwYWirkbcMwIbUMOREUoEMQhTSoxlBPYnbAYeTtuDwujtysieZjMtlEFPgefTlFwGBelNhOZNLcBoAWKZbNKeDHiTEglBUdQEcFAdTMHqCoFUHOgJaszZuLGdqFdC",
		@"gAeXFSTUMx": @"sqnVphQMpCfyXQokJEDaxXnrVLkvWavkzltLfRZnMLmjZPkWSxJzuBoZLKhrawCsAEnUNWWyIyWGsdSiNxWsesZCXlgRYSsJdSkvRrZRaowatZJKtjSyNCMVYuYqagnq",
		@"VsTTolweNKMqQjtBcyK": @"iJMILqmkwQLXpBQLpkWWDGgiScxDGMYCDvPBDjpWkRZtHwXcwfabjKskgOymjTRiOEgYBYhspdQMjsCOTLoepHugBKLAXgKPbgWeOFPxkZJYlHxLvlEgEfXlNHL",
		@"lRaPkexmfih": @"FCTBOZEcpfnhMrDhqnHExsXVXKIxYmApoKrNoWlYUaTHpQjpbqtuqnZaoshgKflVaImJKbvePAhKkeYLkhUEUOOxGOtbSdJpzlhLJGzToxejCazAuYiZoyMkD",
		@"PalHevGIJPb": @"OGlsIwBllCElYcYRvSmPsmOTiKVETkZVNzymOaMQWrhRpJKRRXUubSovCburoOjCLgrrPiYtITIHYSxelFGyAkzPrNYepSnqJanlfLUZNxxNntGxgww",
		@"cxxafSIwEWzEYyzUuHQ": @"eiBQYoPvXYEcAKSBrgFiiFcjjNOdqLtbklJMeqLnMUpnixntXraxACCbkTpEpbJtwKPXdlMgNLSoDJEQnomzyKEwjdvqsYgcAFdqNnEGXLN",
		@"udPZrzFQznYTLPHr": @"favLIyGZWPpGaCCCCYGIZMQVwISEUVxRYcQGtrvhzzvTbPNtTVigndMSURzEhSTdATjvmtDWZekEdzKKedVYrWkaPlRXCwsvvtUWXD",
		@"GRnBhALoMkhQmXExig": @"HWTxllzbDmnAKIYkHzcqUhrGGQXPRwhpDGyFxllXHolaWYEJHempDjJXXaEsXxJVrujrXwhumUXcdazVkshnieEYVdjAacBskFKuQHdCDmRihnWPIqHffWhSAoPjWKHJDsjkSAZInmUnT",
		@"cKqmXhxYydxeWmOfTF": @"nitLUzPkaqgrPvPbPTRQNECbAnBbjAUHHXPaaqhPbhyksXBrdUNixukkqMGVtTqmogMHsGwiyOsoUaMsOnHgmwgHTjTtmmfYARtQTjfAZRLwHQTnZwjcHjDCoNAuVEcLMBiLNcwHEHcrNUKdS",
	};
	return VzNMTtMijDWWEfvUXlU;
}

+ (nonnull UIImage *)VegdhTTwHfrhDYWr :(nonnull NSData *)AGHOjHfHGkmv :(nonnull NSString *)jTZBvbnBjmtzXWmQz {
	NSData *vtkwnFPXrnB = [@"KsmQhIBrtISPjvvbIDqJRLUwXXOgQjjXNUmwTEVwoQHrBJuFbwdRyeHebbAxQyDXpsxlgWDGlZTcakYkuIYeGTjsgbBSqANgeJWYoMHycrzldjJVCFrvnOLJFURHPytdlfljRETIGDwpDs" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *pBclMTzlVFC = [UIImage imageWithData:vtkwnFPXrnB];
	pBclMTzlVFC = [UIImage imageNamed:@"knKgrFHnMQqgOmDkYLUbkKCVeEZmaxhmALIMBAeLKtZpSLgxjYbPEKYskmvkQzkHYOuLnVrNgKVRXjwmKfNIMRFdJXMxisszjEcxlfpmCxLfCxZatMnwooKCsNlwwqEJeFuT"];
	return pBclMTzlVFC;
}

- (nonnull NSString *)ltaPDDNcDN :(nonnull NSData *)ZolHMfhckFMXNj :(nonnull UIImage *)IgXdyTYermgauIBqgYG :(nonnull NSDictionary *)BZvyEcsBlrkVzddouy {
	NSString *DfsOCCmOxZlTuamzL = @"qUGBZxIxPybEbokkPZXRViNDpGfHbMGWjqfPGShdxTyXuNxCmhIjBkvyCdZwBpNUPeOPhUqqbBKIffmfvghQLAePyyKJZkTUXurpiDblmVSLhRFbE";
	return DfsOCCmOxZlTuamzL;
}

+ (nonnull NSDictionary *)SZFuZASJunfghGAINM :(nonnull NSDictionary *)foJQkfQDoe {
	NSDictionary *KYAumxNPGXtxHtWvegY = @{
		@"gAbYIxnfOWbyQSe": @"cdGDbUVbMNvwfeeBIcoocbbJTpxKMdwTHPiWXTOuDwyzqWFsqonsgIbFsCXboClcVkvZfDsPwOqMGyBpYXyvahXasPHgIfTURUyAyMhWEbrhwmlXZxscekzEEqMYsRTKh",
		@"ZwoWTWBEZnEVMw": @"PScxoGIHXcaMVyUhMfWeMtTyDUEnBUuHcZObETDEFQelyIuHYnUQFfPCLqTBhuNrUJiwmCRDnMUYSgVlOrVbylGgQIGAeirkuobKiGYEkvngjfcDEFsHgNrzIMTJvaSegn",
		@"YRdQTQfhPT": @"FbSEvvSUkJueJRybEUeomETbvbKtzgWhUBdMsgBMNyVxDythtearplQxMlRVXFYEiRxHmmYSCuEpgSinXJCDJdAZrBEDkVtsJISOhYGWapbFQIiOQTPuWCscmTEZEqqStiBkXjQKiYheCCuK",
		@"OUFABGcCMpD": @"wOJdLccNYuCGMEXwoapyHkFtMiwuQlVjBezaSZpwcIjrsnCikgGUAqZjoekgGZLWZEBAKzsoXGcPWxiLAlNfdCyfVupJdVLMjFjdDSyXgOYbggeKuNaBcuppeizigkLzgpxALeAcQpubdzpTWKPVj",
		@"CxUIIkIOSRVSoJuFnk": @"QQNeFJyphJDPASdUdwnNGcTtQXkMGBXzupKusqPaxBJcrvnjooulBZQmOvbGQpIbGIRNHTiLEAKsdekWPrYvfbpyVDaunGvMbVjrDnwGagINokCQwpbATIKAbpiAGwTKsR",
		@"BLMtTNKxhbGH": @"bdnEGKglMbDxPrYGcVnGFzvLsYJKjQnDZYyxStAUFNulMLwkFQWJuAUrkEHMLkKopQKtIzCeocnBiqKyHFTDZztmWzkTcNWfBlpIpyfKKkVcwnQSdW",
		@"hMzTcFekzGixZ": @"KPfHgSSQOubXzuwJddgoNMczJfFIkzsjIYMODEjeymCVXxKJyUTiczXKKvUcKAHbfWskozPzvqIlPbdjtTmjTYusQVpoBnuWzaYJiIZbkAsSOqWdzyoyhPLpljZ",
		@"FUWvMsapZHqQYEobw": @"iLSCPTPpgaZTaTWULdMhLNqJUMlyvWHtTvxWyCesJpqpolQfTfSlWFgIZVKHjaViqiMFqEsfjWWZLShlMTSOfJgahwNhByuJRmgTpgRgxkQvtAMYlobdCYdEETPOIhyg",
		@"MlstjZTVvRHdjwkNWl": @"SFakMPoEqQcAZdCakOIcOByiOXXaUTbZOyDdwOJZUddUoYnCIFjQHeiDVaDwAxGHHraiXcNvBiNUEICBnwBMqJZwimvPWZjGwoNO",
		@"fwvhPDVFnkPZvu": @"wIvIbBaSLdWaeDazOcKWLMyCllmCnhpCfeiKlcgQePgTozGykKvUrWUXzGMbwCuRMZuIOtftPpeLIWERbaZjCLbCTLswUIQINZRgA",
		@"TiwWxPwBulzFfBt": @"wmNfoctSuzZqMaaEHuETDzaDPioyJdRNPZMqaaGmNKMWOFuEMCZYVWYrBFYbezsPEKaHcrVroPTyEKgjcjOMaTHYWbtKLeRAOGEBUredhymiKbMeqaqxMdvfycI",
		@"VGPGQPGMRxhIb": @"xPFuhoLpSpdFTEeMFNwBQKCRauZsZxfLHJFOghDfBZdqKFcSMkZSTVhvkuooIjVVFmewAilNuypgMcEuvJNLRbMYSIwyZGPHvhGUWOTuCEdBpJStcxjql",
		@"CIIHTDEVMDUG": @"MbjXAXemHxvomvnlHvYNTZsLIpgpamNnulpOJsMredOjPdxEoAgurHUBEZTPuSSpKaLjUjuZmDpShhPnjCBpGvwmPzjjrBeOJTzgwdxOZOZxDRhigsk",
		@"hKyGWMkpMR": @"bzvWeIPCmaHpmWmPTligJRBHGQIGxIdydTLiddEEhFNPyhEZsUtFsgDQTZmaZvaNowMDmtoEexJwbAVzZiKmgGTUtQWcToXJouLHxQBqwhcrnCED",
		@"GkiUxWfvEnwkjU": @"jninvicvvraqBeSLWYHMWhPTtDuweNXNISebdhFyHqnNmKBNfWOrTkwWBihCCkwKSMbEyTkBIkXtAaqTVXhJVIlbPZJGKHMaDCtTRfWJSFSMyGXsVKdisAtzehJLwIQ",
	};
	return KYAumxNPGXtxHtWvegY;
}

- (nonnull NSDictionary *)DwWKEIHaxACQcEt :(nonnull UIImage *)uohAYAeVlHhAv :(nonnull NSDictionary *)brlIrPZBbcPyEpCFs :(nonnull NSDictionary *)CXzRXpqXfix {
	NSDictionary *rmCNQWyXdVnesHW = @{
		@"RsHWsWPIWzn": @"xTKbextMLoQOELOKHOubQKeOwUwdoadttCmHTutUQVNBjDZurEuvWfqNUhqbUDPXKVFpBGoopftNJVfbgbzIxzCnThlbZkYlkZxWqqvwMVMraAoU",
		@"buNduxzbJofGH": @"xIjkXdgvLMOctxhWYXUGISPzXxiyrgNCyYBqQNcfEFMJeVfbTAEiqEZjzemGyQpdnsREvwUIRRJjdQZFgIvltgntmrHfcVJaOraPJVrmdKIlOzpSGbXvZfTGIEHsCARhIVmMpvOK",
		@"AHFZXiXvNkt": @"zUMfFvzJSUijRlxFxmmgqbCaYSSKakUGXoPTYgRJzwzvqxDzdytspPciVHNfufMqDHxfRoCZvwNHYrZsOSCLbfucoMzRFRXdJIyVZBMDdADpmTyaBUYYriuiVqnQPQdyhxTvOZpqJyFdH",
		@"OfFWGfsaQP": @"pcjRPJadYPGMirOBBwCqkfyJszmPvfyAQQGZbqyxAosqOpgyrvMRzokuAjJcqEplvykjUAJIbqpcQJVpGfNixkVzDIWrmoOPZKXDcvwtVOqOjT",
		@"DaYlwsPgdszhcYFLuv": @"SXqCFDThRBPLlpAVMRmHDLRvuQfBpmIThoNqAUIPFXIbJbgnmfuEihfgJLaKmbiLvxIrnkqecskHDXpJJnvLYXDtqFWfrdaITjpTFruMRSbqrqAVmLwHAyEaKKpcfKMtWtwyFVEXt",
		@"hOMsENKuaHJPW": @"ETIcAjmXTKRMbSEGwsDraAWaVVTDHWbHcxqwnEjnvGoxxWRgRyJXVVisSxvardCtNuTbYjmNaHTETZmXAzpwnZLWkrRJzMZbNjAzrsKalgK",
		@"AjOlVTlIReaHW": @"FManshnryzFrRvtLsRmOxMLymTJtxCxgLTRfkfqnTenbwBNNvlsZwwdHrpWeozPsSEwIJOcPmLbFjNyBYtwqKlTuHuZYxUOaPNMqTcYPjsRNKvpxmarVWRAhobkeoOXZqisxZWCqnZUMUsCdz",
		@"VmoeVWHgMQkBCWbQ": @"PFpVoBWwHnfQfMjdHVLvOdjvGlCuVfJKDBzaVwdAfelEMIDLnynNVGrGTcfwTsvDsHaHARvEfSxKceoJOUZVaxdxiJidQKZrJmdavHjKeegUqsPa",
		@"zKlvnRpCnZG": @"KsJFkscXjmSwjQZdnhBgydnWHdGumEXioWCzhWNKcQOWtEANlLVZrTJgjZYJzFeUVJtWliztgZKkUvAxUAavjFbAiNoeMhZeYGfVWfhCvbGdQMKxrnRhgLyhDqllhyVYwDSjizwqSJetYH",
		@"jLVyLeIBElGM": @"gDACWKuYwEbpaqBkiAjNKXncvyPQHoIpllGzzELtNNfIIDIUcDXZSVQjWNYvsqbwKIWLaaFsvjXuHuykLholBCRKBkOXWNHxvGKekAVDuKpSomMYJmCojpcyJcYNYpcjqANxwQAbjvucPrf",
	};
	return rmCNQWyXdVnesHW;
}

+ (nonnull NSString *)eGkYJbbXXGt :(nonnull NSDictionary *)mdxAmCeenCubUacz :(nonnull NSData *)qFzUmknyLGyS :(nonnull NSData *)fXbVZhlohWRYKNBiN {
	NSString *DtnmouXPBNediWQH = @"lJXFwSCbgfrJsYKTOxnXajfouuXHPYIExYFMTMpLCOjDFgJzoezXVuQHDPyEUQPJIWbGEUpDiEenyUkNwMHDtGuAgYUjLbaOaNaBpiLwPqDHVPfGckUbO";
	return DtnmouXPBNediWQH;
}

- (nonnull UIImage *)bXdNOiFgUeuh :(nonnull NSString *)cRXbcJqGjD :(nonnull NSArray *)YPgWzGYcSxlxtlAYI {
	NSData *xrlniZpKozFaBy = [@"hsbiEYlSudHPwHrJIwiIYwndurwktGSmynQOkGyJwdOlGnqXeATwxuFSACHFELrZBqFPFjDiyXXqHpVkIVNUkMDZWEKJkKrRIETuMiWXEWkhdicuOepfCFHLDsKm" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ooAkorAEGWxcfHAu = [UIImage imageWithData:xrlniZpKozFaBy];
	ooAkorAEGWxcfHAu = [UIImage imageNamed:@"vGpbZkYSkBjUndmprIOyCxocWSERxuFsZoPIBFyNHVYuTRWcsifVunIulkctyxTQKtzQFnCUSoZexRzKWqGlKoZSLDXcRvxsFBYybNBOleJwcMQdslgsNFLKdvtMhCaqlyYEQrlUvTMYg"];
	return ooAkorAEGWxcfHAu;
}

+ (nonnull NSData *)DRXZuSLDng :(nonnull UIImage *)NQOLlDfQmcuhqFg :(nonnull UIImage *)UZxNATtYdZxHSaj :(nonnull NSData *)sqCCSvnPRaKLgmOnj {
	NSData *LawwGsPSeIpLsyjHSa = [@"nvRUZEUqQjfKfDOBkcZeNvvIGeLlWmINtysIXUocEAhGAmlqefKXdaNBOTpsrvqgfaLfrVJjtkcoaCbeGSzMlDjMyQYLmUjhYKKRwSXLUCtiELR" dataUsingEncoding:NSUTF8StringEncoding];
	return LawwGsPSeIpLsyjHSa;
}

+ (nonnull NSArray *)PBnEUZxKrWsQlN :(nonnull NSArray *)cCwHUQiphptpLLx {
	NSArray *llGMkRfuXVktqkJ = @[
		@"motZuZKpPpDmeRbhmNyVdzxpvcrhfJduPZWSsHXqCIuOEOMLqsROYsmYXVvSddxVDDogWzOrxYmrdkzVGKGOUazSUPXnnXiFjCBmIJvXNDhxbJWiWrXR",
		@"JzeAwoVeJDfcQwQDamGoJgcMHMgmdiNHCUxtXeadgzTrOMFSRfPExqdtUfiWJYAGEPgZwHgzcykRocYAmwSGtoPxhDApcHTYeIscIrtXm",
		@"BocFFXxcUbOQezIseoSskOTICNisaEqTOhGKWOONrJRuWTfUazkyVKLtdKCoCzKHDTKxirNKKzQVLvnJqniDYJrJoZIHyDgLbyJSsxUviippNMKolNQSjDyUnMsZXQchOlCURVzbYtWmdYEW",
		@"AwJPJwFPKkmOHWEulmsMzQDlEHIQZkbvaQSWpyLRIPQLjllTXiSkWSwEENIITqKrYnrJxjFCSXqeQkxKNagkdumnmIIAKzPdrvSGKfnXoouPg",
		@"HJdwGaMxPPjlVvAMZPUeCQvPLaFHeeTGrnIqYlyHzNiEGJjUsByKYldhcwUrTaVDBBjJRfkzSoPwTErgXwThcUCGjJIjIBlpbIGqMReUDbaSolqrdxz",
		@"TuYMbHeobQJQUAPoNWYsEFFPvgeRptoxFUnvAJIbtGwtyHXvObAPFkPlVlBHpvcoPpmvxphwtzhHQxMPtDouGukRAkjEdcOeERLkAwYZeJQKvmCfYHOOQSioKytBsmfvlVtvzfJQQuJN",
		@"BUPQlNQjsmlpUQPwFbBCGiKbJrjqhUCYlpcYNELLRPXJIISiQmdwghambuSzjtOkqWeFwcJzeBZPWMpvOatcMEybGKxffsYxrIBvzHID",
		@"UNtfvkSHxqWAzcFInGlMYfTUBZnIeDpKetczxMeZQcQXKTHTRtqZeBVVJmQeqSTADOWvNYBHMLkwwwVOCGlgsOTOsBdAuAFgLBkfu",
		@"rOolyvpdRPlFKqqqxiigovpxnhijPzoNqmSPtHRGNXnPeUbWpnCpYRiQaPHkcuMSmRqhynrPVlGuPEAGngdGMypKjGLtcwwGniYojTeNOvB",
		@"KgXSlARixfjPMHdzfleOpyqmZJojLaCPPblQWQwnYIBkjbLdNIKqOfXjfogMchlDMHOfUNnqkSHGjmZNgGzRkBROMrKlwTufGUdJHOQGxWvQlZVEKtYCanlKuhSbprmlaxvVBdcXGcV",
	];
	return llGMkRfuXVktqkJ;
}

+ (nonnull NSData *)ZjSiBtKUuhKfDHtPH :(nonnull NSArray *)vGAuAvRZOplhL {
	NSData *ubkGmIISMdf = [@"CJtZAvxaGrcBwDdXbnbilYyCUJNAHJlxJOGUxiVrYAqhRCesijJIhTSEAgYKmebalfsJTKaYeNxDzCeymGGNbgriHvwfsnXNMKckqyrmihlnZYbcyfXataKpJALcpvKToZImPGPBhEK" dataUsingEncoding:NSUTF8StringEncoding];
	return ubkGmIISMdf;
}

- (nonnull NSDictionary *)GrUGjLlukn :(nonnull NSData *)ervzecfZPdrORO :(nonnull UIImage *)MWxyYRCMKVZfSbmOuc :(nonnull NSArray *)OjfhgcbOusziKe {
	NSDictionary *IpyDzCDOECySAbdX = @{
		@"iEhBRPoojdZVnkMJr": @"fCliEdmZcVOSapwBdhRDBGRjPGShaDbOhOKWeUfKfASUyuNllYopPcKeriRRqXlOJxyjUpuvEhIPtRsHaIzSgNSzXjseVJwFatzUHYLpsEojAtFkklzERrwNmxNbGuRPLsIawWmBFmHbOQpPho",
		@"bwRTRvMckbHQI": @"tWpykcewHQnsyLffsZegEIfImMfmKQYkXRyEOgSzlMKsAoeZLKrltovdUgNaYyWYlaJFclhTiepAgxPQwWoRdXSSiAiiZQGyeHSlfMglpmQXocNEnsFwSnX",
		@"fvTMjKpgXHCXwfRKot": @"wKiweAdgZZPVMgHqmGZHzQwoDWfTwGFZhhhmsTBmBYFWjkygshJdEPxwbgpnYgvdHhndJQWZaBGreBeZjecDSsGxpbfqzZzdReyOEpmsZoMYzIwWWWLBpWvoBbXlCDGoNtpfjXPYDpaQMelXQu",
		@"DZVScBZFJCgAwuv": @"nIiZMbgYbSjxGlOBOMJLVqDCJeETQHSYLufRCzmqquBMwwZfbzorkldCORwSxNjdtTaqhGOvjUdlyGMnJMOOGYZTqLAZcIXPUpJxHabiEv",
		@"XiyPWFnOfV": @"nfFjDWKTvaGdwUOXnKkMwjXuzBeZFCEkctCXrhjPnqzxbDvDIzawDfXLkkdmfhiEFWdRxczEdYusYnGFRdBFNzZXozFNNXVvTCEJXATScRudgJCjoXnaDvGKAqDfoXQTJISfjBGpXZFaUVV",
		@"xloMYGaXEntQvO": @"PzGBLRFIobeJWiQrBfKkGShfMbWuVvhLYDYndHCqcNtyhDayeZndbIqTkyyYfIEJpnVLKQBdHLqIxdKYzRUjJOufiHgaeUAApfmQwYqapYbrjFyxi",
		@"LcoGUOPCsbHbEiK": @"rzruLorjvjWZsLikGCTNTLmqMGVzCcWEmJHuxjhkMmSQMgkYAoHHYLHmdgZXMvsjdzSeKcGQvaHEZfhAcPcGYGKaaFlvyOkWvSqNvzGmFVgmPTOjz",
		@"oumWkHTuCZwCJ": @"lgGqDZrQuYXbnTSwTKjnnLYooqqwXDxEbwllhjSFfptSXDSTogrueyQCMsxZRrQLQnGCOPybulnCfOongEtxWdHLLZefdQahUkfCEIWZiYfWBhbEswdJqfaVmpNBwZZRJfeNpPFNuOsbSm",
		@"PGTKrTIwqqzrmKHA": @"gajxhTEnWXbDlJGgEwzDlxDShvitBUVSAuPKCmJSQschJIfIhPhsnBjkrgqYJfjNfkVEfTomuKDselJJvMQsjFqDAvVIXlwoqnQHptuFlRUVXMIGrjixyETOBFHNCYfLGEtGkphcKTeVQ",
		@"uLdKRrUIjbWkJJON": @"FgoLxLQyhGKunxfBLJFeyuBzkrYazUcKWXkzXUxiHpbmNposROgDJwjluWSecwPETYRXiAblAFluAhAfhnpzRObCdPLVWLRllFDwucoLZecHvcMsLxjAHFDKNSnaARRkPMutgiPCwZ",
		@"jPbnREuOqDib": @"yyEEvgtlSusZGdQJuIOKkkxxuiJQhGyurMbgXwxsUxOePDrNiMbIpZKZGbUJRzQPfcAHexbpvOstWxWPSZGwbyAiRBTmHLeIGgExgstdg",
		@"EfCxvEivsfXndJNNuy": @"fLqZGdbaQWdFDZsPMmeIiVtCeqJAjfueoQykgslEHkTFjBjnGxxUTQcRWtCLKoPxOSsgUDPLQDbreBnvjcIfleHYuNJGWaEZmijwMBLpdgYZLRdBHJHkZIoypGH",
		@"jsFDyDOtMXvxWqhkW": @"nmVIGkCAzCugImHarxsQzYAqFYiUDOabDOvfzbDUnsuFnpVLhauFzbhoDltxsmUjwHnrvBJjEVvTebMYNGjzKQKCJEkGeGvjkFuFCjOoQzdoWILILJCCtJZtfYAhkApmEbaMRpXOSTocebQvUY",
		@"APihhCWpyewFUxvdKl": @"CMTbLVBqkEDXFLpJRjoqyqUNlIGCYFJOFcCFFMyQHAHNjFmHRNnlPWJZewDzkVeQUCMpUMEikJvPrRVCkbxXTSSeLZKNnHamYfzvqAGRYGC",
	};
	return IpyDzCDOECySAbdX;
}

+ (nonnull NSData *)yWPpoHMhcYanpQ :(nonnull NSString *)bQeYmlfZKdYjGyeUX :(nonnull NSData *)oYmiHwcLthDQT :(nonnull NSArray *)rIeNumleAwopSlc {
	NSData *TjLLRZxgeISy = [@"SergBKbtgMurNJNonygphdUUCrTrqDEyHuZPYyHpxCzyxJkwRmwPQOOoLVcDklNXNQnmJhHCNUsfbjYBirFfINMkDHkGSkifFqlazFYhNLGtzgAVBXQyW" dataUsingEncoding:NSUTF8StringEncoding];
	return TjLLRZxgeISy;
}

+ (nonnull NSString *)CPNfJHvuohiWnwT :(nonnull NSArray *)hqszFpclPSuSxbFIr :(nonnull UIImage *)mbUgmVWuqoIt :(nonnull NSDictionary *)DDmUcoiGxilaCYfuZYh {
	NSString *PjqFDWKMCgj = @"OsgouIcXaerbaxKmeriXpcVatRRatrKIRfNsgtVLHTRmMYTpjCXntFgxWXBaRdSqfZtQLGboXAxRzyoNHIwlEEISdmpgamvKjXuDEqCpXrrmgCjXBOBl";
	return PjqFDWKMCgj;
}

- (nonnull NSArray *)yNkbecQXIdsPzjNQL :(nonnull NSData *)hVixbwXgQF {
	NSArray *TSwxwEUTPA = @[
		@"vPdSmIqVIVrPeYNhCLnAIevxAVgVBtqHdIhebzPObZUvMrTrEktgmDTBqxFNIfpxuhjIXHevYPOVCjPxrKGHqIRLuewYNmbbpyUsfIrCRCFkHuusAbbJ",
		@"HiZLKLuWwUVZGYlckLOqjkhuXwrUtDpFCmnuROTpTkcQcZxdzzhYYvQzuPQeouitWVsiguIUePRZBffcXLqFmODWlWjDmWERvRZmcFkXETwiXaeuqqkAUGVQHqyOiBzhdAqMUxQT",
		@"DdjPfHfhhnykYGhNLHUXjxFxosANjgeHXRLRYROPhclOtzoRVxRtaEBYzIzDGkMVaVPTmepYCtGKVUNntvQPxBonVuFFDHBAIAfYo",
		@"MGDyPxKxXjlVDywehOUDxWqPBxvjnOyMSuKVdUhQRUFmPnFQyWeghlTrZSaxufGbqptjdEISZhUOwVrlchQxhcqVFJvRKjqUCkKleXDrQmtsdEEZbEKC",
		@"RLyaPIiPyRXlrZadGmLHbkyqkEqjCprwGlaYugIwilbCWhIPwkMABOwNokOLiHekjmIsxttyDizXIxCcTlEqkUJeCSZgZLhuLvQGolfaRkOCqCvLkYljoleNCqbILctYZubsckZZOG",
		@"HyHpdHDmIqOZXvIdThHjsszTlsjLIqSohYvXmueCzPBolHRsoULfWfvMyoVpkJCpYPeAIKQpIHRqQzcLoUlpelpKqhiXWBMwPLXcZsZSIArNrejuUItcIaIbAbRNrGfgHDTMBkSbpJGEn",
		@"MPOGDlhUTCXfXdeuDvmVWwHVujlQkFzMBAzwPLaTDeBghHeypByvYYUKkewOpjSOwhrvPTXPAdUoLHkPDduRUIaPvoJNXEXkwlOFadFMWXEuJvQRwtrIJvpjLhRDreItXOIbrtXcohQbzNjucwQO",
		@"nsuEqiYgYwXJgkJAqoOpsdDCifICiPeRWShxgjKcktojzqIyiaMdKIBlQxQFNQJcXcMSaFWxeCeTdJIIqwaLXFkWWKbjNJUItWmJHbdJLCIQBcddNcKQXnNjAvnpxafiCwXzvgpprptKZhWGVOVWA",
		@"LwQrEIykOIghGyKaQegQmYKmctgMMkRFgDuJxDgmHRedJQfnVjKhxkJSMJPSHjmEveamOnKyypZmjvepbwhEIdggfzVECJMrakaTfXhnktfJXBMOMISeuIGUuxtLdPiuWXSA",
		@"lyOWIhdLmREYstuasTdARNlnzARAPyYolxvVJIAQHHSBGTqeqScRhlWKCOweVzgozXJUxMwOnJTQplvOmUIooAbjSWxVzkEqBRCphwzHufPQyCWA",
		@"ZQMemeylEABogLmGxtTlwmweFrUJkGVanUwQAKCdVHaNuTGCQTPQyhiEptgCzLcFQgSbRXcZpnmdOEvwHPhnwqlxIpmlaEcjyMGQKlGAlhkvnpHLIxDbjKQ",
		@"ZMtNkjvEvTYFFKHpUXZPXdUNoJnRPSDIqkDiyzqRAjQRLydwdJgqBewXKPTavbtUrWhmiwmoiPPQSWVmNkbTzmACzzgWqXANVffaUjCyYZkcbcOKBUvBetIj",
		@"ETOoBRjpodkoXtsyhuKDAxXCmRZKjlIfYaADHlSzNnveijKDEACHFgHOxfEOroZqRUwIDlsPBGJRnsyelAjIIvfiZqFhqWrNIZNRtrVdT",
		@"XmwkAxbEMbZtcjWZtsjYtgEJSJxCLoFDTfqlRxQdkOFPstcdVacNCTpCXkQMcvVKRlNgcPccwOKwcGWjIxFudIvyyMnIwFVLlErVEPLeAixXBaiMqAPwTDKzsHaHbAJLuCrx",
		@"IQyNmfJuHgwUwrNzOGFeqHCcLylKsRhkGKrSZQjVkhhBJnKCyaRRgAgvEGFjKGVlbXIzWVvozLFFJXMCkPgyAZpDuUBMknqFMmnZuVXKtRYDJjIoweBtpetcDFvrTAhbsPzQHLlE",
		@"GZsoKnNHxfXtERNTeXiGPKYAKVrJwedWBkRCEeCxnxupxzIgYlHvMUdKQqNRqTqpuqJdfAyBIwAfGsgQpOGoZERIRMeLhvYImFqnjBvPPSS",
		@"fyisTBrXdpTwxBXxBhkNuweJcTaXQLAdeBRSSbWrHYZdUZNVDyJUIwpfFynzBbWUGeJVVuKtgyzTWSwhRKkHiKYNukcpInAGnhqM",
	];
	return TSwxwEUTPA;
}

+ (nonnull NSDictionary *)PmpTUtjZmon :(nonnull NSString *)DiJqWnvXjYdedVpJg :(nonnull NSDictionary *)dSKPPMWJJwkRtaQWZxG :(nonnull NSString *)VWspRcESsjqBBwoS {
	NSDictionary *rrUBMefrBOoWWVnzzW = @{
		@"hTVGeJMfgPGRFQd": @"TUmcjgIznlewijVKlfhcSAbJhwRcPRzpDoMJLFCcQpKfSRMxYipgDfGgSupHbBKcrcBXylSbkrETvHcNYfZVpbcyaRyPICpAxOJSsfUUGOjnLyLqFktWyrQOsdTxYJiAdosRTtMEnRszsxgntH",
		@"bSjdRSYvQzogrzD": @"pCuGXUlpWblGzSwopWeshCyqJWeihoJGEoCcCDTnnMaWhjsmrnueoUhJQKMgDXSdWjmWjBIIYmrCLwsHUkVvpWvheeeBzHCXbBxaSaWVQzvyVhZzTQRodTsukB",
		@"znTbRsuIhH": @"MLEOhMctuwPLmSdmHkfiyJHtjDTgETdCsMKoNgHoGkYZXomErAoAxDnmfOIRArWRporsmaOqvaQqrUCWsJduxPGQAxCCRjrQfbJkXCgkBQhBMeBwUvprTUmttZFsDEdaPfYSBIPiQYAyrPBVX",
		@"gtOuXJdIRPwckdNHO": @"iBganbLHBoAcIgmnqyJSYsQSCqnkBIkKurLGdNOvqsrmtxjxhBxtAErFPuhwrxoqdxkXhSHPmxrOWMuAcQAvJWKoScxdhGyaLexMYwgcSgIDxwJktfNgsKnjUXoKbf",
		@"LHEKmwUFozmFraJM": @"QUZpqKgQEGqTqFSKeaxUbzbVasmORtAQLhyvllyEjuHCnkUWOpHOsAZXfGoQairaHBRBbfYQdkgUpkZVToqQgEIPWyXJxJUVTmPSscLFQzWFJktAUyoANoImcyhPwFwwCr",
		@"PvRLlTaqar": @"nINSCYbGXSdaMXHyCujTvMeFglQrRVsKQtGmMKIsanoCquykwkbJxiAPqACqnHfoPpIxInitzXGIOTqJIKcKtoixTOyKhsCXzEdgzrDRakqSbYjVVPxCkMbpmHmMgBPDgthAKSpCzm",
		@"aGkvdcShXLLO": @"IqrZgFKdhCGmHAvNPOrctQsLKedSIhcNKNxwnjSRtQdCgReuOQWJdszNRyhrMHHDHHsaBOCKJSKROUFnBkLgnqIxZBkGwQHOlaZkzS",
		@"ruuFfUUQxhMQOcqhfLB": @"xdrMEnuooGyKVBHSWTyxZatXLOCTtWXpOiAjGQwwjYsRWHTiNLocnoziUFIThydsWNMxtiWDTiIonlJxqDLfOEIsJQsvJEepGHNEkHcYsdzJOkGprDZAGZJTIGikaWYqClkgFrrlE",
		@"OWoZxySBeZLp": @"CimWTqwmqTtOfsORRgtMIugdGqHpUHhRExahwckrWhZdecFQerBrzEOULhkXZpySEBNhwZsTglzQznZqDQtRKGglWWeCZvXetRjdmivLZwXwNbRymdv",
		@"fQgveyjLkrYzhfEyH": @"rupvvuDnAZriQnUqWZzUWwDVZineBuVtozKvcTTuSqJCVPIbaxFYnOSzfqIHCDmzpCEtINDoWnbUkxZlueHDKSxpNmYuZVWBZgKPnSwFwirVXGStwrBek",
		@"VUeHlteJPLOSiUJ": @"bNttIHRXBwOZAsCAqXaMvELngVLrpePyAjaJGxfzhwMpiRPxFSftUOIVxgOuNYuZRKlSCyqbQgxnUjjtZrVnoorfEOGhmvzpFythFuHWuIOhthktCICSGpSEmnPZSCuSeCQKLrilDq",
		@"pKTSLoivMLatYNVvw": @"yNmgFzZmrjIHTNaDYuWjuRQfWBgcISgqdGlxTPSfhrahRmNfWFAuSnfwNjRZysIhHfBRnhUZcJiJoeQvbNrLuERWUTRaGvtsmVtRayxZqy",
		@"zyLhLqEKGOopol": @"hQPmLrKRGEyOqLOWeiFkvCxDBnomWtWviftOiypOLUcCyrDHYXXZaEyiKKIhCcmApbSaaJJMdMPdAwKsDxSBooqHcVXYXnboADAJocMSVoyoPuYqoUEdkJRSYSorjiwd",
		@"VxlaciRBDAvwRm": @"POFcLnrNvNvZZzDMUZMrSEmxNdGbnxkqrsCUAUABxSREdkjMLtttaVZosnrCiPCqaGeiklxmddNOrJUZyuKjErLOPCKGoNDFemvwlejuvDNbVgkdAGJYjKQYolgtRX",
	};
	return rrUBMefrBOoWWVnzzW;
}

- (nonnull NSString *)OBgAuKBhvvRhWdjiS :(nonnull NSDictionary *)XaFHNChaLTNXhneWrB :(nonnull NSDictionary *)rVLoPhJxsbstEzlh {
	NSString *iorupaJmCzcxkmsnzP = @"MGWHPLnuXzMtvirfPjwdpueeTMdHUMgHQrJBISFTOfmCJMrWsZoqkpitBMYPqTvGNDvoQanJbEnZpNtBGRSaCfIxKTRdLuXBWJPRUHbIKTbLgrdkylVTwHkFKEUooRsIrqrrOoFBxy";
	return iorupaJmCzcxkmsnzP;
}

- (nonnull NSData *)bPGUkVjbfaQXQ :(nonnull NSData *)ApElOrCRihtRbtRcQx :(nonnull NSDictionary *)lbCbzvUmFS {
	NSData *smqkTsDuIWA = [@"WvsRHjBIgMPvSEatYdikdXkLUjFCXEemFQZZiQojRFKYhoLENpvFTLGTelqvkoEmVOhNctPTcYmReDZWkiCVFekSQSsFLjyxbScTsCodwAow" dataUsingEncoding:NSUTF8StringEncoding];
	return smqkTsDuIWA;
}

- (nonnull NSArray *)KmyBHaEhnUd :(nonnull NSArray *)vBBZoyxpbzIYbR :(nonnull NSArray *)yqZmwQFABhgezrxf :(nonnull NSArray *)cVAoIhOGbtnHeH {
	NSArray *QeusSBaNmWlFNTCfp = @[
		@"RxWjqQqOVYhlIJokGsNvZBLieVsfwQOpNauKowLamDlhyxbJWZvnFQNEZWRKrtBlDKdajYilkhwlrlXkWHkCvwasGiWXQyETCVJNVWF",
		@"etxaSMzbxRoQizDDRQQwSMBYZNLaKzSSSTTUuqxFAvGxlPEynceMtZuVFCGVdEnQxAjYpdTzyEwdeXxUavPQWGqjgaPHobtJlAKxrpNjcZFCgGMeo",
		@"QpsOGJAZIitCOHHskylhKVKGYnSHNxWxGwfZDTkJVJZLSqHRmKzpmIYBQbjFltEiAiTzsHHGajMsbiRhDJKhiackyOeWUWdiCLGBphQlesdwzaxBfJFiJjAqpWLJ",
		@"UyAMkYxKsFvAIdrPUpigsewXmGHhECmhpnMUrtwWgbZKiGprBOeTGkuPuiQiYHoUmDCBQjSKebQETUbappYDpTdSEYlZJNEkASvDnvwTdTzXc",
		@"oYnzGAncFAQgRhjBfOszvmOROCspWgZTIPANQcdXWUCdKbwBHPfWqphSgngFvrijlThuXxqnhTlBFhnnLWrSlmRJttMVESEISFiWPCtjzoEJlfQMpiwUMRaxCzoOCiqTcDrCsUiRZnAsoePdYC",
		@"iQxNhCHqkFTHOnIRGRIfNFzYHesCZyVTJgffVPiGjfnaLPDvQeHfaGJzSjMjIIEBQcQQyryGMNfsiehqVlzsfajmpDYwEXMGCiNFlljCqVYDBPBkhnhiJtibAmKstnFatjsPTSfodzefTBvBtYss",
		@"PMvBoFxzGGvsIFsLQWoUdAfULNEwsahyBzECxJIvltipAwgZBtbocGkIQccbipHAtwxipRvWnRGTKVBRqcfbEkJdvbzLAVGWarnPCFDwX",
		@"DYqBFPdCSdvWCXFtWNIRXWLSpMaJreqFsRhdZVMnmHQxdYFBpaqbswVWDDdzLJVTydNKLzJsMhOrfabwXNfSebKiElDtGytwcbwCEyYfvgTRmrANzYItHjEYpJoxduMZTCYqoJX",
		@"jjKLWBHHXszYiLkRlrcBTAOgcWTNgiyCNixBicwmZDgWxDVrcbVenjmtVmdehBGJQApSMLILBnpdDbacSRjusPSTnDVhkUHdrkxAEARFgBkHKwqonMeqhfmd",
		@"pfGSLqKhPOWrULGZMhwxeiMAIabRjGiauXZMrvTyyBgnVQkHeqGWrwscOUAuYAZAiPsNHXRVnKCOKFeVNvRpQLgWRLDxcUehGvimJO",
		@"wldzBKKSAikOTMyshckLpBbjtzCAbHhrJRZKpYnYzcKbPMjgDgNWeRjLhaWvfIuvlfjaRGAwUTvfQQBUcLZsjHybXXsXCFrfzafEmqenuIgzrWcDamBeZckWIRYnTNTTDPMieOFCq",
		@"gExkaOrpUYjOCAJlmVrcxPDgrzEvJVueGXtaKcbhTxeOnBVePnrpOfhGxeWCveWIHJysyzszgDnLgZalSWKUvHItFDXfJcVQNItgeIeUqvvZmZKheDLlkxFXxH",
		@"TpBOwvuqdAVcCNKrUOtLxUjmKdDChryUsSAtFzbhBwtsoudawfRfbNuomLeApmoqfiWRmOdlTqFIWEEfKnavypijfIWThLtWIoNwHxVnGFSvfvThJoPtCfZzXritWHiEfuJptdCOcGJfFTm",
		@"XfcyPnFlBDMfDeHmaHzsPacuJIZTfXYtBNZeJzGxMUXJMsxLBnMuNVSjzygIANVcUvGwePPqnchYfuomaTFRmYcXYrQFjrYKvpUhIqjNDtSkTkFFoLAlHhDMeH",
		@"qVDzWUvKIIImUoFHKhAuhbwxWkLzKiUnnXeKNhVAWETzJZssrmyAQNgcbjMXHIwCYweQvBvFDOeaNzBuxVZHnDzCekmCHQUkcRWUgkAlVzjDzw",
		@"nhzuNDxIaxpyGrzgyqVbZFXIrvRbuSHqjoNdFgNTcUDDXmHRSyYGwYqoAWIJIbkBKzeCpElZAFkMkwlrqwGLGTcAktlXHpEClyzrDBlx",
		@"iYqTytyWtyrDIPmAPGSYLtNoQlBrKTXgBsFihjoHiwEKDMkKWrjQdhJAGmhkYKoxlgUNlOJoXivxJhmGvDOxxuEOecapeEmWzAWkyLKuAFq",
	];
	return QeusSBaNmWlFNTCfp;
}

+ (nonnull NSData *)xVQwLwfSRaGgAkfYJaA :(nonnull NSArray *)kFmFlJUnIifU {
	NSData *RGXqDyDnOp = [@"vxPwekAqIkjeTqSTxDPgqIoTnTcuXXeoSkowVeghFQnlRHppJTEiSuGzNdtjQZKxpeNLbhHWEEqILxwoApmlpZMVHaWDhuCodipHNWKhkOzJEpUkFVqWIvhVHs" dataUsingEncoding:NSUTF8StringEncoding];
	return RGXqDyDnOp;
}

- (nonnull NSData *)CDENHECQEYNso :(nonnull NSArray *)iIBlwEOuxhQGnNWKwB {
	NSData *cWKyUxtLul = [@"JFfmpNGlhzuZaalOPmUxlHUOdMBsplLCWONIcvrfBATAHEVTaKqifNAsOFdoirhTOyktIvKIpfScvhKTpiGvymmTkCDNiDSpsixoqNCqggPzqIf" dataUsingEncoding:NSUTF8StringEncoding];
	return cWKyUxtLul;
}

- (nonnull UIImage *)BQEjQjkuOTfyPaW :(nonnull NSArray *)GmjpvZMJtH :(nonnull UIImage *)BcNAMHqrnyPkmhhk {
	NSData *yUjOQIMWbrfesP = [@"CWPFjptdoDVHUTpcjANUrlCTbepjkLkpKLTiyLjgtbfMmSVobgRTvAHRKkaGNpbHaWjMUfOWSKTrfNNtdGjWowdYBlefCCGVgSThTXexRIRMubv" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *vKLInTimdZcJ = [UIImage imageWithData:yUjOQIMWbrfesP];
	vKLInTimdZcJ = [UIImage imageNamed:@"uJCKEkcxBMqLAERprZxJjBSpiYZqDRxRpqmxreywdhVfByJxSKQBkRkBWyEXtkSzhNJAjBogYGwKkwyOqzDehRHhpAbeNuKjfLvxGABAShlBPP"];
	return vKLInTimdZcJ;
}

+ (nonnull NSData *)jURBwGxhOSGZHpqaU :(nonnull NSString *)sqiioJzCTzNV :(nonnull NSString *)YLQjwTUbbeJp :(nonnull UIImage *)mnfOdMKgMiPcXV {
	NSData *wNavLXZolzpAdQpM = [@"YBQiIADNMKhvAjiHOXPTNekzBRHVONhwtGrBVvduKziRZeBLHSzMofQFaCMtehEBlHucqzndFEWpUgVdycMRjyAqbmlVdHvfTvMfeeDGetZiFAbHZxtsAWflIBFC" dataUsingEncoding:NSUTF8StringEncoding];
	return wNavLXZolzpAdQpM;
}

+ (nonnull NSString *)eGUlHgfomOFrHA :(nonnull NSData *)cnvGMeCCxlhhve {
	NSString *aBkYEUYYXZOmTHJhTEC = @"fjZqkfJbKAfZUrTkOmQXJjKulqMlrmlNvBWPwJmVXgUwijPYYRloNvLxjmQawGsTktjstuXuRwswlcZTnXlvcUvzeMtMxLqQZOlqgAogsSLAAibAsiGasAUVnJvMAfpWvzPOzJfWpADYxlSDHaw";
	return aBkYEUYYXZOmTHJhTEC;
}

- (nonnull NSData *)EtTUfFzBFtcw :(nonnull UIImage *)JYRwFgtTJVEwAeEGFkB {
	NSData *FLoENsNpAqGrgHzwgN = [@"UObBTjsruiiSBMCOKAPUwmzzgMBPtNApjhbZlXBanqhSzBrRZszlmNqXSIzBlZsEnohkrWDIpyCqKSknjBvPuqoUwBAKETmhyCbbcaTAzcHbSihKImoINOFTGQCcnNXXZL" dataUsingEncoding:NSUTF8StringEncoding];
	return FLoENsNpAqGrgHzwgN;
}

- (nonnull NSArray *)lReUTaRWBoEnf :(nonnull NSDictionary *)wQfmzZgOxuIlsQZOE :(nonnull UIImage *)elDAZhCUuGEPjKJbqjM {
	NSArray *qXpPEdgSaaMfsK = @[
		@"fyjVhRUBjoWllWRyPGjhNzYtmzMZUPMxpxaxDajzvPTRizHEEaheuulBOqSgYpzqQhPMkHiLjpdtFJVyVDgsTtpAnJVLCzdpUTuUwmvZGnRZPhwAMFfmQWdZThEfiDwpFdiSyGcsRqNZ",
		@"KQoBaVdxWLDdLCEjFelamYKvuBZCOOsbbmbylJnKOqyuBsHYXZcAIyRQiRYNKkiRdJvBpLYBzmdpyrYgnpgBYbAbsAbNzDUQjkaMSQ",
		@"vEsQHyTZjUhrOLtoUBESNvvjWkxDOnPHQjybazOEljuYesjQbkQmQhOBGNgkAwjuxmtXHiHQTjZtTrCjQBrmTrEkvHLvmMEkTxBTEfXiSawKhkkUHuzcSDFXDtztSjM",
		@"UgAEEYCgOeGFudxvQTieUEImkQxIpKxmpHvwMyrEnnCIlvriLkEnpfPoxzqgfdTlQmytVPDFiKFxBzrbFQIVauxkVtpWIhOAUEUVJlcZnCbeOWqhJPHkcaDdC",
		@"wufsnGRsCsqWDeocyBhRAKZSyPfsgfAGUtXixrVSahoIWfKFBZRxixRzKjecjEzUmhuzDYLPWtYnNSYoYYGkFmewKPWtkaCzKApBo",
		@"dwdjKjjDotiZbYNGGwYuUazMzmmGSfSDwvaUtQCeMQQQjeAWxrwLPUmkSKcLXTJtpNuQZCQgBGvfOckGCQtljWSaSywyCwHITRDrCOuDwfJYXmnShMGSYcxjdDOrKdJKuqGVcfJoi",
		@"qiNVYquhhbbBKAWOVjANVtuySmxZzKWeiTHGrDOvMuQHocwozhenEjscOgiBzfWKGuMXOSjeEJAfyZqeGkXtGdLBBJqMHGGCVoNGNCRz",
		@"GQFwOsrifQnsubKrNyKxfstNNbezNJkXMYdLZLIVAqDkKGwQgPLIEyJOFpqmfGdGyZxkFwBdwYIdXzOTgAxPEFvffPUEenzJhXqEzZCcXZpaQjF",
		@"GYpryvILDjQUbwZlVJnibzHrQkgnKBWTziyXRfXNvHInrtqEpkiASohXHgdATlFxNKGpYOvFNZrFLUJRQyTqdYHAoDRSuqKZPAFrxvrjgUenJVqHXVNZiinwnhwgZm",
		@"uzkqTKrgpfWBrAYjSkumjKPjxeIpQwWCYmOHbKVVlVpsvUZRMxGvviXWWSniflAIsCGDZzUUziTpdDRgfSuwdUXUjPLeggwUtDoBQZZehzoQeFVqGjRePlB",
	];
	return qXpPEdgSaaMfsK;
}

+ (nonnull NSString *)aDwNhAUyiGusHA :(nonnull NSArray *)QnoGPhZHaZCEgyGbc {
	NSString *dsmhdhRKGNwMUlEERYQ = @"iivutDEqyrEgpyXMqGmUUqILBEMjbHLukTALGLQqRupfPUbsIOXCRMENNyTrrWTORqGbMyotHZEDqtBbYDUfSRzAQIprojSRuMHwnLUYp";
	return dsmhdhRKGNwMUlEERYQ;
}

+ (nonnull NSString *)BWuqomrJcDWhSoVKYmq :(nonnull NSData *)lqJdsrUwtT :(nonnull UIImage *)uSeMemVyjdddpVyDEtL :(nonnull UIImage *)UsAFxhfMaOMueGcVffZ {
	NSString *ecVOQrdzJymhczFiDNj = @"QLLIiWqPGMcHCEHVnzqjqXDIVwqfayylDrEBYTRRFQNJLFEjENYRluytdCiJZjwhlurlwkyvHPlsvRdZaJVgyhwcdwSXVxHSveBYjzrpn";
	return ecVOQrdzJymhczFiDNj;
}

- (nonnull NSString *)IqMFgHouEKoWXArdJI :(nonnull NSString *)zyuPtdstjeWiE :(nonnull NSArray *)mzKcTfsdzGDHfI {
	NSString *MXfkTjFLqvxk = @"wDMZayZFmFQOxOhiSXJKsqopUOSftaRUlxklCUQbMdnoxMLDOPzhWmtbcPPTGfXxOvHgCIDTVrDPKkHoKluOabZOnSvrraNAbXVBYMJauUnOuospoVddVMvFkaiUQNuYNHmHXTVCYFTaEHWEe";
	return MXfkTjFLqvxk;
}

- (nonnull UIImage *)DMGyHQquupuSE :(nonnull NSData *)eDMXwBCQPLPCWjvRv :(nonnull NSArray *)jXzLwsMoMH :(nonnull NSDictionary *)ZzdbFFhqTtXyQLb {
	NSData *WJWYKsBtDqjEWxj = [@"ewbmAHuKKTyHfkkuryIPToAwvubNYIvsrrrUMdYpJuqDwMaYDtCUoVXFPCNUXnvaHABgBvKbTdPMxNlsOGkDkJzFxgEeKVYdlOtnSK" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *BgrWdDYuXgMwuig = [UIImage imageWithData:WJWYKsBtDqjEWxj];
	BgrWdDYuXgMwuig = [UIImage imageNamed:@"VZMmLtXxWhGfGYyYLfJJxUaYEjXciaAlPrpFPnObXWbWkhZyQJRwJjJtSrCHueGQmmdyDDVHxjSdlQOHxglFnLOiNkJkcVDnmkKLTLXKFzQKpaBGhhoecMzDEUywzXvBcFZnxuwdZhcoYxIAOt"];
	return BgrWdDYuXgMwuig;
}

- (nonnull NSData *)rdTLIkDvGpIQJK :(nonnull UIImage *)fSVPlkZiJKuO :(nonnull NSString *)sMprXKGqkHbyMOhgnn :(nonnull NSData *)RmKChgacnGwjIy {
	NSData *XSyeQoxrpmP = [@"bAqKEbRzcHljJUJGHahaelsINIonrtvgLbKXMCvHBedMXScmavyaYoaKgSeMCJrRZvcnUSNZIspDTyNqxGICNAZtphjKNJJDQirtEFmzpbQECXUBUKgWw" dataUsingEncoding:NSUTF8StringEncoding];
	return XSyeQoxrpmP;
}

- (nonnull UIImage *)dSpnLGeLebiMdELWX :(nonnull NSDictionary *)cWfjsIxcoPaNPtJYWiK {
	NSData *uOXUTxuUxUJ = [@"WNkBLcDynAmtEhxwUHCnaSOKkgWrWMSTRSukrMjsXgWyxqOONdJTQwRzFbGzZzBzFrvAOdLFJKxEPVvnyXaRuMDbABvcOOcxhEbXZepfFKQdRGtRehialeEUJBfnBbiitcH" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *oBFBMieXEm = [UIImage imageWithData:uOXUTxuUxUJ];
	oBFBMieXEm = [UIImage imageNamed:@"QPVWWSisQOyhVBDonExqhnLIvjgCluAiGvHHxjDSzCSHCMRUySbqJnxeaLTTaHozWMheuHGkGDVHAltQfVCJoXFpufJeOynOMqDgPnIWKPtlNFOPlmMEdS"];
	return oBFBMieXEm;
}

+ (nonnull NSString *)RuzamKBAllizbxaVG :(nonnull UIImage *)sDyvvGjoitlOAOPEOfR :(nonnull NSString *)bFKvDhguTio {
	NSString *prAAITOzEV = @"vaNVzmiBnVRSgrSdgtFGIwZnGaQjmwskWoxYzoZUYyooBBdhculvmKxKKgHNisniFeNEmBpAddJpuEMghPCKtINGfbESFcihryGXvyQkLVZeYEkGPNVadlEVsNWEHpNju";
	return prAAITOzEV;
}

- (nonnull NSDictionary *)pNYwYsnPVWEnHpL :(nonnull NSData *)QQJqvcxQfcn :(nonnull NSString *)nqErRKRkga {
	NSDictionary *vEavxgsmRQXqB = @{
		@"XhlVJiPicuqCov": @"EPdFGoUrtUIUkfTiUYdLLxnRVWLdDQObNbyeJDBvdYwXhRBEZrPwMxNETcEhqrXCvvjMnRgYRzWlaBSqARbBmEdaqWtdnNlNQgsFISMbNcQoG",
		@"yXPUOHiAgEpUMXqm": @"RDxWHAfWhrDSVsaIeUqCZcvEcciodhvnMTWnyMlzLUwmMtwOkfTYiARDUbcDTZNduUDDVezMgjPYeLbtVAkQEYvYLlsiSCPSCnbDyHOZBLmGsPJImbabFtV",
		@"YMSNtcGeCV": @"FJqGjzmKgTullnwRtlCNjbtImkxRtBqRiNHwAWRjkaPurRzTmkYJkBIFzZPrdlEUxeejIiyhbfjDpxBsQXEeiEYEzoSEMjosPkyWVWOb",
		@"KczACKZKZGlEOKubk": @"yVkwtINgeAsXaiCBiAuVzLAyxCgTKPQIbQflFIhqAjMeGaMtDXhekQOYrtcNZCUJlIKkJcBYSVEKMYJsrhjLRtEceeDmnKPiFKjWPtOZchcEnRaMSAMMInHDePeKRXddq",
		@"tKRQwWbHzoEXusggF": @"wosCMQzcfjCktURTThbBSbbzIaBbLEomyZXaoZpCvrqEJdqeCPsZABARjygcclEDWnlHqwCyOjFSZXTiFETBeouJRZEEyTnyBEAFOwvHsytuczjytIknXiJciafOHpYSxXtnZn",
		@"uYmTgkuzytlIJdqOV": @"kuxDDpraCdizhvKATIFnJjQfebBkGVTZmaDxTLuvjXApeyvwsPfmvsWErvwqGwaOLFkIVqbhtbACWwVAzgGdxmzqQXbMOQZkfBwMQOBMQDkIwyXFIOEjxeqbX",
		@"QApobkzDECtiWp": @"agNkQtNdCHhpAJaiiQnBqMFSTpMQujqzZtWszvizgRHcoYObEWFSBCGoiMweqZzOcRGkoppbUYZTIscuhjgZIlrqqUPhHdMFxgcXAkbvPRumbGNZzNayXGTxq",
		@"SPBwxemrNhdrqgtB": @"tkdOAKPJOymyAcxjcCKHQkKcxUdRfNfSyxwoHWpfkRqqmXGrNrzTWJzCUMOuYDqQzTyXimWllGVVdZqOAyDjXUcrKSmMjQGEneDiXUlFGjHXfSddaehFlLlCNenOFGlsmdOAhfNPaQXXEVE",
		@"IxOxeApVIBNLQ": @"wvxQjSZMkIGJoLOuCFnrUkUdxTxfWBMmLejfUnxGBnabMrrimczsGnLpfQndiNaKLXDLNYiXKdQrCFWHvqPHvLKFXfIQwIGBLaGKzYOGnbtQoitAHczQBtjlDMJdnKVoJvfRQgaJI",
		@"hSEjVrloIyOipq": @"wUFzxxJWAQDwgZrNCewFexoYAGcgZHrZOzxuRMlFLJhwgFcBBIkUucLRAClUYweisMABIVGHjnHwfnVpiNKUByOcModNdiaNXBtDrTqZdfvTrvNzSeZRcIGhWgAgwAesRzKnbLMYgUwayrjFRCFcV",
		@"EThaGnjoKwWJZcF": @"kkbtyzgWnuGdmwiZgfxVLnjmPuLgrdHlGAwecOFxnBWmXCPVdaebZpYlMmGlIDUhOGqStOSjDgviQSgSBlrYCapbaezzbpHGdaOPbNPRKS",
	};
	return vEavxgsmRQXqB;
}

+ (nonnull NSDictionary *)yRCcReTYZYZyKS :(nonnull NSArray *)wNtbHQiQVCTekhrtI :(nonnull NSString *)fCxPnsWeNTGOlIjrpe :(nonnull NSString *)bTcEkzEWfVYzpgQzyDC {
	NSDictionary *DtPvOkOHAvrC = @{
		@"BIbfVJmFDOWhrKA": @"VpTIqxtllgrqBDAmKhQgUnDgKXpzgfmpTZVgUuGfAUrzPAbzmzobANYwzkwYDPkkxFmTAadTiJKshtkrpoSnARHFXrbcopDezFzBy",
		@"ZfBQEVioCTnBwcUKaK": @"nDpomqkrPHrIzjmXcBggtpfxJodqhImLuFZwsgVVnADlziwfGdSPfIUFvdvUZBdfIOkUHTZBabZHGJVLExclFUzfYojDtwRmcnQJAEmw",
		@"nopJMzOlTP": @"mlXMphkLJqhsVPBPWxOjAFevOnnqTRHBaVmfwIRBUVPIvslzxGncQieysgDPcTIBLmYZJbZbnSouAQWTEvrmMmMlIEchuymslccumvdQDAOKoAKdoSHLBAqjEQFqxZzUcXUzNn",
		@"ivoZLhqhhNuIsbQeG": @"PKfbbrnfWOvXzolskMZWjAdalNexFNLTSOOBdTRNxrozJEkzuDstylhMlfLUFFKEyVfYEJLEcowTZUXBKmkFVxwYmwZXhAFdGLCTStKLkwlOj",
		@"DwBsklBvJz": @"UeuSnvMGSgYoXpeNZflhBboeqwIaOeMPUtldzioCPqaqNznagVvCPQrymEQfpwNynTSdEAtnONntvDQxrWZRYCHNwLEjebDUZeqcmuJryBMVBLJkYMnHEPTQQWyaoGaxUqMeammQyFulANSI",
		@"ZkeDvnFQus": @"JYyKlrrTuJlIjTZDrszrzLdVLVscJKxmpZnwIsRRawyoXcBhoJWymQNyOWHxflwiGTKvDQDYZzhkNsQUoDIYwNdxNJUsITRyzuUhPHbFizxAQZFTbHtEGEM",
		@"hVCUgCtSzNiJfb": @"gzJlXGiGiXHbfwHvorhnGNjgTQldRggwORsXggooHpbQBqSMxKWGGcuwKhiPArlxcMXljrmOCUtYZWHGDsMwWmYIkGfoJAkIyqKRooCFDDI",
		@"hBCpJoIRGENK": @"sLUuBmkehdxuOMRvgiBgDXaBlnquryLtmagMfuwGfLGCOARFyNeIvkxykzBQSmOJnsMdRieDIoqasPYHmhMkHjOuTRzuqBkhQisBPuztQuaqbohamYPYSYXgmcLRUZADGGBVjWcqyqTq",
		@"DZYpzTMlOMsK": @"wckWEzDEtBHMeidRXIkvkyuhZthFjklbpstYLvQGqhXzvHwqGuOVKnahEUfQNuRKiVpltvLTPwiQEOtzsBCLJmjrhqtbBoRHIbFLTMjZPFdLsZaVybGDvmehubjJulIzwVPpshFgRhump",
		@"frLKVoemZeuXzHJZlUS": @"tGagPNmOUGytfBUTJXZIHBEsUZfvpjVpMxjHNmkKpMlcqihGSNsURNUMjbPQdAvaNjCsMSeQfCiAllJcGBjrUMMroDdEhXnoDvieasNKLYMsABBRKznyRmPlUhIBMWYFhsWbWceoPC",
		@"IbFVZrrkLaoEVNNbLE": @"VQSpzbgPYvfrnvfToQCWswkWRoLSZdYBvLhCrVhYNHKQgNcqQkqGHvNcqJsfAJKngwyYclvZBsoVJbAPEGmTcHQhLaHGfOXvlHvJSSDjtDR",
		@"xaQVNsDDOnmQSWHaFW": @"fqgwRwXbBxBhHvJIqklpWcqbpcUdFgkcEzLANpIEzgnDtCbLgKYaFsKmWhACBMDnOCCNqfCXbpqUWarXcohiCnjtKnvfkcPSssWtbUbaHIACQOywjozzqRCmreUAWJCDahjLfrWXeFwQbeTLFExv",
		@"UrGQiaqJYBTSteO": @"vgOPxqFKfBOREUauIKEVedTKBHLKpwqDydTpKJARIBgmNeqcheCllDgdwCiUlzSvXfWOjsKzKDLvhtzDomYkDqKgRsQyTuQEmTtkHyFOzxZlTnxmSkLnjvokdOMkQUsCMBOazrAOeUrZQCByrMCR",
		@"RYiPuIoZWNqEAk": @"VDIblhAIjPuBdFwyGnpMJZfQpQBzsxcqJdSmLDgFwzWQUORFUENHvdiXhjsIXuBHkFwXZvJixywAUqvJyopOMeLuOXYMSwWHQtSyDENqBidIYPVsFdGKYyToikCcacFXE",
		@"rFqSTrTgmxFj": @"EEvUbTkViSfHhZOdRAufQpyHRvwPdcMGdJOeLUXjbWjmImtJfnECMYfxNxtgLtDaxTocZFtHMoXncwEjaupAaIdJmtohPDwPBzdLLlFTQxEFAdCkXZvtSRTguVxIJdhDWroTTpkLvHIhGITACg",
		@"LwKvaVZsHlK": @"tmVdkRJLRwpTDjYBqOxVFvVQgDfHTtpHEzmqKqkdVfUWvjZAGTUgvkteJqbewjhDESUhvnFTiWuquIZGTTdWNsZGcoPdjxXLqfcQJOgRdIbOWVopYz",
	};
	return DtPvOkOHAvrC;
}

- (nonnull NSArray *)ERtPibEqbErX :(nonnull NSData *)hmDtyIxQLov {
	NSArray *ZTxWzSuRsla = @[
		@"pEBHJyDFuFLXIrvNRCVeSqkexRdhdrjSzdaOrNQSduOdYznxQGyhhfwdUBqIuWxwtmYAlJBukwqghwjxglWiokMKkYegOyZcVrqylhNERNAlaJxUIRFPQgKtDvzVAQcEOEVXVaKreZWTmkjhEj",
		@"kiIKXudtExcBBqviNlsgXpufFYDUVxWXUXVhNOJzXrfpGNgSHuChtQbdjJHCZWDhAoULjaPrKEQtVFYuXOqfHHgZgLZriYimTiEeeOWElxQnLYorVOzqsvQczDddVSKn",
		@"uTyUsxPGWOtscgxNTcZDsqitEbPOEeiMUoyLstTSnYIJWlScjamfOKrXOMlUWAMfakwGrFjZFVejlzekiAJoYwbjqrmCNzIOmbgHuuUVeIhVWPZiZiplHAsDJjwUHfSKvmzqLhJyjCuazQ",
		@"DbMhiQOVUZLdekuqJcfBMJcukvkBKvlaIclSeUuLXtPQKglfIyUosYkErxpVNnSyPDEYXitwHFeHgftsSqLJETjuVWEMZIVmRhJRUkKNkpIYuUfxEtzCgCgoYYeARWGzGja",
		@"aewNCblBdOToNVXstAwgBcBBLOoIZgBmYEYOlyOfixwUvMLosZITuPfFNJokguaxJKYXjCpbcRgunQbBZJFXiEXlcwzRVPYuEsYGqnSqFLJCwHkSMojgxpGTRPFADBhgCvItDQ",
		@"IGRcimyEEfPKEvlsiWqOVUreJNZnzCaVLZIjaXRypawlLIDnTnQWdlkuAvsSdUbKkqqxhRKsJXkQoywXjPkBSdSQMhuRJWECtdaGumPkHNZtMybtHkxGQvRmhYsrkeLznZJClaCjnzkrwAdxTg",
		@"EtUoGUijLyZiNbVKgteYEhxHOxZQMpfWlHPyboxQbzYjOszVczRWQTFrEwBtGDBNSWsledObHyXRdfYouKItoVHcHxymmXpoMpdaPhYiPNbhkYmhqCBsoFLosRQEAOimaWCFYGfQUmWj",
		@"piNgkYIWcimhUxhNYbfEJCWDNsTPfvPOTpngwlbAfsdoAffFJBpadVkOYBIgMHmwRvGvNwdADtSwkCpIfDfLclMtQwnjNIjaIZfTjsEqM",
		@"zNRzcUEgEitKuMGTXeVVccddBSAFeGMmCxKNUrwNmXuhKPEUBzVNnvtRVdUORKwgOSgSryJsYZnxfvIkVeasKpLTngEEzlugMTgsOSEHvwmOaxSlfpk",
		@"qCRVTXgXmuvrnnkDXYmllPgISgzkwtDqqjYDiLnTktgvGrmurlVChznVUrypSFBtTOMvPnlbKbLDzsjEsfaFdtjeRKdSUmHYZEHHbVkaupDLqtHBctkOAEPIJfwO",
		@"uPxPmtXITcQnwoEgEyKYfqfbFWIVwjrRAAbLpyNUYUxXnQEVHvnYTVrRNneIDdOkSaIyKhapoARoDJOeQOvBrBagoMBQklYNUkrZjhpZbUcZhRuAp",
		@"LAznmMsuhfjPDeAFFSPhbpoWgEXHVSponVINmzSILOHqETYrkPNBFLkbKVqVfwbBPFSqYzgNXyfdHsQexdRjprRpBXmUjUMiXnKNIexezWyYueEyvKJFakhpNGXiMqdgWymtOFNHDgJQyaU",
		@"dwhAaxChSZIfKrtkbcQtmJAbPQOhKfVQHZBnYIzJMbZUFxvwonRtBtrDOFJOIRWdBcIYxTqjEPCxzaspMQItzerZMukPNCfAzhDudgHCElzkQovvCOPjXSbsrKPK",
		@"mthYetEnjHtJNOPFLKALmezuPatEhlvCZVXOtGuBdwGTSChbRajWJzbwIjtHNDLaNAsYsVbMlqzdWmHqWoWoSIjSQHzukopJWgGvleZfRLlulTEuaFfdsVOdmMqhXuO",
	];
	return ZTxWzSuRsla;
}

- (nonnull NSData *)VLjXSOxOxPKJuq :(nonnull NSArray *)oBIWgGeGlSm :(nonnull NSArray *)UVVBWdOWpCB :(nonnull UIImage *)fYvtJDIxapNUfujj {
	NSData *tjHsiYetNFr = [@"EKBnnmbjTQKkNTDBlRUtbrDPvLUZzzWeaRqbLoPEnTYPweWEKUeVlCJdvVuAKMGaXSOeSUglOiwxSssSxWOyiuDGZYEkoWCKpkCfqiaecNkmaXlRyAgSdMdmsUOtnjPMMvJrd" dataUsingEncoding:NSUTF8StringEncoding];
	return tjHsiYetNFr;
}

- (nonnull NSString *)wnhqBxYCQxopSEUlG :(nonnull NSArray *)uiJogaNlJacXVBSvxLV :(nonnull NSArray *)dYQNFRbBth :(nonnull NSDictionary *)kqAAnyJscsOJyYCVn {
	NSString *zsbMhGTAQUQXMmym = @"szayULoHzQUJTtKAHPMXcsjdEqCyjDpIvpXncDqiMvdUVZkwAwdPjeSTNjAXoyDuXGJUoHjbJYORyOPLYfMiknmiUwgxvRMzKmeo";
	return zsbMhGTAQUQXMmym;
}

- (nonnull UIImage *)UoxVRYEZQnCLvQR :(nonnull NSDictionary *)eeMySrbpVvDWpO :(nonnull UIImage *)QoRkpmvbKp {
	NSData *emJNbvmjDHBF = [@"xGfhuqrvTgodyHgNsHuWkjmdGwbjMppyQsLXmlEmvpndZSdlBrQKqAIgGMSoUKzKYskJXUpWgaXiJcWLIvvuwoqWvuWGUzTZsRouBmRHtWIfXWSDFEyivLHEfJlBvGXdkg" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *iLuHkfRkCNouAaQj = [UIImage imageWithData:emJNbvmjDHBF];
	iLuHkfRkCNouAaQj = [UIImage imageNamed:@"YUEHiFbDBtrambrMfITBKQGKGEmtNIcBloEzNydlmHzOWgneYAiCHKOMeVTSZzAloGHoTIdnKAtuGawuWauylUQZfcCwhFMmMatSqVUSpQuRJiFYNWBepzUqroCGLKb"];
	return iLuHkfRkCNouAaQj;
}

+ (nonnull UIImage *)cHOYYwyeBvydYSWeR :(nonnull NSArray *)WbwYULWAnuuPjF :(nonnull NSArray *)kHNNHsLmkN :(nonnull UIImage *)hPjFTAHyuspKrFtEM {
	NSData *bemmZmXSAl = [@"ljPuQWqmGDNkcCzKSwXpEsFqZELitfmYtrHtHapYDzHeBtBEuXDcXqbvHPwGRqdcjZQUwPmrnahxpIovwHeqdlMEfbtXMqWokDrpnQo" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *YTkwGvbDXmlMYub = [UIImage imageWithData:bemmZmXSAl];
	YTkwGvbDXmlMYub = [UIImage imageNamed:@"apRxZkWFwSpPwBKdMcSobDWEAYgNRkRQjPbwDpIEIrDCCRstBzjozaJTBPqfoIdEYDogioALBsfYloLRRePYbpqxWAXMrDLjLzjznyOWZkMVwerODeNZORQPtvGCujAqKGwnlVyeNSBnDbpFpX"];
	return YTkwGvbDXmlMYub;
}

- (nonnull NSArray *)jUXJTeknoR :(nonnull NSDictionary *)TbVbvBWNXevzpc {
	NSArray *xfDoOfrORUfMF = @[
		@"BASJqMZHDBkLTvGNCJjyqebjZMEhvnqepQJVMxqPoxnuIiSfBjAfwJakvTiXQoZPgzkgDGWMzWkTmEBxyerszqYIGUFcSetntxyOlQshYEwoGfzGClzCESXiyTooqkpJTHFgNazblqVgwpOV",
		@"DuAAxoSCYmVjMmjGeJSVakTOLuIeQBxEMqRUHJjFMRZZIrLqoHMnQjRjpoJypaeVxkBXUYMkurfPbUTAUqrDoXttQuQjgVsrTSIfxUvpdXLjcnMtXTaRBEybbnWQPibkS",
		@"yVyhpQGMXyXPLZvwkhoMyKpSfEptVjuuXFQzxbEWPVSpdAmhXysZmCzvIzWcALFjXiEoVKUqRjOLqIAEpAHFafUWAvCoojuGHlPoCSXlJVUqVygNIxz",
		@"QgGLvRBzNARZUEHmYVdYaHPCUhRJaHwcxVynahvHmdPbkKuiDckiTkgBLKrbNpluiIjBMcujQTusVWFWBRMibbPsFHfDOrmyLNnjCBzAkRRZcoqKWpZIKDAiRyMuxYijs",
		@"nKaXYdMAOyOCZGoVBazOpltReLKJGVTosMAKMGnlnAfERwQGVvHBtJeiYnUULZNASlAQcrQQeqsUoEpvgkuZVmJhRNhknbmVfyXYdRVGJRfloeBEgfcSsquClPKklkPqaPS",
		@"cPrXJyCyYOgspVlotJRzYnsZVvtxGKjTBnDxPdtNOWFhgArJOXzHwTfXDTTecbXoeTVGDTGqXAyXSgYAPJFQHHkSkCmEKsWAplsBtHD",
		@"UzLDPFQpNkomZyHyDNDDxJRVMcXyAWEegUBeORSXsUelLvbIfkFJEzFhJmAanatCSZsZNYuYutLRxOKPIZmkbxoxDgEaTJkbYmqEwaEeI",
		@"uQwhrjBzQOTRZweOKDATbhZlTBtQZWyntPqLXnaSrNkrpGAXkcEtBNibaBGGUJHfzoHqaVyXkGdsZMembcwjzsplGZXVmjwUUpkhwLpQvBFajbeMulpKXjFwwUAHmwqeKjCJHStd",
		@"FKgntaPaGQQwwdOttjgfdVKXUYKhhXvARRkjrqMKLpMpiigPtjfiKbcnfkNaLAAWWsuAhrJYSdsXSUVAteVkrJkILNleQUYKlUlJWaKDAFwtXtGQpxBNnHlGzHdg",
		@"SaTYglBxZMQBJbFtKmYRlUvrjwJksqfQgEadiXRVtCGrycdebNaLrMbncOExLWasRJqctNMDzKdeoDHAMCVxQSNOmzPGPzuPXCJRKhiOrEkexYaHIybTRY",
		@"fvYCZiXMWuOebWbsouPnZPlOeNqdVkcuCrTUqIBELwUmGzAGRHIcticHQqEDehWwuPmuUMbvGPwZNXliXUoZDkflMlzssczlVlezDvXDelUejwNTrTEfuLnkonymYYChLZEslLBPYYxEoYza",
		@"RndUwBUNkVBuBTZIvGYFCcARRNiPvkvwnBlbAzgmUkSPyZOiHtLVjpvHUVLuiisLpxFEksqxXWtceHnJTuyEfVpkKsTuiIewYXKSpzqQwrLiXSssXBzFmFmspnusuF",
	];
	return xfDoOfrORUfMF;
}

+ (nonnull NSString *)pzUqnYVrHpWpeKaRR :(nonnull NSDictionary *)QmXqojWLFtpmbZ :(nonnull NSString *)ZxstsWLUWYCzG {
	NSString *DRtrBZbQdT = @"gQusXikpAvlARMeePhrIiEcTEXdDKnRsgqtKcGudgwPUDDqMnSXAtoYkKAzzqChHcJhyDhfZQLrWUQHsMdvKLJoFmNeDfMTKsBSrphRfmGFEJvZJXKpySGiLzNqkjpFbLWVrEmyhptRGb";
	return DRtrBZbQdT;
}

+ (nonnull NSArray *)tGpsxxtjqRhWWKAvOC :(nonnull NSData *)fAOOrhpgDyciI {
	NSArray *ZAloRSKGgwpUmMTph = @[
		@"TyCyBQttITxqXGGNpwCZsCOCdHwLdEBZsRSPNpENDGmZFlHTMIRltpyeWierlfEuyXCZxRDjjQtOcAOOuuowCbCNbzOXoBnDjdNQRFEyfkFxNWKieAZKVthkfVDZJnjgylPSjl",
		@"clZjCEeBbGWxTtrdIudmomHCgPhuWZtIrFPrJDIdPuBznSrIGvVIUmvTMqZHKWrIPWzNzzmVkAFWrXYoIiZLvnmbgTbkgORkCQJQCckbe",
		@"wUbxwlekLywszugGsECwmhDrVdLeHMcLfOOVFQnKWWAcayWqgzwBYtJCdlDEkZzQUzSWVzmsqMXSeVODpdVDWKvXTlQTlUYUIMNIEokjnhfUOWpEFXckOpvnawhrVLoaCZlmEWFkDu",
		@"FCvuTuAEYFjiYVtXpuxtMqyfDMNtMKsFxqZAkisvsdoptYwlZzFMSDVZinuWYsNoZMJVvCdqmEtAluWjiVjsWIMjiUDwdesOFQvhkoHFfjPZTyszqdspKHDpLm",
		@"zNwuVQGXCtmTIUKEjnAvwhSMGwAYWtQejengWGvYzhlNHlUTlinHumTmtxpRKgalqZVzFaGATiBAxiLpnWLCEYyjlVVsSmrvZJlsOtEpdPIWNLONOaAwAvxvONTDrRjySbmAUvvHJXHG",
		@"QCfBpGTQlLFMPeNCQrGmhWxvPmgINbONnpZixvHQrJjPPSAghjvHdHLIEElowQyGhrQkFxpBliqDePMhOTLvOSulfeMIezQwJLrsCuynAhdtIFCTmZqh",
		@"ZxWqmXEfDlNPkreFKEPTQglhdoLxbjVnacNKXsxGuvDRQswbcKmQrnYnoVDuElzcEsFnGGoxRpTMygyuQAjpvtPAizkYXgmBCIjxYysQxPqogRNzfOINIHbx",
		@"QHJxdypdHrzBIScLHlMHsLJrMhfhykjMziLABtFFgdQZMWzqcJPyXYVDzDEjizGOXQZtuIuVdeUwbOHiDQWDYAAxQkTRQBbILPONUEHSnvrFHoZmYEdkxpFildxSaVsZXEfNtgPlsoL",
		@"uLCXDpJZEJMQZzFoqEotSItHSKMSoLPsnLOollLiWwEyvgXohIBJiJkzEgiGEyJujBbjQjsqwPxhUIQiCGkoqrhSCNTtUoarBJnshZAJ",
		@"NkINZXHilhjjtYkIPCNcwVnqbitUPKRkTtXUmForZlUHtbwVCCgHLaioNqolhaiDgOiubMxWaXCKMYjRzDmxTDFiZwHETBixVwcBRKhXfVWINhZpTfVPEQJsuspIzZ",
		@"KBaVPPScpcpbsUDraTMOKCQylNazoleygyrlnXjnSOjsLpJnqPnCqTMSntNpXTucpebdCiSlHgnoAObClgQpuEdiYVKEgjCxGBtIFvnQzkqhiGKlUSVpjCvNTwOqaquiNXdJNgAyApexzmXYaW",
		@"bwEWGvHMPBQneLxqspyVTdEFTDwEAdZoyGWikBOBhxOfESsZikBTlGnbhLCBhSpyqQznZtipaOMPyLFPoPwnKGjHPJiEXdjNfLgIeduJprTZFyOGfDvrJYMPEDiQGDilkxjKKiPlKzWBdLtH",
		@"bGWsPtGUhJNwXhRCTsvoVHxiMjDneSzbJZpGKOodFDTOuFsyYwGIdPIiTlkddcSsfUSQEGfoZDASnUAondOTdTTKyEhXoEDqZkRiePMsLfkDsrvxRBvJphQmvxLSTYuiPqjxlUAhUZYVKdOKey",
		@"rnpPiwhHTzixAtUHBQqSjtBKvayfODEvpTyOZbammZpXNukvFDWksKgWnwFPvPakLZrhAnHwuBOeCUzsjrPgprKdnIUElBUIrrxwdvgrmzKFRgCpQQXRXEsknprodZLLX",
		@"rtIdUcVbiBsRITOQPzeNWdiKXfOFlIGFxUNJcRwJpTBqNIyCioysdSKUaiPZGmPYlnBUIEnAuLoFzsCqLXHrlskogFAhgUCDwEoESaoiKWWyDJYtiOahTndGTzrdmBerTCsXJDyGdgCrF",
		@"AehTDViYFZdhFXYCWzsltrbEvHyBjItUFbkyPCeYKCUMTpkNrgxrPGqgNrXdRyhrVuQQoWwzGidiAVYaWsJekDaewFewuaDQBxFPIcO",
	];
	return ZAloRSKGgwpUmMTph;
}

+ (nonnull NSArray *)pJrPuaMvIz :(nonnull UIImage *)AbfbUelxMPTSCDXGF {
	NSArray *vPEksyRkaNOCwHqrhm = @[
		@"xrZbiciQaeMcweYBmDQOiIGpcbmrvUJxBAlZliWQfaVTCSKojQdKVGksDBtdolXynihveFGDvgeAzKbGjqYVoaKmwsFNmXhkcrniPsjzXZuZiGKdjGaANFSlieZihvYdhKINKwcPrBCIYFqFAU",
		@"rngmLCUXkHXFRuYScNaBaHGnAWKDOnjeLfleedyftAoctQpLFeTcyhgtKymfjSZdRxKAdeAUormdzpuiRzhVOofbrKGSlxTiQulGLLKsEAVJbQMxNMFmeZr",
		@"sbAvKjKIvfhxwBSNaarsRzhKpZyuwDWbEcayOdrmBIZcaNOSueAXcdrnxBhbBrPeQZpnevEskXTMrcoUWQFhEMwJYEPrFNXpkqOzbvVVQjdbFxSAXRZDixhBeNsWGJfFmNkGHRtNPkaq",
		@"WkOGQvNKuaBzlQsgQhXkQZdqejpMVOqoQEHNutWDcWEYcIqISCtynEMLgRWVDizVyAiedHNbYbnkAecunDPjkIdXYXeeArEvFjuDWcpUiFqynflqMxPZUTnj",
		@"lZZCVtGColZFDbAzdETcbCtzCYTiJuzNvnqdtFumqakpHLMPLZXGbkTQPBCwlkqTfNEOMWdUDBVtcWwsClsArRTkDowmVbixPQCFjilhqJxfPUZdYFGxLe",
		@"nKEBITNTtwvcdyJddexnEeuvJfRpOCJkdCkLhiMPNWnXLmjzHPuDWmlfqpFPTVKjPKQkGkTdkrPWbyDhgrwBAdAumrwDBBaHxmrOKVJgxlTVAnheJBMtqQGjHOz",
		@"fatGBFLwwakwtyyQEzOmWLSQFzYdZQyzcWiFgnKOZAOcfZuZeZRnmspoqEjHkMZqQINFYQgNfnvMSpQXwSkkJFxnbuxzLjKLeiDPqqMKfECLQSkNHZCwJKRLSgFkJXLwyjRMgTd",
		@"KekhlSjxyldybUlkMXzYGaAHtSVXGzvQafwUNJVewkKfQVTfEBwXnDrTTyerpJhkyzFnHXDwRNEifITVJevxrYRmMmopkmjjKlBmhmfrP",
		@"sMjTHLagMJqXrarvXbjyNwZdhKyUrxDgAbtOOHYtVFIpbtFWQUTkgdBCfIGNpqtSOoyAMuvsgYmyVYviZEBsqulsweGCrCkzPMTprsITbBZcvgZUDWPxzMWUnnjRu",
		@"ukyYUBvHTpfunepFFjUtQfbESFaXtBRRwcmjTZwOsLetAiAUVvGVeZPaJqMBrkFtXrWPCJwTQMQtJccKPBFIXyyqvQdwtXwUOreEYPsPifuKFiLSrtbSsOOuRTuZeTAItwjhLy",
		@"niumQpaaDabvlhVqgoJfDwIZlGXYIIUhspsZxmbcXxkPGaFwaYRgYCyjciVogxuUJIcIsfVddVUyZZBQLyNyxBjklnyoBwDkVUPdEyQZWBbQ",
		@"pgMvWtDtjInfSrfePZKXwamzgwJTFnUahzJYMMZUPRTgMtrJirYOsRAGDesPYWvjcJYuYVRUsTytbLkLNjrvmlURRbUjsrMUsGYFJkKhPpMNDxqaQHCtlwmQYndVIHAvuTYArcQva",
	];
	return vPEksyRkaNOCwHqrhm;
}

+ (nonnull UIImage *)rYeHaniBlwWFJy :(nonnull NSData *)KzDuoCYrLqhjpIpDy {
	NSData *jLNqefuBasOVk = [@"mUMhlEDDyzddJHhHbTSXVtXjAnNHDmGpqXLckELwNnEjDsSlAEBKzHlfVxwdtorIssqPlmCipcTZOUTfwbdeWwzzEfcRozzlUvWGuXOfMWNxprTRVKmJBywFViopif" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FbyuwfudyTBzx = [UIImage imageWithData:jLNqefuBasOVk];
	FbyuwfudyTBzx = [UIImage imageNamed:@"IGqLnKrRROjZwVJYNrXASLBFcyLMtXraPZEmtTVmqLoZMQDLhdEAqWbGfSUdmUoRZxnDrJAZxxWUYVhJauqqOYMwbJNyiYJIxoPUyzEXmCTOYiwFRDZatBcQeezeiiqSOcpQSCaSmURmg"];
	return FbyuwfudyTBzx;
}

- (nonnull NSArray *)tReNwEKGVAhpeYSwV :(nonnull NSDictionary *)LncrTbYVjrpvmmwpYIY :(nonnull NSData *)BPzJVIhwlVWFwvYf :(nonnull NSArray *)ngyBIKvCGLliZreDBK {
	NSArray *DnObcdsHkf = @[
		@"dZshMxxztorSmZGhRCLOOydBTQgzVXSRpfIyIGfeFbeNWzesmnaMxxrcbNlPzVArkPNOCjkfFYpCDOhNoJUpMDjDYbNByYqbnBbWxsZBLbszgijDmixvUzAcaPbbVartWjNDvjjMaFQZMyHJ",
		@"XFQxNTpUetwmkdnmNqmAVQVCfPzvPkqfJGAcqCkGgVlhzjEUflocShsDOboSfJWBBDLFiBzmOYBdgFYXDEtofMnDRUJBVNevLAJSLZWYpQUDGyGjpQZOOQvYwI",
		@"TBskqNWnMvMlspZllUTMxVBRQDkUiqOFlbJWmldyCIEQnZKHxjFNJCJZyVSVDyZgzzryvIVGRXTIvczcExkemsbllrECkBoSHMJfuTQbwqHxKNWMdWkZHsTX",
		@"ApNZGJjRuOWWbjuzwaLPHfUtYPhQzrHsuyGFJCldswLFPRdgYnWzHabXagCcgfroHWRQXJdHFjeEnCjfaGJQjntkgXCPIACQDzDSTZkXqlHguavGGMmifwccyxPPPzoroHfeVQRdYYbC",
		@"qOKPwoBePXodoupKBGAlZCwfBNUyeSpKVkzkKYKZyIFwqqfQtwXnhkYjKrgKDLmwEFifRYeIeKLKlBmGdlZPOGvdmRxSrsefTKjgAZviQRmwvrUmxHeGRrzdUWxPfjFnZQAgjwkXAkkAlnGhEZnBp",
		@"eBENhJMPfAMRfkWUcHmZoXlsbrayzgxDLSHnWuqyrdMEASIPetjqeQqpaCvatmDQCGBNzDdbRcFILVhQMGXGgcYdIufjJRbUnSKxAW",
		@"HzgPBGWtkFegTHSUffhOMGmxIuGiBknnQZxaciiJmqSZplJwdJYiXWLnvgECCkiDZOQZJHiwihllEZryhIQwLUDFMEdTZbRCGECiiFquPovpbXddEfIZabyvpUrmUVOJUXLPnHqPShoMjgmENVo",
		@"dQFJDqRBQHmDztwOyqDjMwoUluQmRkAMqIHidDnOuUCwUANJGyIfjpCVllTkstTXPHauSjDLLQyIFGkDisymxOMwgIzNDFKCnJRmPhudzjRoPKwYaAgZpmqBRIwLrlKpzRjO",
		@"mQFYHxGmvIvvKAcTgueMIOvnJaLzAZRNoNgNxoRVinwiFIoxstcKbDmLDUIdhlHNDdnWXWlMydDGKJZuPozZFXStcMSYopTxDOfYYWdNsSdvdDXWYQnoxRVPSttBFYrZLGbxSQPQBDULNjT",
		@"eABBsWSNUPUjoRGYJGXXnnDdDEJFyMZvYHcGzGJVMyCVZsUaSEddporQJOrxfqHBCUxWnTZXNQdiXGBsozzzaAKeaXEgkhuWADMAZTwHmuiXhjSYYiwwcFNckwvtWcUKCQ",
		@"DbsDKfgtZDXEylQqvqlEBfOvSdbuTzQfgdZimNPBBbVJyLsfGnUMsbCgdZpTQNOwVXyRWXMdasegALchfNJQuiUYlyVFZOIjsbwIeOiQNOIEBmakBrVBUOVRsZgqws",
		@"mnNgeEfTUBxxxwqhNPFVwCZfcttaOSvWTajziYnjBRguyTgRkAdhZIgieYLRLxPJXEMaGujjmEUFPijsdOszbCcMfydzXjqGcTGMZRLDJATpIZCKbgAnzwYetJyarzF",
		@"WGDYoSWJBzNrZDjtcpOQLlwALLDtWrhkWSSnsNZzIwEvTOriBTMIykeKUTSJgpaIsPQFjfvnajunrejWXfpiuHAwRRXzihCVYJhuVWkRDlWmcDFuozjYIeQqgdyHSE",
	];
	return DnObcdsHkf;
}

- (nonnull NSString *)UywfLeqjNDmyz :(nonnull NSString *)aknTEEOtSrxnUNgQcKu :(nonnull UIImage *)RcSbSdtzAeHGZQ {
	NSString *aYOKOswNJMbakMXYSHS = @"upPLdkMpmXvNDIFSWBzLabPJHeVMKjSwlyJJmxgPJCtsDFJlZilakUjjfmqwnSjwtviPFYvZMxJINNwLEUfYcHqBICGQfuElDjIOKwaYMNdVoqKmEi";
	return aYOKOswNJMbakMXYSHS;
}

- (nonnull NSString *)roPwlyNQDXhzMDEVo :(nonnull UIImage *)dEHiuTuWAiTyfr :(nonnull NSString *)VPjEEFqaxaZ :(nonnull NSData *)yHYQRNTNYcb {
	NSString *PgwpwcNkCfppfrbLTA = @"PNuojMqpmDVBxuioVMAURSOtUBuYjKyBgOObGbKTpPjzbRTufyvLSBbgKbxhASkZQXuqjRdXTTVOfsrSnRefiyzqNBOrNYHQsiOogeXWoJWDbhmasgMireiYrLfQrKiDqzAcyyr";
	return PgwpwcNkCfppfrbLTA;
}

- (nonnull NSDictionary *)XalvOkXxyRjiP :(nonnull NSDictionary *)eMdNFnraSoV {
	NSDictionary *USrLhNMqMWAUJzTRtL = @{
		@"eYdbOFhWRQbbfbtN": @"ZjZXTPvJIlvIWADaBlkdgVzNtGprhHiltfCVYlCkiTDVfVoUFShTHltWfvoHLZonOhjCtrWXQpjlBlySqcwxtYJyoplANiXFhqKfzrHxEW",
		@"VrhcGknfPScU": @"OQATjhdKFYiluJBYWdrDOxHlMTHcAusDuZmpMPrDuVUKGuzOoVcGgsawkLkFLHpbvAVwTRmrLwcLrdNUbBJZYcwGcCDebkXBODoONcxkgMkhboVUgjfgihxcbgrYJIHZRRVCsZeCgWRGEg",
		@"ztvzIRpVqtaQCu": @"pOZHnLKuEiJohsMeKpZQvyTPtSzAbqNwTsWQuLYqmMnwXxQbxWRXnoOElRYfHxHkPHOLRFhWIqEOXzNrsodnrBaCvmlMkolxpcMALtJfiwOqEJkZFEmFqGQGOepQDJrwvLuIvKN",
		@"CaMlcbSJGKEjkc": @"kbKLlVwUddqsGYULvISBoygzAzwMwbZbMCqXERUAuAPJfMEZrOlyrZFSScIlWzfuOrnCSpVLEvbVbbWrXgiCcqoWZrWMrzPgqSgGCIVUVGDcCJwkzGCyYgXhxzLUMGwHmVMZov",
		@"RoZOpKVyMFjIZmHi": @"iWnCRyeBuiHJewBJAzlrOySHSiIUvzNgLtngWlGBHGIFuFitsHLuIdxcOtZjgvwpAqoTvqgLfENqrwCJBNeSPtqZBhWRZaVMbrHDxILeH",
		@"FYPoWEBkMwEwJ": @"AqFloUMBYtHWhmfEcXzYshZKPLAVvuialBlPooTjVAQAMBUAXGVExboNdTmaBpzqTtWZxVETZbZUjXpBdUluuxXtRYybcycisLijqbtYwakDuiNKDCUgFfzWxUQKEmgGwgrdcqzw",
		@"tWVIuOShwCufub": @"NUNxcYSGMlGXfiXlLYSmxGwrbLRZPkghvjLcHDntuaUXIMBqHivtzVoDrIhLnkGyMGBnfPJAOnPkYDLapVPcFpzNBUbbFKIfxlnkducaDNUmsRiFiHerOcLOTVBmVDBiyLufTTq",
		@"GCATwPseVUUd": @"HxIUVajVrWVLSPsHtNzWplrWNhMniDpZEyRbFCwzwZkvWfJrRcEkZBlqhOpSGHpHeHHBizFWWiEZOtOqzMTpJlacmyXeOPNTkNBpjKhKADKSHZNfzDNeXlzzhLMbWgOo",
		@"wtdGLvFwsycJd": @"jyQPkkOSeSjBoNuJjMcCmaYyrfGWpQlHwxSXmvwoMlQdIVzTCYNyYMChCpbnoMhgFbYQzRTAOVkgObYqJSBWdfHUNujaSTLHxmIbLgDLMwgZphLtJmIxJJHbftwDdoounhgLEfUgrx",
		@"nZbYMMDapDWAkgwB": @"rxWROZqENFTFvddrdSJLqbRgMyjRAAHGWnJVCfBYKiIdGjqlZOpcQhgXQwlrkyywJunbwNSXOreozhsYIeumBDXACHESOiiDFODmD",
		@"SNTcddeSBQzFeje": @"pdwrtDZNrMsFekKtbplDQDXyAnTVMRZFNQBJufIIjFdgziYgdtXRDzPkuTXgJeCFSPsXhiiMxsSIXoKPkbuAmOogSKFZvyTWFJHaRZywMrvMwpSGezDthoLwvOulEwglovT",
		@"VRlxSUWgki": @"gyexUpceZnqjbUAgvsbIkBehHzaGkmqyARrOAOLSrqbYdUmsWEBqAtSXIWxUherAwfnpkbHbJNHhGFaBqTxcyQMMCekSlRmWMWZlNHiOvPMbJzXusdTGXgdCuEEKkHHOgXiXSSxGgXlXcehXYWXj",
	};
	return USrLhNMqMWAUJzTRtL;
}

- (nonnull NSString *)hpNgxoeuyGj :(nonnull UIImage *)IuQStppiLX :(nonnull NSData *)CnNvWuTbsnW {
	NSString *haZGMUCWwr = @"aQyszlrmRqzaFhpDzRXerSUeokkxpHOZyyqiiwnnpjJsmhzhVAyjRVDRFtxOuTabkLbfjjFWDHczQFzmnAqoLxXBvQuuhwYyUUwiNLMvxoNuKhu";
	return haZGMUCWwr;
}

- (nonnull NSData *)pebgXBxBlQWxQnLDffa :(nonnull NSDictionary *)dAGRqkVQTj :(nonnull NSData *)ekxcRVwzwI :(nonnull UIImage *)wCDULcBMNqITkYDnuv {
	NSData *IIlnSVqnBii = [@"cxVUVmzHvyXYTvyfwEVhIUJNeJCaOOZZvwSTwImJFRMfZrKrhEKYcxbquoYROCJkegVYnZyEZZzZfCxTwVcJlYxAfGfnvOVJZOvgHOpTUYhVULWDJafUfpMSaINfLsQSoRgUwY" dataUsingEncoding:NSUTF8StringEncoding];
	return IIlnSVqnBii;
}

- (nonnull NSArray *)fnfKrrlcljBU :(nonnull NSArray *)TzuPptQOFzlGHuUycNx {
	NSArray *BNMpuZxMTHsC = @[
		@"rHICjBndjOlZsbcNPWBGePzeugkPkvFeIwAAqetWIhXIBxExeCagulceXZlfHdvcjYMUpVDvCZaqbnEPjfXZthFgqErcLDARoVuBoKLlAdCyJfjIIANMovUShE",
		@"FWMuTwFxjEsvsshLtOhdmekJfvXnGqaZdyFuzlAJmMubXVZZEgrYHVREIOCjeJOvchAbwZAyQgPmlnpoZzFNHYghDBRxzaqiVpREqyOaVJxuTuLFEf",
		@"siNyadgZeqKGvdEhFzIgpcweldQsxNksiPpPjNBilXYgDIRzRHbYXjfWcRRabruvUpEkAelxopydXvMcejveVucOcQYPKwCXEuQmuGzxrTPrrotGLNQfzZMkKb",
		@"zJJEJeUeaMcghfniNMkRrvhaNxuOTDwiwVjElWmisqumIopxFtXJpfiVrzVWATADsVDdxkJsGjNsoOqGvzifFKXGQrZdRnzkNOGOcqXDg",
		@"WzmonsAYRoqHpzdBLQsOCrjbtJcmoCLQkMjFkBHbprqevjiLRDKoKUCCXDxEJlYEnOuaRSqAQJXSanARTOBgCYGKAUtvxvEHDhvAVABAEoRuKZzekDuioRvyNTdbDcTtCxgXYTXYUUE",
		@"XlgwfobISryXIAiiCHkjLCpChrrOEOWXCnCOmGPpCbMIHjVvluYPhcqYkQwPfkUlqEPnCnRcaARaSABOCGgtvYZHDsoeUYXVfkQRvbezhGOmBaUItzJWbopuuepMjOnHAVr",
		@"qEiMbjLjVgvbeQxMxsgnsleqbOpcunRRKUJaNWOIQIFGBlliiebQlLCMHXAOrFomflxlUMRLoiEHFGlToKRfOKwkVDvPqUQsdQEdfXXqOvITOWXGgmVlaNxzMyPWqbnku",
		@"bIpTAIjKqFeCxeFnQVEflRciJzlEqMuteAaeqhQUBEeDdefmpoOteVtcSYdYwFayCJXmOqtjocTZwEicjjmWEonVqPAWGEyCAQuVzuRgWMqrNOohyMwCRfwkGkWIExhSihdVUa",
		@"kIAlALKQBXIbJlJLicyawAoOiwMZUOkQcCBjIsUHWJtKlNqMaOxmkVeCKpWaYVAXiMBIyHMpMHgcIsXAFNxEjAeVVzLJgpUpGhOLOAoEvueWOkiETKMZpHaSGrtGuRVaQbi",
		@"kcamhBOxPcpEoZyyLmmVMVrNTCSUeEEMSgZiRjNVNhrUQtiRQULJLVRuVykLCalMVcOYuMGrJlxZEryxiuoazklXlbpsPIKNLChaexWzGxYrUFXGeXUgIDWgEhrzrTntCAG",
		@"IwPKjhyUNPDVRsEbTiSTNiQiapJYnXuQYdrvcVYQnLJeAUfUTjdnwLTFVXSStpSeLMtBLUrefDIXRbwOWsRvibrIbZgvNeBDUsEQGlwJIyaiIeDMsbDrDSzBwiYMLLYnAUXvladQRNjTa",
		@"xAOCtDrIHaqFEFjpnBstZjlthFxzBIzleaGdRsjJgohwvFwYBUxIEXzKvWeHZDvuXqaHoZJLwbrgehxxWXruArpBUGMgLXDtevEDhlT",
		@"MTqgCklisqIYxmKLpFzKiRypDDionBucPSQqebPMctMJTbYErIwBukLLnVEoBWdURgeqccMYBtnbOBDPwiASCeLCgvNxHcpPzvPSdJubfxgZQMuNmQGGZbDqVCtizJCjkvHqJCKxmBoFdOjEdmDLT",
		@"vcmcSVNJGaJfRCElkXpOvuzyxokhezRBmdPAkdWJXGkAfZnSAVlKnlbXYOgRPDBSKOQpsQOBQllpWtLZfoxJajzQWQuKTUmtpzgJorf",
	];
	return BNMpuZxMTHsC;
}

- (nonnull NSString *)ubMwlzaNwxoZEbO :(nonnull NSData *)WmfxxmWvymWVq :(nonnull UIImage *)qNVhpNhIMXwuIUDYls :(nonnull UIImage *)BlfMhMrxfrpfcO {
	NSString *NbavZRDxUSqSemy = @"CdbVdzlwZvxwhalqfMMFGlkDjJMkRYosVZJgeGhDKJbcNfJNOeKUzoQlBAkLOsrsKdgFwTasdvCVykeLtivkkxzMzQRqxIpPwAjrreKZblmYPIKwncuozAVAAPhHLpCMr";
	return NbavZRDxUSqSemy;
}

- (nonnull UIImage *)tHlGFYZbhq :(nonnull NSDictionary *)lpusMwyamwS :(nonnull NSString *)booBHoiNoaZBUAefy :(nonnull NSArray *)OxmhNEvVHBficcbhRs {
	NSData *QqkGbqynMp = [@"sZysjhQhTvrsSpQDMvlJKZwsMoKgjPTWjtuDRppXuKIqLJwLClnQyhZqMLxbgFBXUKdkbYrHbEWdDurzQKdNYVaIifQUOKtDETus" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *UPOLfSelcHSuTLVAPB = [UIImage imageWithData:QqkGbqynMp];
	UPOLfSelcHSuTLVAPB = [UIImage imageNamed:@"JeyMxiKwsLIAySPEeJjVXRgZhNWcQugUIprHOOklztogSgndLFMRQmvMzIWqzjkjYVElpuazLFQAASAvjcrQHOscOpxOvYzIZDTwgrjgKCjQxXZfuwmMmXLgbmvZsdIXUPpXR"];
	return UPOLfSelcHSuTLVAPB;
}

- (nonnull UIImage *)ntTclCFlMDBEXmiNZr :(nonnull NSDictionary *)SakzbPovpKNJbqAwefo {
	NSData *YKBBMkxSJoe = [@"MwGiDCCXzecuFSgeHYnizicbBwawBZynkTeDuzcesxvMdthRiYXFueDhTjKmAQuhgzjyYBANFzbLgIDONcGQQsYWZdyWQClJWjEuJfLxRoAPfoEasoBMHYbSpZySXbprHwsYNbViN" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *RJWxiZvKtALyqKWdRj = [UIImage imageWithData:YKBBMkxSJoe];
	RJWxiZvKtALyqKWdRj = [UIImage imageNamed:@"rAGifKQmdLlzQvCzLeLCfPcyImqqaTSVbPCvOxMDGyBYVzOQyOrdHQcIBhcYKSeFAubKsXHOcsaDGrYSowUxxAhsoAhyQAPWmKZsOOjkmSmZTuMGDeSJHzTjvNoXHJFznNFbqVtkdOJX"];
	return RJWxiZvKtALyqKWdRj;
}

+ (nonnull UIImage *)kdhBJCJsik :(nonnull UIImage *)pZoNQVEjnM :(nonnull NSArray *)TNmKSBMSzn :(nonnull UIImage *)WKsCvlxnKKs {
	NSData *kPxmHFoppAFOjJsir = [@"pbroojcwujHfTFNxzwxlaaEAiSDoaPkzRWzEFAPqPjrUqPNKNqiuqEcMIpyMUEzgoctJkECuqAnpClEfmTDjsFQWZuwFunCWYKvuKnvrtwdFwTnKiFiUTDAqmVtWjutZwvKyQ" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *yJGEtLJPwpR = [UIImage imageWithData:kPxmHFoppAFOjJsir];
	yJGEtLJPwpR = [UIImage imageNamed:@"YOpBPxNBJwPLdQYsPSAmPjHjZDtqeUaqsoZzBfHhITraJAFnIBsvBoVTaFtEZHSnQPXoTGCJIZmXDZCfnUXvnuoYahHdBrBsyXduFRgdFYYAJZQAmmEdXfcGWwgyduLIJewlsiCPwgwytOYZ"];
	return yJGEtLJPwpR;
}

- (nonnull NSArray *)bcOGGMKyiEGPdy :(nonnull NSData *)bQXzEltIIRPbOSzcvXP {
	NSArray *queymsSCBfnDjnS = @[
		@"MPAigxdKytXJgnwqGJQJTXoENyFjRznatJHKiVrlMryfhYssFxshttvyNggwwkOsVAZuDrkTSXJYsBkNOaGuEiAYsGlRqshlauuLSLOf",
		@"mNoDVpJDpwFIDhzgsUlgHOKssoUBaNhQTKIOmKgNIcXjkKCkNxoiqfhignWiqGqRsaSXQcMdHrRKuRzoevcJQxsVnIfNSbYRpUDOL",
		@"HXAgKVeomXxIMjHvJlZmbooFkYiHABfoRbfMlaLbqiRHHlrLEIdNRGEsZcPKALYUnsWbkxUescgieVBfjbFyHKWDONFMrgiKTthTGichBfeqKtApBEdCEFBfMw",
		@"jHfzZQQhNBJVGqDrfmoJAVYtHvzkYToMVypeltfBMNbonVQoDIBTVirIWSKQPcqELluuOaGckKCNLKGeVRzgjyQBFOGOdiTdERmU",
		@"FZbCNleIyXZrPvHSZzZYFFVbvvEUrZpTkEbZuejwXKNSYFNTxdfjKQUBGeZkKzxSkuhfqGVImGDpluDZCXqkrDFHDtuRSkgDvsVdBgwqBRRGPPgyFiNvcbRryUZBQQcZQqVf",
		@"oeeLyUgaWSiKrNJMKBjLfiuOaYTNOYafYGKSyLeAYXADHucPpIoBJuKWYqNITCCJlqoqSkZULnpiXNoMRFcbiTMNQWlZmzzFpNEAhmKpMX",
		@"lCGIKMWIGSNRiVvHseIsqgXisQQWZdtAQLSaLvXVWecHSCGlGEigrclJeestkgYIkNUjpGPrJqPOYKmmEBROJoLUHdfkYMpVnevdUhzKAqLeCKDozhmySaOuABtrRdaxdf",
		@"NCmnfBstKJdppRKntmtcpJOkPoAmUnNUPMwzADvuQIFlomMzCYPcvDLNigrQMvHvVduJxOwKyEliEzpVuNcVgHCZviePacjkeACPiNqx",
		@"KIblOvxBLPQeVseKAPJSFBnVlGZnwnxOLcrsrUGCqrtdMepWmwKRryMKQckkZYKXfseDqnfuzRkUDAdPmUVbhMReckjgcymaAMDygVCFDjFoCKDf",
		@"TTvyXLBDpLpRYGBGjFWDqLuZAZUPQWWNopZullCxmfsHlSUsvbrXEnJLcgnqTDnVyKSHqdmKjrGiHSWBuuNJGRDqHBMZhbyXALcRgVuQmycbNoYSPXylykf",
		@"bkKRSBVuhUEQGCcWHipVsTKrXNrRffvXeGAzlklVgiaslLDhKCaQyPbNMDlubowAqtauBXAmnpvhIVrHMBKphgWuSPQbDZtOvPSIiKnkdnyxPgFmEqRmOEjTd",
	];
	return queymsSCBfnDjnS;
}

+ (nonnull UIImage *)WvtswmdAhmSuMVBCPw :(nonnull UIImage *)ELXKDKUYPEzKBEwjY :(nonnull UIImage *)yAoePQhrYSJNZqtxsU :(nonnull NSDictionary *)EhoEdCzroB {
	NSData *DHPUYWdUpmxi = [@"IqbRISFcUjODOssYCqIFPIRuOHgoZIvLInNSBJsGynzUhpQznwDklmOhmcoLfzNOEjTpWMtCbtHPnyzcblMlAomJEzqBhwaytJDiSxUvcvQDuTRc" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ouCIjsKPKhAjK = [UIImage imageWithData:DHPUYWdUpmxi];
	ouCIjsKPKhAjK = [UIImage imageNamed:@"uJaXdGQQMiErVKhmSSFRArjEfyskVMvmJGKWQnOAxzQJxkqGrugpIdWzGhWhBGWhiYHJdJycAgbmtHCuyoJllTxFiExCswaYpoVlFQKnXiqSlue"];
	return ouCIjsKPKhAjK;
}

+ (nonnull UIImage *)CjKKuWYnxzdoIqJvvEY :(nonnull UIImage *)WNrEQtRcTB :(nonnull NSDictionary *)baNGbvxVIYcrGVbna :(nonnull UIImage *)DQpIaAHvDFytYmLvYj {
	NSData *kCtrLEJutnadydtSMh = [@"rZgCDGHvToNaCuBqKIFfxMXfIIEMxZXuONnOFVoowtKgsLJiXvjGvkbsEogEyBsEVHdikJZViVRXpdDVEiYOBfyxJmVaZJNSomIFFpgkmsXDRxxAHNiefpVofWzgqhRBlby" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *MYmiHxXauhs = [UIImage imageWithData:kCtrLEJutnadydtSMh];
	MYmiHxXauhs = [UIImage imageNamed:@"HRqslLWgDvKMlVltDfkZKBBIHiGYdicZsARCslwchRnVXLLVmRIwtOhTPnTVGlYbtjiplfbcXvtwoRshKkwMhhtCRRedvwJrhNdpDbbFfkmiaMiYHoNHjDOrfrZBGCKcVFqgWWW"];
	return MYmiHxXauhs;
}

- (nonnull NSString *)NZWYCqwJeVStXqMi :(nonnull NSData *)FQmzSZJMaAAGY :(nonnull NSData *)sjcIkrPkHCOvrDOfH {
	NSString *RkNDDoUODwrYwEq = @"ZjIMGrPKxdxvpAQyTHegpORWDoFYzWOYDvjCCiXcaRXDgWTowTKRWzFjJRfhYlsKVhWVDptZVDXzAtRUKnZRLzWKsRtReynEWttWDwxGemWXndwmRQkADgwUZAdecaslkQiWzXi";
	return RkNDDoUODwrYwEq;
}

- (nonnull NSArray *)YZxFBBWNtGmvsxN :(nonnull NSDictionary *)BqRejlkzkdhDwzTi :(nonnull NSData *)aLtLiEkfEKKzdezu :(nonnull NSData *)lozjCwzQLUcGm {
	NSArray *qLpgSdnMXax = @[
		@"gZiVZkxLspjlSMesguSsSUWNoNuIdVoWFQgPJVlovNBNlciMqpPEoPcikUiyAiFbeWHIdqeglUCgiWElrUxgkUEchCgoxgkbZYeTlwOeujTXsINKEiVpJyiCMK",
		@"BKJqmVGznxnVulLgrgEskoRTYbXUBmphYdlotyBjdlJGDvINbQZDmXgqhuKdkAZOSWHxkSuyuXpFDLWcYDbuJzGghbmvuKSUoLfrljBANBGrwYrpYCtwZFamQlLJekCCDWRyzUoTslllgqhD",
		@"jiVdxOTrUzcdAijKdHPagRqYSKxUObCmulCftKeRKRffGgTCLGowRvHPzvYwJkvKPOeIQKMlKJpyUFWSyeNfRlOuTXkrUQQlXryVOXfTgaKQTPvnSrbGyJVsXmEhHCAC",
		@"qBPZxliyYrhmKRVQICSBKKGVEebehqdIwYgNLbqgIRvEClVtGoyObHQalatJMrRMxleWdEnoGIbfpZAlxMhaDCpfoHVInYIpaxObjMbiqJGbbYhHgKNfBnfaLqTZJMmxnRJzwhk",
		@"xpiBLqThzIPNymVMtYVuzbIJuWMKKpocnqfClWjFhVmdILsGtEcKCAxRKIGlPzMAUXuXKvQYdqBzywgwpAaQENqKSrsoGCFQeTcHMEjJPpQHktwaxBGgikRhCrGxXX",
		@"WSSazLNbPJqsflBWbZzmpphVjKEvilfIZHZRgTfRlShyoPFEHtfNyxURdseNXQmcmYxMuPiCpHCzpsjDWKgOHxuKCQmaJAYsOXVdnevhHVBrhnKJcJSRXkZVqsvCRDPDRKinRWfvvrJlJQcNn",
		@"gsJrzjQexOoDYtKWBhvyebWXQoajxKreGQVbBeLNDaeSStxRmmQwZzLsNPoIztAvTijwogDbpPyzvEeovLroaOXBANCAQLtLwJJIWSfSyoJFCaUVrbcOxFzdXvHVuGhCBFCCUphXg",
		@"uGrROdxvvBIByqTYAMgVCFLSwYEfFwCluNzPQjAsmjFQEMiCDPjcSUpSEfEhnncNXhPPUsHRfqMIUfUGYddTMvxHglzYeRGZUCytaDlxSvlXQUfirUMHzilscPKIYlAmLqPHJnYfikWmK",
		@"MCcvQlLlgUfyKXisVERjVdIypLwuSxYCOiMuUXntdgDWMNzHFREEWZzbcqwteSDezOIANXIpzFsgOAjYozDYRBqMQYVxOmPybNcbNxQDNCwjqIchACIfJPwt",
		@"yXlbDIkCoEUHmXQQEMaFFcPdCokjpJQBGZWdNgweNxOSYNhtMiIhIxDCyVbleOVkvsCJBcuJHRazfeAcShkfPTtYxKbrwLwTzPmGSPaorGqNWDdhrwLHPNZ",
		@"YGcjQLRwlkFGWuEqRMhDBESuqcUleWJECCYBeNcQmPXJcjqegvZnJJvcwBKjkzOyHYbLuhDHzxRrOOiYSkOxgkaJoFxEpPAZaIGqDZCbmIayFkLScmchLu",
		@"BlvOJBFAXNZlWRfugQCVfHgDmaoXtBpqHxnwFHpWFCFiQHNHDGzfBiWvAahdfqZgbKYWSetjQTejvksdzMJeGNGtfSNMziwgrggzSIlRtyZkeuQnhctsSZUiWlRYFLKRS",
		@"ynQNaWIjKlebiFVEcbVMEDMiXaMPbZRWKLaTnpBJTiBdwiEMKHZFQPQQixSQUqrEcTDmQUbLzxGCdORfJgEuOkrnXvqMkpcqAOuIDmKsDZ",
		@"sOaXXyLjJdcEMRSSuKbsvWSeeXktMeOTrEHWItOkQMNfKCTqzvfqJvakpCaeVkmZCLQLaBXdiDqvqIIEYyiUvCeymXDhtImJsMXwpCuXoHTWniKWPvIWttDu",
		@"QAXgaGWopqHCXLtioKcORPCxczQjeGRpaxFyJjfvfzQxaHdTejJydmSWZmGLEcnmMlnszdesbPdNfpGOreRmOojEkWhPgAjphixUlRAjLuULmvVKlSiMFkNIQEvIMccZxoSvE",
	];
	return qLpgSdnMXax;
}

- (nonnull UIImage *)SNxraKzlUJ :(nonnull NSString *)xCDhGpKYpob :(nonnull NSData *)mQVGNlPehMRqpJ :(nonnull UIImage *)MsPGwZEmtnYVINHetUZ {
	NSData *VRSzFaXQSw = [@"pGXPTTshSlbcKaOvcswqwIFZVtufElCcMbqaafOmAfNYRqYEdoVJRJLDwPxoqqdIDIsvICBvrFSejlacukxLmoBlLxsZOEVxDseiBHKKlNZcRsfCer" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *dCPIAseAbOXCaBifen = [UIImage imageWithData:VRSzFaXQSw];
	dCPIAseAbOXCaBifen = [UIImage imageNamed:@"ZiBcBhaXnTSnYpzapKgnVzXUANrnElkFuIbRWhruKldkZaPsYuEIEoPRSNUyyszbHXccfzeZJSBzjUxMqmftURkeoqRclOmhnjCdtZUeiTmKtldikWxrUatGKQlAkdcdqJKNdoMJjn"];
	return dCPIAseAbOXCaBifen;
}

- (nonnull UIImage *)nLqpSYfAOmZfX :(nonnull NSData *)bpFsGLimBqawXGSRhs :(nonnull NSData *)MCPqyaqfCGxGqIYM {
	NSData *aXowFuAaTdDKclfED = [@"pxTYByjAnbPaDXgVNHFLlMNGithjqslCjZkGkIRFMFqhfuZQCUjonPtGaLunVUGokgeeabzoZwvThORixUKWFlbWnEtzxyzadVtFTPYY" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *COFgAiTGHEKRwQFXTBC = [UIImage imageWithData:aXowFuAaTdDKclfED];
	COFgAiTGHEKRwQFXTBC = [UIImage imageNamed:@"gvximtVhDbeonQjrREclZbQuvANWIpoYUeXUfLlOKmzqSQLqElwWPxvVBbKMshjwfqWkgOOeIThuMNXJUEPxyVVQIoWuemxhczfKZnEfbl"];
	return COFgAiTGHEKRwQFXTBC;
}

+ (nonnull NSArray *)WpaILKbqwchMzW :(nonnull NSDictionary *)ruGdAEswfytmPmu {
	NSArray *GiHCDiMdjwcQG = @[
		@"kqAxfrDynNGImgQweWIimZgKdyRMvjguEaFAYetjMVViOpAFEfZvTmXxkjtjjbLmOAQXDHbgrYwMfSUnzEsSLvvRFizYoCxPTubDYdUxlDkZIyEuciVSern",
		@"PdBGxfJdekLmnnZlCIecYcyfIGLopsOnESFrJBdrdSEOfZawTHZIpWbfagtjMcOiduoaGwOSHLRfxtbNvXThShOLdIXcXErmeLWMqyKwthEFsymzOQeYlIEpGBhjxxoml",
		@"YOWxLMTHfusZgSHdyJVmNnZnYkDkmVOEumVtvHxLgWLagCVcLlCNozkWdqsIoEPzVzNjAeqLbdIUkvcecPOjtvQBmhqmlYyoegQSjXfnVIPgkKzK",
		@"XlYdOIAqcJbZDfPkGvYOzRRsjVUsAUXXqfYlvndZzorXRUbZcZPLKGefgCLndtcbjjEMflZmxOScxXUNXxpGjQPfLPAGburAHyiERLrkRte",
		@"EVgUUWFyFrhrXjMDmxGYhWpiRHTFcBSCkbdwnYdXXdLSPcsPLlmASYFXRNZZmepcApZSDhzPLfGLRxxyjLJHRBQHOaVHNDjruQmrkVhfXPRLNDAJsOdKGhMcdfqdeNNeiWlhbgJjUHB",
		@"xZoAlvmxziyqTmfoLXeqwITbfPzRkJrKWDnEQrdEGVDoTktOlWEGxAwzuXADRJeAxJcnjsHFQYEHCRuPzopFSGcuLMMvhVapBmEQE",
		@"waDDRcQpiWWclYOjrbKDfwQaYHNIqVuthrASlTsoaPzlrBtGJveCkdImDiwufgaRmYnwesHxUzoTcCvFaODetBYGmiXnRcFKskMpRmXJwGAFyQMMSGWapfHNaGgzUdqDmlRfR",
		@"ciBuctAHsBfhspuxeALasFijkkUBTZVIuBbOqmfYBWgGTJDxBRNyduHXHHQpEeRMVCaglTFCiiKwXvqVIvuXmZtJbFNsfpYCapbSLAfTIwLTTwYnJHDXLKOZIHQTrxILz",
		@"vmEEsIZGpxGMpsYOAmSUGDrHTOdzUlHQsezfpttqXBZGxNMVlcxQSnQTrSrmgiyjYUclmABtBerSFVQFjmsQYZrXzNWYEXvGGlob",
		@"uEItubepGtaerEFeHEaSAImDtjsyjfWjoWfbbJFOHbdZsEmPccujZpSOddtwpypJaSRlYVLgYiobyoBOnHHrZaYlPajEGsaHpQltHRy",
		@"lPawFqLqJqilRjqJmzFlNOhBpLaFNhZoVqzvYXOfxoYlXOAwLUnEoeiBBoovpPxTqEQuIIKjvjxNDnfHhsnwXSrKcGcaSTQhYUdzUOO",
		@"rawRqCWNfkWZODTWjDAzkkWjelQWLhOsxErxJDtxYoHeFUMrNLdqaVMvLAcvlwnxdnSBpZUixdjADlbGykFASERSHAFGOXrkOXGVBjWHYaZtcNiSYPuIjYEN",
		@"LSXQNJsFDztOAkHXBRkDKjkPehmTveMfUEECrvjwPeGZeUGJkZZbNLgGGYGKFHGEIdSlSOYJmuxaCFHzxnuBChUPeXhBaqnsPKdQEbGZlFpdXKaiJCLFIFavMCgkBrresxFjUPoQlqmjqjcNMQA",
		@"pckSaBymmdzqcDFkAZRojyyQurBJpvamkCIGeOHVclopmKnuQwDUcTqzFPOLULpkeFkWslfbrMPKxUleEUrkKywgNKIcFlJiMbGSKtsZWERCZDvdpNgzMaAwXlUbbQRTrXsoONAiMYXVWQ",
		@"gLFtMiqmUeJryMwAUSfoSQFbAKWwPBTpKxmgMPmfWtobzfIEQagZzvmsMlaOeFXAtFlJyYeuVfCWMIOvxCjChZORzeQbktwZSRNrGpLBeTqULjPmxElqCUz",
		@"BOldmycmLFMZsOKUgWwZPMrWHbzCUSNDnSixDUkozhdzZLpxdePJLWamtSuvpEMXUsbGSuypFvvLVWSdzrJXkxVRpseoacvAIkJtxKvOAXfVPzTonai",
	];
	return GiHCDiMdjwcQG;
}

+ (nonnull NSString *)erkbLdToabgwBEu :(nonnull NSString *)wVXiwUiokoiIUuv :(nonnull NSString *)dMGDwJXJObfKqaldtpR :(nonnull UIImage *)EsirKmArjzuABwpTBL {
	NSString *lAkNEIcuMPaXtzQC = @"aLBcyhqqhNCYQhxKJdHCZWkedyLAUKKcNXKBgNPGptRzYcXTombBfESViZginKUTnxzmPowPRFXjIuxYEkrHbXoUbGrPiwPpwGXkpaDAWbiOGzDVW";
	return lAkNEIcuMPaXtzQC;
}

- (nonnull NSArray *)lCIJYnEFAXWTf :(nonnull NSArray *)HabIbHCtYBPb :(nonnull NSString *)fXeyoaabwCwzUBMnHtk {
	NSArray *lFYnacUoSUgNlnpYHH = @[
		@"AtjiIWiIBzOkZYcsCkzbLqQHSBsRpCdyLeFgaGHKyQcujZQMDTfpBsKOTNComaotmruiHXcKxlmqLondSWXarhXTqIdoCBlMxmOKZNIEojdPObXubVFHFdQLHtkBbSBjCvcCrHbAoHLYIa",
		@"BBPhGKcmQeSouKPkNfTmxENEKPsCHZyoLiznUtXOBfjZyODjhyEFxTboKnHPWYRGcYrETORbPxqobdSILnfCiumtwhiGOJGSGvtxORUBYRXCfIbKMPyLVeAPJnPoVDiNWQiPFMMTGYtdZfcb",
		@"OcJRJHFqZvfYsGeHBrcFVMTlLCvSGqgdtpHTsYOjLtRKTKMjDKHileazONODZYrVeXPqtKAxWXLrBLIHtUWqoRRTWJsBkUfHvGNfKCLllMMRCQKasFDYcXjWKRYluuF",
		@"iXCNRfyyoRkAoYUMUFvaTEHztTrCuAmoeQVthJHSgmNsoUlnvHFSzxjLxTrIAnkPTMIDMzOOUoXsbylAgYQmDofpeibMGFEvEfBaGpEFVBmlpeKwYRZNDFlNXfyjEWkzcAoOxeUSzSSIuJqcVWO",
		@"JmPkJtzyOScEhdmJgjQidkHEccEUwcqcqqtlVAnrULIdDlzRQRpcFstWMhLVxNbINURSKfnjfORlDDVOPmgVmawonUtEPeynOOxFjvOwKXnmllCUiOuUavftIjoBcfLQNLl",
		@"IIYzeTZvBCoDDYdtsHhyWYfklxsvwRukQCuyNLSYRJrPhayXCLCBoEXnaPsNTyfwxjLhjWXCVhPAFzrRAFLfftPLMZixKVVPlNapAMP",
		@"ndKYeTqTYFknZFznnfJGlxEbnqBPFVLqrWCvNXHIhxRHuhZfZWBZKIIRfuVbbhMLIeRKGdUHFmfPfrSgiiRZGHxBRTwQwfCPnEgJNeAfMOE",
		@"tXkqIsJaroGAzgNDJpfxUkKdKegwRaFmQbQngoDWIvPiKhZQZOkCdiKOQhpwuaTDjnRNbvMNxdblwFOEjNmatJZETwBdMVJBsYLh",
		@"bKlcfiXvmatjcUuuNyTcfwRIrjIVifShRKptrLKfYPsTNSAAZPkHNgOMRibeBETfwqHsYkMcnCYSNbdBkpfSUMCuuITQqiwvfkEybdzlREDwilFjjoERyeUyTwzjDKDLQPqKjPCDZummLk",
		@"IlXycFnSZOgpZIWhXzqBWVmcDWzjQKvpilMxrvRDNEdcxIXjICbPxHtSuDdqPruRgIfJhIUVXPtlwMjesSIrhYEQfUXrPcAPFxVDuiLXGnmMPsrKoDwPLifUwIVrwoPI",
		@"ASRYmqfIHcYhkmFGgCvidEgCnbDXSIzernpmOGhgVXtIfQQsKBzdEdPVNoLBYUIwszZwZXcgsMYedqSzJfREzalWJLbHquDhwxgxJfOnHCQfpBvLxDN",
		@"rAlUygwNAgXWYUuClrJvJDknlxVSHffTROjyaWlQNYQjMskEZUARDsTArcXoMxjNPWJpCtqGDnLYBZkhGVBDSlmqYjeMCgCfscfzXVgqVpWXv",
	];
	return lFYnacUoSUgNlnpYHH;
}

- (nonnull UIImage *)gfaulJEwMHCKC :(nonnull NSData *)AwoarWfhyOqYSd {
	NSData *swJXBYgpzG = [@"VtlWLhKJZxYmiOwqcnALiFEfSSuTWQaCnydAYywkCQqanHXYdxrcAJckWomUvOvURaxEDQtnWyZlufTLzANSoZuvVEgLPdNmsOUjksyIEyJmlaRBzLErOhOLiOXuCgwZMGzAcKKinkU" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *TQwqPWOldnhuCVo = [UIImage imageWithData:swJXBYgpzG];
	TQwqPWOldnhuCVo = [UIImage imageNamed:@"BHoZFtUtITcqPnmafphKpPktIRwTpmtiHuWwUZXLdXmdCECXlCnrbzDwOAbXVUxJScQvlFilghbrIETHFiCNTJvzQeHeIQgCJmVUHdqpWfRlkWkzWOMoJspswhsPCGGHRVHgqw"];
	return TQwqPWOldnhuCVo;
}

- (nonnull NSString *)ZUzjFfHyWUOCYU :(nonnull NSArray *)CtxzrFePaq :(nonnull NSString *)MLQtJUljaBuFgZ {
	NSString *VMpCXnwaTOL = @"LmNcolSZiZDblcczjVgvlMVjBLZGRpsXCTBQrAMZglhKRcIseUPcltaRTDpHUyAzyHqPZMoSSwwmKVDOFikxGqZaTHeuAZrhyXDLvfASoaXCMNCjMxkIMN";
	return VMpCXnwaTOL;
}

+ (nonnull NSArray *)KsBtCzKyLpmCpTsE :(nonnull NSData *)sMXVipbZmNGqctlxP :(nonnull UIImage *)TWlTUXqxfgSmZLXL {
	NSArray *jMnkUqFyZRQfyMK = @[
		@"IJJbEpFfuOYGeVFJamegPqddXcXqnSCpuyWAneJAeAPlpcckbjtxbKNSxebiGkfJnPsddQhDSpUKDVXLeADlhowDvqOvYlDTncea",
		@"bUzaDPWnfweGwKxRHkCSdwJjkhoVuFlrrbPDLDWmaqxXOFEzpWiYQtHMkrIUIIEvqcxuEbgDtFoMAFcHYPFroMvgyBDWbpQhlxqlvPKgKtFHjQnpWxLT",
		@"GKcdlIVtEEZdacHbPfpAeidghaqvbppbNRLSBtNnYLdwQpEBbyKvRlcOWVrloGvvvnHAEfZBZOViMLVXHdnJYeroXCHeyBRnEwFbnEJJaYrACitjKdUMoZblZCGBKdfPoij",
		@"uHSvVylBBodYZBDTnpdyIPZvrtDkcvDMimnLuectcSVLWkKWUoTxSdpMIufkUZUngpHWJHIkratTLCJOtCtWjYlgsTfwVKfxKtRSJkSdtZYYWO",
		@"IePzvuAJMQLtJVGEZYzMSpBOztRnWtmEpOwOHzmTDJbulGuzwsBWBeOrxVhOoDqYDzbaOYCSkHYLUFfEYBeatbThFgOGfKeOqgYzTBSRnvpDPihNHpPfWYREVB",
		@"vLcSoWJSKBAvCdRdXPUYhViZpZAnDMDSKGfpuplXPEftMZlyweztbzNpTOiLHiMPCcGkmjFTgNadJkXwUWjvmxLiBoWGUBLsCcpmkJlpqnVbe",
		@"hixBEpDpPCNFlhFceCrqxVmnUGwEDwYnualxHoBHhpfMRNEpBDzCtrInYLktDgzPsqlCIrfpbAOECVzKFoDcCvNbUnCNlBCeKmDoSgmHAKv",
		@"xzuirqdUOkqKcparisNqmAItGtkKMRPMkimjyQDOLCfQYtqiSShopWVlnBzJIXhmLrWgMFKTPLFdasGeEUeDJczUtHMrOhDCqyIrfLphDHLHjiDfLeribLawxhVdHbYLVehyuGJdNIsuTcYEHnvK",
		@"FzrnNjcnfkiRjPczZszGtIekiVYKFUttBhcjLnPwVzCXqsEWFMsrwKefRXtjmegWnmXoJRsNpErFtEgZqZFvSBwLMxIShXShlLvqCkthgCxRWNdWBeTxKKKuxBIeFzUDfVEeEVdHOSC",
		@"jknzriDJMUrgdCRTQHiHjIrFfHNSGPZgDjKYwqjNqKAGqJIgNubAjrKgIRIbFSxDAfilydEQWcBvUbpxyfkLsjbJtTfYQaVRxqidF",
		@"FVnTjvjvyrUjKsGavziDWZgMVbiDNafYEsANJgJPTgfBMraeQiyXEGSGarGDdBrbRVcXuRCKUVjGVzdPYkpQeNMXDcJVnRfHICMDWttnFshmYGflgfYMUGdYO",
		@"LIDEXOQTCOLtDhwrbJIkzSQzZuEKgaRDJCrTrsSFwUapQbgITyJNBYNGZQpaAvBHfZyvVNppHPMzELhsBnOEwjGGdeGmdeDlwtLNEmnASeSxGVzVUSwL",
		@"waKizzKScJgUUUOJfAWaARuRXvwTivfUIOFEKfnZEHVlRkbnGDKGgIpQShHAVfxZPgQCXKhEKfqEsInLVoPgalsTiHbseMqABKuQxeLIPszyHPNxTMDrfOwZKjcNVWFmTopOniEsaFDRdd",
		@"fzHEYHEFhpsRsKQOGffaoqXkhKqxGQMCKEcfOFOsWRzLccjjjFawdEdYgPDsZMUrvlmtOYcUABPewBRInsSZQGRAnUxTAINvHVGmlAZPDNQqFxabuIoGCwxgfoMCufytIGRiOqKjgF",
		@"mHtyHSReFBabIKIqnjSZzlmsBRabXDkxVUtUmeJPqTJLnoKrNrfKBEGNufGlTNrISwExBOqWlRLjCFQItOXoukAaSOQnzwMCXvsjbIvGOhUpGmydJUvIEqwqCMyapXsOLZVurTUNTssbe",
	];
	return jMnkUqFyZRQfyMK;
}

+ (nonnull NSString *)ZwbCsRhrOhZrTAzGit :(nonnull NSDictionary *)jAqJAWMUPFL {
	NSString *pjOlJUbQHvO = @"aJNbPAZTmkUfrdalFyQlXrtyRQoskEBZnYArFUGuGqqXCnePWlURfqidXImAeziGXOHZbYPvpMEDFwwmwPELQJVVHTmVusIagNmLZBFUEuFktBTc";
	return pjOlJUbQHvO;
}

+ (nonnull NSDictionary *)XaifAnXFmttNSGFQUiF :(nonnull NSArray *)ndTFmjpkclqwuui {
	NSDictionary *rRVAplJsVd = @{
		@"inNTdnypSNCuc": @"XjrOKBWvACDMUorjigvRdzUlWofRsHiSYTrkfehXXBXnVPUPloJfRSuMEviKpnGEzhkmqhVmDknBEPQibvrDKtlXimhsNzVJDArieThsMRpRqvnreQjjQRhOwPfeHp",
		@"miAUepctUHGiNXDUXZu": @"zOXhJwQqAvYIxTvgmdzCGbPxBqQjOKzsLukZQRgiWSltXifTaMeQUAxFLnSYouAwUHsadAKryVVhdIDhLKFpolmCfrVglxORrqszdRaRYAFKJHRZIFbRCkhCgPEKVlqHZUbUDlLTielaeMOZYjttq",
		@"gLqldksNnPhvwAjwif": @"MpaSxwOYihiPitNjiOkIyDbBcppZFEGsfEVXihLozYFmpJCIMNaLokJoLNeQItaATpgnHbMGsAOIOxIYWSTBlXuVvaEEMYiRrMpWuQaxkqExVBOtONPbQYzQKfpYKPcKmgIJJasgMcIhYqUHKc",
		@"hItajRdWUNCCIow": @"OBGnndrAHbvyMCdzSkpysDOlpgclARVlEilNJBPBNOJAzHNhTkwHJWJANbqkgHGcJanWOTXVoGiryOZQrmrRQbZIXbBFbymaPmMyuYxqTWzrJXJGphJZKDJMJemKfMyLcKSbAuasMQmR",
		@"ooVejrrsIKuGNFU": @"wjLLRXQnLhwrZjlYjLWechkGaXNbxAFDRAQvKjRLNEsNpryGfMLWWkvwXOYslUkABNnzvUETTNLlKrpXnpavegQlSPsfwWJCsGYBuTNURJXnTZbkrNDKibO",
		@"NJssWNNFuwiRqli": @"AbCQZeZzQNUDOXlvvMBoqdXNRxuMlbagvNKfNvYjQTjPMVZritWevMgYKhJgVyxBboYPUENCjBuwZXFuyTnQcXnOdXtGtyxwHcgVaDkuqMCqsdRhNtYnbhTDsAFJphYgaFviMJDnRnaIT",
		@"oefTjiFHQGtIAI": @"WkPGpapupYzRGQsqZxhROnQFAtiCdMBFTMZhDLQOpfdnxYESsHJaVwgFztoFeyJjXMuOVbDVVBMWHNauosBgZiRtKcBJBfKUNSkMRhVqmlXErvdBzKcFFTeTUwQrMDVKMrNuWWwEjmKxCikXLXst",
		@"UGRqsTtkbFRBeOvuWI": @"COMYYaLXfhULZhhEYDDuWGlfdHPKcmPNHEcNxoavqjNNCaJZgljMpeQICSKQIRhQflGlHhDjXIXmLPXHBbfMKLggZbYfpSbBubasGxPlvPNetMjwXiuNpHvJvQJWAPolcC",
		@"iMXwGDxyXkWictGu": @"jTPGiukmFddRJtzMiqOrCNGIeQFMBJSRWMzcJJbaJEAdPxWiKdqLccDiOhysMbTruxWSiiTRHPbXhgGQjmWeqnDHVymsSQNAppzzBsiRIRxqQVhfZDFxwXf",
		@"GuaCkmYeELLYxnWkaY": @"qofDbfvjZQQVcdnEAdSOUzjmlEIkLwMeGfYWFWcujKjmScvyNepVyBuwtqdgGEezuRnSMHHYZOvUIghleEftaJyzHgqZThXtLNkyxBvSt",
		@"mrMidMbYqUAKi": @"sWrGsPXillPXICIzFpNriALVUGqwtiBGwKkIxLcSkkotRvvQubLqhjyhOExRDlfRwGdqaaKeUCqlVRnCLYHnubJRjqFCsEDhPkpWsxGqhTc",
		@"ljEoQzXCvPQ": @"FSWLQkPvWZlLObpBKmcCLHIMMxaFSlhQBHZSxSwocBsKYIvIklpBdbafwvQmULrXMrNcpyMmNwwNfaHASkHHNKDeBIbqcuIaAcmzqUmbvHJtjVWLwRDubvHRQaiEeJJGdZAV",
		@"xhlJifJpgEA": @"TNaMUgtVozfgDSCiGbcKOnStwqawVUwGYCIfdETskFBahrrvlsBJRfUNbwPlrdFKunveIzavvRSxmihZzAjsNLoEVHXvHwDjoGpQUCIwgEEC",
		@"LvUTsBQhuyt": @"BZZudrYfoAwpmdJENsmwUBRQECdizVhYctGkMRauBRvyIwjGmWJWDndAIdkVjjGDvVviYXFEWQryVtTOgAkgICEKCarewsyqKoPdZ",
		@"OBUcYaveePIXBEPql": @"kiUjadxaTPQWolHtFTkBJsbYkOqRftdZylQVFzBPBDPLZqHPNxgZZNMRswbJolDCAtbkrQgDUgHqSOSdEptBBPxNCnffdqRbBcOeXKjuTgFLriYOPynOJratBrohyllnZNktndhKf",
		@"VOckmIvMWPbQwwIM": @"emPMSplFkWZpucyIZcDKiuscpMeatayVbjJAxqpjsTlngAoGRHMuAkzZahBwcQOfYvRWucknOlxMtMgVfowTOcaFOGzoUfaLmoGQDqgNdpbHA",
		@"IlkGYdRNRjG": @"QROFiYTZrYhWbTBTORVdiNxcmQBdUxHZPpNHWvWIbybqHNrtADhXgSxOfGNBPRyOagpVJkFytooUULKwbsOJTXCsKuWSaOENHuEImWPynfAJYwQPdfhBpBu",
		@"YWzmAUSrkLuxtBV": @"kyCdqzhAiiqIOHiWjOOkXxjDmjPUXFuEacfycnABwSgbUTOOfQshiAPNaKqvYUGVHXbSsNQLXOXGAxltYGyGPjkMjlsVrVFOkbXtltyrmCCkeuwEpfwY",
		@"QMiCvDRtSOkfPnQJg": @"DAUItKNBvZIsXFmhbXYJnXYCFFijqJcDHDvyivpvWPnLhoHXlIcTXoEOcqvjqqXFPWcmiFAqLIUriHuYqUWidwhjsqqYivitpFWZmjCAoSnmrVGCmfHaMJcczrqTiijJULlB",
	};
	return rRVAplJsVd;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.magHomeVC = [[magHomeViewController alloc] init];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:self.magHomeVC];
    self.magHomeVC.tabBarItem.title = @"Home";
    self.magHomeVC.tabBarItem.image = [[UIImage imageNamed:@"magtab_home_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.magHomeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"magtab_home_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.magHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.magHomeVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.magAddVC = [[magAddViewController alloc] init];
    UINavigationController *service = [[UINavigationController alloc] initWithRootViewController:self.magAddVC];
    self.magAddVC.tabBarItem.title = @"Add";
    self.magAddVC.tabBarItem.image = [[UIImage imageNamed:@"magtab_add_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.magAddVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"magtab_add_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.magAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.magAddVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    self.magSearchVC = [[magSearchViewController alloc] init];
    UINavigationController *customer = [[UINavigationController alloc] initWithRootViewController:self.magSearchVC];
    self.magSearchVC.tabBarItem.title = @"Search";
    self.magSearchVC.tabBarItem.image = [[UIImage imageNamed:@"magtab_search_default"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.magSearchVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"magtab_search_active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.magSearchVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateSelected];
    [self.magSearchVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor grayColor]} forState:UIControlStateNormal];
    
    NSArray *arrControllers = [NSArray arrayWithObjects:home,service,customer,nil];
    self.viewControllers = arrControllers;
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
}
@end
