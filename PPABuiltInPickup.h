//
//  PPABuiltInPickup.h
//  Personal Project App
//
//  Created by Albert Kragl on 3/9/2014.
//  Copyright (c) 2014 Albert Kragl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPABuiltInPickup : UITableViewController

@property (assign, nonatomic) NSUInteger selectedEffectsUnit;
@property (retain, nonatomic) NSMutableArray *plistArray;
@property (assign, nonatomic) NSUInteger plistIndex;
@property (retain, nonatomic) NSString *filePath;
@property (retain, nonatomic) NSArray *listData;

@end
