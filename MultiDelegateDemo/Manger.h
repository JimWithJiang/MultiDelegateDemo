//
//  Manger.h
//  MultiDelegateDemo
//
//  Created by JiangMing on 2017/3/20.
//  Copyright © 2017年 JiangMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MultiDelegate.h"
#import <UIKit/UIKit.h>

@protocol MangerDelegate;

@interface Manger : NSObject

- (void)reciveBottonClick:(UIButton *)button;

+ (instancetype)shareManger;

- (void)addDelegate:(id<MangerDelegate>)delegate;

- (void)deleteDelegate:(id<MangerDelegate>)delegate;

- (void)clearAllDelegates;

@end

@protocol MangerDelegate <NSObject>

@optional

- (void)manger:(Manger *)manger didBottonClick:(UIButton *)button;

@end
