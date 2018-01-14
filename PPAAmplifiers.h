//
//  PPAAmplifiers.h
//  Personal Project App
//
//  Created by Albert Kragl on 2013-11-08.
//  Copyright (c) 2013 Albert Kragl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PPAAmplifiers : UITableViewController

@property (assign, nonatomic) NSUInteger selectedEffectsUnit;
@property (retain, nonatomic) NSMutableArray *plistArray;
@property (assign, nonatomic) NSUInteger plistIndex;
@property (retain, nonatomic) NSString *filePath;
@property (retain, nonatomic) NSArray *listData;

@end
