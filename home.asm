SECTION "NULL", ROM0
NULL::

INCLUDE "home/header.asm"


SECTION "High Home", ROM0

INCLUDE "home/lcd.asm"
INCLUDE "home/clear_sprites.asm"
INCLUDE "home/copy.asm"


SECTION "Home", ROM0

INCLUDE "home/start.asm"
INCLUDE "home/joypad.asm"

INCLUDE "data/maps/map_header_pointers.asm"

INCLUDE "home/overworld.asm"
INCLUDE "home/pokemon.asm"
INCLUDE "home/print_bcd.asm"
INCLUDE "home/pics.asm"

INCLUDE "data/tilesets/collision_tile_ids.asm"

INCLUDE "home/copy2.asm"
INCLUDE "home/text.asm"
INCLUDE "home/vcopy.asm"
INCLUDE "home/init.asm"
INCLUDE "home/vblank.asm"
INCLUDE "home/fade.asm"
INCLUDE "home/serial.asm"
INCLUDE "home/timer.asm"
INCLUDE "home/audio.asm"
INCLUDE "home/update_sprites.asm"

INCLUDE "data/items/marts.asm"

INCLUDE "home/overworld_text.asm"
INCLUDE "home/uncompress.asm"
INCLUDE "home/reset_player_sprite.asm"
INCLUDE "home/fade_audio.asm"
INCLUDE "home/text_script.asm"
INCLUDE "home/start_menu.asm"
INCLUDE "home/count_set_bits.asm"
INCLUDE "home/inventory.asm"
INCLUDE "home/list_menu.asm"
INCLUDE "home/names.asm"
INCLUDE "home/reload_tiles.asm"
INCLUDE "home/item.asm"
INCLUDE "home/textbox.asm"
INCLUDE "home/npc_movement.asm"
INCLUDE "home/trainers.asm"
INCLUDE "home/map_objects.asm"
INCLUDE "home/trainers2.asm"
INCLUDE "home/money.asm"
INCLUDE "home/bankswitch.asm"
INCLUDE "home/yes_no.asm"
INCLUDE "home/pathfinding.asm"
INCLUDE "home/load_font.asm"
INCLUDE "home/tilemap.asm"
INCLUDE "home/delay.asm"
INCLUDE "home/names2.asm"
INCLUDE "home/item_price.asm"
INCLUDE "home/copy_string.asm"
INCLUDE "home/joypad2.asm"
INCLUDE "home/math.asm"
INCLUDE "home/print_text.asm"
INCLUDE "home/move_mon.asm"
INCLUDE "home/array.asm"
INCLUDE "home/compare.asm"
INCLUDE "home/oam.asm"
INCLUDE "home/window.asm"
INCLUDE "home/print_num.asm"
INCLUDE "home/array2.asm"
INCLUDE "home/palettes.asm"
INCLUDE "home/reload_sprites.asm"
INCLUDE "home/give.asm"
INCLUDE "home/random.asm"
INCLUDE "home/predef.asm"
INCLUDE "home/hidden_objects.asm"
INCLUDE "home/predef_text.asm"

SECTION "MD APU Register Table", ROM0

MD_APURegisterTable::
	db LOW(rNR11), LOW(rNR12), LOW(rNR13), LOW(rNR14)
	db LOW(rNR21), LOW(rNR22), LOW(rNR23), LOW(rNR24)
	db LOW(rNR31), LOW(rNR32), LOW(rNR33), LOW(rNR34)
	db LOW(rNR41), LOW(rNR42), LOW(rNR43), LOW(rNR44)

MD_HWChannelDisableMasks::
	db HW_CH1_DISABLE_MASK, HW_CH2_DISABLE_MASK, HW_CH3_DISABLE_MASK, HW_CH4_DISABLE_MASK
	db HW_CH1_DISABLE_MASK, HW_CH2_DISABLE_MASK, HW_CH3_DISABLE_MASK, HW_CH4_DISABLE_MASK

MD_HWChannelEnableMasks::
	db HW_CH1_ENABLE_MASK, HW_CH2_ENABLE_MASK, HW_CH3_ENABLE_MASK, HW_CH4_ENABLE_MASK
	db HW_CH1_ENABLE_MASK, HW_CH2_ENABLE_MASK, HW_CH3_ENABLE_MASK, HW_CH4_ENABLE_MASK

MD_FixVolume::
	ld a, c
	and 3
	cp 2
	jr z, .ch3
	swap d
	ret
.ch3
	ld a, d
	cpl
	add $20
	and $60
	ld d, a
	ret