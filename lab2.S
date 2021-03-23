.global lab2
.syntax unified
#define A #5
#define B #3
#define C #0
lab2:
    push {lr}
    mov r0, A
    mov r1, B
    SUB r0, r0, r1
    mov r1, #3
    MUL r0, r0, r1
    mov r1, C
    mov r2, #1
    mov r3, #2
    
pow:
    cmp r1, #0
    ble func
    mul r2, r2, r3
    sub r1, r1, #1
    b pow
    
func:
    add r0, r0, r2
	
pop {pc}
	
	 
