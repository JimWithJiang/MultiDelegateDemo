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

@protocol ManagerDelegate;

@interface Manager : NSObject

- (void)reciveBottonClick:(UIButton *)button;

+ (instancetype)shareManager;

- (void)addDelegate:(id<ManagerDelegate>)delegate;

- (void)deleteDelegate:(id<ManagerDelegate>)delegate;

- (void)clearAllDelegates;

@end

@protocol ManagerDelegate <NSObject>

@optional

- (void)manager:(Manager *)manager didBottonClick:(UIButton *)button;

@end
