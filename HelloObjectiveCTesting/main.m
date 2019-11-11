//
//  main.m
//  HelloObjectiveC
//
//  Created by 7077 on 11/11/19.
//  Copyright © 2019 7077. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedListItem : NSObject
@property int value;
@property LinkedListItem *next;

@end

@implementation LinkedListItem


@end

@interface LinkedListManager : NSObject

@property (nonatomic, readwrite) LinkedListItem* First;
@property (nonatomic, readwrite) LinkedListItem* Last;
@property (nonatomic, readwrite) NSInteger length;

- (void)addItem:(LinkedListItem*) item;
- (void)addValue:(int) value;
- (int)get:(int) index;

@end
@implementation LinkedListManager

- (void) addItem:(LinkedListItem*) item {
    if (self.length <= 0) {
        self.First = item;
    } else {
        self.Last.next = item;    }
    self.Last = item;
    self.length++;
}
- (void) addValue:(int)value {
    LinkedListItem* item = [[LinkedListItem alloc] init];
    item.value = value;
    item.next = NULL;
    [self addItem:item];
}
- (int) get:(int) index {
    

    NSException *e = [NSException
                      exceptionWithName:@"OutOfRangeException"
                      reason:@"There is no element in the array with this index"
                      userInfo:nil];
    
    if (index > [self length]) @throw e;
    LinkedListItem* current = [self First];
    for (int i = 0; i < index; i++) {
        current = current.next;
    }
    return current.value;
    
}

@end

void incrementByReference(int *a);
void incrementByValue(int a);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("\n\n");
        
        LinkedListManager* manager = [[LinkedListManager alloc] init];
        [manager addValue:5];
        [manager addValue:16];
        [manager addValue:21];
        [manager addValue:32];
        
        
        for (int i = 0; i < [manager length] + 1; i++) {
            printf("item %i: %i\n",i, [manager get:i]);
        }
        
        int a = 0;
        
        printf("\nmemory location of a: %p\n\n", &a);
        
        incrementByValue(a);
        printf("increment by value: %i\n\n",a);
        
        incrementByReference(&a);
        printf("increment by reference: %i\n\n",a);
        
    }
    return 0;
}

void incrementByReference(int *a) {
    printf("memory location of a from increment by reference: %p\n", &*a);
    *a = *a + 1;
}

void incrementByValue(int a) {
    printf("memory location of a from increment by value: %p\n", &a);
    a = a + 1;
}
