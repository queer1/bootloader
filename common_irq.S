	.globl eint16_31_irq
	.globl eint_rtc_irq

eint16_31_irq:

	/* �����ֳ� */
	ldr sp, =0x35000000
	sub lr, lr, #4			  /* ִ��ָ��ǰ�����ж��Ƿ����жϣ�����Ҫ������ǵ�ǰָ���������һ��ָ�� */
	stmdb sp!, {r0-r12, lr}   /* lr�����ж�ǰϵһ��Ҫִ�е�ָ���ַ */

	bl do_eint16_31_irq
	/* �ָ��ֳ� */
	ldmia sp!, {r0-r12, pc}^  /* ^��ʾ��spsr�ָ���cpsr */

eint_rtc_irq:

	/* �����ֳ� */
	ldr sp, =0x35000000
	sub lr, lr, #4			  /* ִ��ָ��ǰ�����ж��Ƿ����жϣ�����Ҫ������ǵ�ǰָ���������һ��ָ�� */
	stmdb sp!, {r0-r12, lr}   /* lr�����ж�ǰϵһ��Ҫִ�е�ָ���ַ */
	
	bl do_eint_rtc_irq
	/* �ָ��ֳ� */
	ldmia sp!, {r0-r12, pc}^  /* ^��ʾ��spsr�ָ���cpsr */

	
