//
//  MultiDelegate.h
//  MultiDelegateDemo
//
//  Created by JiangMing on 2017/3/20.
//  Copyright © 2017年 JiangMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MultiDelegate : NSObject

@property (readonly, nonatomic) NSPointerArray* delegates;
@property (nonatomic, assign) BOOL silentWhenEmpty;

- (id)initWithDelegates:(NSArray*)delegates;
- (void)addDelegate:(id)delegate;
- (void)addDelegate:(id)delegate beforeDelegate:(id)otherDelegate;
- (void)addDelegate:(id)delegate afterDelegate:(id)otherDelegate;
- (void)removeDelegate:(id)delegate;
- (void)removeAllDelegates;

@end
