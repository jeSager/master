################################################################################
#  MIPS LOWERCASE PROJECT
#
# Mon Sep 19 22:19:57 EDT 2016
############################################################## Memory Allocation
.data

  work:        .word 8      # 32 byte allocation: 31 char max allows space for
                            #                      new line and avoids timeout

  prompt:      .asciiz      "\nEnter up to 31 chars using capital letters:   "

  out:         .asciiz      "\n                          In all lowercase:   "

.text
###################################################################### Variables
main:

  la $t1 work                  # constant:  address of the current char
  li $t5 13                    # constant:  new line
  li $t2 90                    # constant:  upper boundry capital ascii
  li $t6 65                    # constant:  lower boundry capital ascii


########################################################################## Input

  la $a0 prompt                # load prompt into a0
  li $v0 4
  syscall                      # read op code in v0, print a0

  sb $t5 32($t1)               # make program end early if max chars

  la $a0 work                  # load address of user input
  li $a1 32                    # allocate 32 bytes for input
  li $v0, 8
  syscall                      # read op code, load input into a0

########################################################################### Loop

  loop_begin:

    lb $t3 ($t1)               # load the byte at address
    beq $t3 $t5 end_loop       # if the char is a new line char, break
    slt $t4 $t3 $t6            # if char < 65, jump to next
    bgtz $t4 next
    slt $t4 $t2 $t3            # if the 90 < char, jump to next
    bgtz $t4 next
    addi $t3 $t3 32            # else, add 32 to make it lowercase
    sb $t3 ($t1)               # put the char back at its address

  next:

    addi $t1 $t1 1             # get the next address
    j loop_begin

  end_loop:

################################################################### Print Output

	la $a0 out                   # load out string into a0
	li $v0, 4
	syscall                      # reads op code, prints a0

	la $a0 work                  # load user output into a0
	li $v0 4
	syscall                      # read op code, prints a0

#################################################################### End Program
	li $v0 10                    # load op code to exit
	syscall
