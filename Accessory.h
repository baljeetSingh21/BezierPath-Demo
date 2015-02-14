//
//  Accessory.h
//  demo
//
//  Created by Vicky Mathneja on 06/02/15.
//  Copyright (c) 2015 LPU. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum ShapeSelection : NSUInteger {
    checkMarkStyle= 0,
    ErrorMarkStyle = 1,
    NOTICEMARK = 2,
    INFOMARK = 3,
    EDITMARK = 4,
    WARNINGMARK = 5,
} ShapeSelection;


@interface Accessory : UIView
@property(assign)int style;
@end
