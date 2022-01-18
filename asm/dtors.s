.section .dtors  # 0x80251D40 - 0x80251D60
.global __destroy_global_chain_reference
__destroy_global_chain_reference:
	.4byte __destroy_global_chain /* 0x801ECE24 */
	.4byte __fini_cpp_exceptions /* 0x801EDB74 */
	.4byte __destroy_global_chain /* 0x801ECE24 */
