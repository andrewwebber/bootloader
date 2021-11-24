.code16
.global init # makes our label "init" available to the outside

init: # this is the beginning of our binary later.
  jmp init # jump to "init"

.fill 510-(.-init), 1, 0 # add zeroes to make it 510 bytes long
.word 0xaa55 # magic bytes that tell BIOS that this is bootable
