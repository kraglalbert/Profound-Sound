//
//  PPAImageDisplayAcoustic.h
//  Personal Project App
//
//  Created by Albert Kragl on 1/8/2014.
//  Copyright (c) 2014 Albert Kragl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPAHomeScreen.h"

@interface PPAImageDisplayAcoustic : UIViewController <UIAlertViewDelegate> {

   IBOutlet UIImageView *imageview;
        
   IBOutlet UINavigationItem *navBarTitle;
   IBOutlet UIButton *rightButton;
   IBOutlet UIButton *leftButton;
    
   NSUInteger solutions123Count;
   NSUInteger solution1Count;
   NSUInteger solution2Count;
   NSUInteger solution3Count;
   NSUInteger totalSolutionCount;
   NSUInteger totalSolutionIndex;
    
}

@property (nonatomic, retain) NSMutableArray *solutions123;
@property (nonatomic, retain) NSMutableArray *solution1;
@property (nonatomic, retain) NSMutableArray *solution2;
@property (nonatomic, retain) NSMutableArray *solution3;
@property (nonatomic, retain) NSMutableArray *totalSolution;
@property (nonatomic, retain) NSString *sizeSuffix;

-(IBAction)previousSolutionImage;
-(IBAction)nextSolutionImage;





@end
