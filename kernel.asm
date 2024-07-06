
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7d013103          	ld	sp,2000(sp) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	005060ef          	jal	ra,80006820 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
	addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
	.irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
	sd x\index, \index * 8(sp)
	.endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
	ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
	.irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
	ld x\index, \index * 8(sp)
	.endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
	addi sp, sp, -256
    800010f0:	f0010113          	addi	sp,sp,-256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001104:	14011073          	csrw	sscratch,sp
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001108:	00013023          	sd	zero,0(sp)
    8000110c:	00113423          	sd	ra,8(sp)
    80001110:	00213823          	sd	sp,16(sp)
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001188:	79c010ef          	jal	ra,80002924 <_ZN5Riscv20handleSupervisorTrapEv>
    #call _ZN5Riscv20handleSupervisorTrapEmmmmm

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000118c:	00013003          	ld	zero,0(sp)
    80001190:	00813083          	ld	ra,8(sp)
    80001194:	01013103          	ld	sp,16(sp)
    80001198:	01813183          	ld	gp,24(sp)
    8000119c:	02013203          	ld	tp,32(sp)
    800011a0:	02813283          	ld	t0,40(sp)
    800011a4:	03013303          	ld	t1,48(sp)
    800011a8:	03813383          	ld	t2,56(sp)
    800011ac:	04013403          	ld	s0,64(sp)
    800011b0:	04813483          	ld	s1,72(sp)
    800011b4:	05013503          	ld	a0,80(sp)
    800011b8:	05813583          	ld	a1,88(sp)
    800011bc:	06013603          	ld	a2,96(sp)
    800011c0:	06813683          	ld	a3,104(sp)
    800011c4:	07013703          	ld	a4,112(sp)
    800011c8:	07813783          	ld	a5,120(sp)
    800011cc:	08013803          	ld	a6,128(sp)
    800011d0:	08813883          	ld	a7,136(sp)
    800011d4:	09013903          	ld	s2,144(sp)
    800011d8:	09813983          	ld	s3,152(sp)
    800011dc:	0a013a03          	ld	s4,160(sp)
    800011e0:	0a813a83          	ld	s5,168(sp)
    800011e4:	0b013b03          	ld	s6,176(sp)
    800011e8:	0b813b83          	ld	s7,184(sp)
    800011ec:	0c013c03          	ld	s8,192(sp)
    800011f0:	0c813c83          	ld	s9,200(sp)
    800011f4:	0d013d03          	ld	s10,208(sp)
    800011f8:	0d813d83          	ld	s11,216(sp)
    800011fc:	0e013e03          	ld	t3,224(sp)
    80001200:	0e813e83          	ld	t4,232(sp)
    80001204:	0f013f03          	ld	t5,240(sp)
    80001208:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000120c:	10010113          	addi	sp,sp,256

    80001210:	10200073          	sret
	...

0000000080001220 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0*8(a0)
    80001220:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0)
    80001224:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1)
    80001228:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1)
    8000122c:	0085b103          	ld	sp,8(a1)

    80001230:	00008067          	ret

0000000080001234 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001234:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001238:	00b29a63          	bne	t0,a1,8000124c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000123c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001240:	fe029ae3          	bnez	t0,80001234 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001244:	00000513          	li	a0,0
    jr ra                  # Return.
    80001248:	00008067          	ret

000000008000124c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000124c:	00100513          	li	a0,1
    80001250:	00008067          	ret

0000000080001254 <_Z9mem_allocm>:

#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"

void* mem_alloc(size_t size){
    80001254:	ff010113          	addi	sp,sp,-16
    80001258:	00813423          	sd	s0,8(sp)
    8000125c:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)(size + MEM_BLOCK_SIZE - 1)/ MEM_BLOCK_SIZE));
    80001260:	03f50513          	addi	a0,a0,63
    80001264:	00655513          	srli	a0,a0,0x6
    80001268:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x01");
    8000126c:	00100513          	li	a0,1
    //call
    __asm__ volatile("ecall");
    80001270:	00000073          	ecall
    //get result
    uint64 adr;
    __asm__ volatile("mv %0, a0" : "=r"(adr));
    80001274:	00050513          	mv	a0,a0
    return (void*) adr;
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z8mem_freePv>:

int mem_free(void* ptr){
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)ptr));
    80001290:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    80001294:	00200513          	li	a0,2
    //call
    __asm__ volatile("ecall");
    80001298:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    8000129c:	00050513          	mv	a0,a0
    return res;
}
    800012a0:	0005051b          	sext.w	a0,a0
    800012a4:	00813403          	ld	s0,8(sp)
    800012a8:	01010113          	addi	sp,sp,16
    800012ac:	00008067          	ret

00000000800012b0 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    800012b0:	fd010113          	addi	sp,sp,-48
    800012b4:	02113423          	sd	ra,40(sp)
    800012b8:	02813023          	sd	s0,32(sp)
    800012bc:	00913c23          	sd	s1,24(sp)
    800012c0:	01213823          	sd	s2,16(sp)
    800012c4:	01313423          	sd	s3,8(sp)
    800012c8:	03010413          	addi	s0,sp,48
    800012cc:	00050493          	mv	s1,a0
    800012d0:	00058913          	mv	s2,a1
    800012d4:	00060993          	mv	s3,a2
    void* stck = mem_alloc(DEFAULT_STACK_SIZE);
    800012d8:	00001537          	lui	a0,0x1
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f78080e7          	jalr	-136(ra) # 80001254 <_Z9mem_allocm>
    if(!stck)
    800012e4:	04050063          	beqz	a0,80001324 <_Z13thread_createPP7_threadPFvPvES2_+0x74>
        return -1;
    __asm__ volatile("mv a4, %0" :: "r" ((uint64)stck));
    800012e8:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :: "r" ((uint64)arg));
    800012ec:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :: "r" ((uint64)start_routine));
    800012f0:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));
    800012f4:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    800012f8:	01100513          	li	a0,17

    __asm__ volatile("ecall");
    800012fc:	00000073          	ecall

    uint64 res;
    __asm__ volatile("mv a0, %0" : "=r"(res));
    80001300:	00050513          	mv	a0,a0
    return res;
    80001304:	0005051b          	sext.w	a0,a0
}
    80001308:	02813083          	ld	ra,40(sp)
    8000130c:	02013403          	ld	s0,32(sp)
    80001310:	01813483          	ld	s1,24(sp)
    80001314:	01013903          	ld	s2,16(sp)
    80001318:	00813983          	ld	s3,8(sp)
    8000131c:	03010113          	addi	sp,sp,48
    80001320:	00008067          	ret
        return -1;
    80001324:	fff00513          	li	a0,-1
    80001328:	fe1ff06f          	j	80001308 <_Z13thread_createPP7_threadPFvPvES2_+0x58>

000000008000132c <_Z11thread_exitv>:

int thread_exit(){
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("li a0, 0x12");
    80001338:	01200513          	li	a0,18
    //call
    __asm__ volatile("ecall");
    8000133c:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    80001340:	00050513          	mv	a0,a0
    return res;
}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	00813403          	ld	s0,8(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z15thread_dispatchv>:

void thread_dispatch(){
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00813423          	sd	s0,8(sp)
    8000135c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001360:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001364:	00000073          	ecall
}
    80001368:	00813403          	ld	s0,8(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_Z11thread_joinP7_thread>:

void thread_join(thread_t handle) {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r" ((uint64)handle));
    80001380:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001384:	01400513          	li	a0,20
    //call
    __asm__ volatile("ecall");
    80001388:	00000073          	ecall
}
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init){
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a2, %0" :: "r"((uint64)init));
    800013a4:	02059593          	slli	a1,a1,0x20
    800013a8:	0205d593          	srli	a1,a1,0x20
    800013ac:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :: "r"((uint64)handle));
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800013b4:	02100513          	li	a0,33
    //call
    __asm__ volatile("ecall");
    800013b8:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    800013bc:	00050513          	mv	a0,a0
    return res;
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle){
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)handle));
    800013dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800013e0:	02100513          	li	a0,33
    //call
    __asm__ volatile("ecall");
    800013e4:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    800013e8:	00050513          	mv	a0,a0
    return res;
}
    800013ec:	0005051b          	sext.w	a0,a0
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id){
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00813423          	sd	s0,8(sp)
    80001404:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)id));
    80001408:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000140c:	02300513          	li	a0,35
    //call
    __asm__ volatile("ecall");
    80001410:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    80001414:	00050513          	mv	a0,a0
    return res;
}
    80001418:	0005051b          	sext.w	a0,a0
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id){
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)id));
    80001434:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001438:	02400513          	li	a0,36
    //call
    __asm__ volatile("ecall");
    8000143c:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    80001440:	00050513          	mv	a0,a0
    return res;
}
    80001444:	0005051b          	sext.w	a0,a0
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z10time_sleepm>:

int time_sleep(time_t time){
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)time));
    80001460:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001464:	03100513          	li	a0,49
    //call
    __asm__ volatile("ecall");
    80001468:	00000073          	ecall
    //get result
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    8000146c:	00050513          	mv	a0,a0
    return res;
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <_Z4putcc>:
    __asm__ volatile("mv %0, a0" : "=r"(res));
    putc(res);
    return (char)res;
}

void putc(char c){
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00813423          	sd	s0,8(sp)
    80001488:	01010413          	addi	s0,sp,16
    //save
    __asm__ volatile("mv a1, %0" :: "r"((uint64)c));
    8000148c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001490:	04200513          	li	a0,66
    //call
    __asm__ volatile("ecall");
    80001494:	00000073          	ecall
}
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z4getcv>:
char getc(){
    800014a4:	fe010113          	addi	sp,sp,-32
    800014a8:	00113c23          	sd	ra,24(sp)
    800014ac:	00813823          	sd	s0,16(sp)
    800014b0:	00913423          	sd	s1,8(sp)
    800014b4:	02010413          	addi	s0,sp,32
    __asm__ volatile("li a0, 0x41");
    800014b8:	04100513          	li	a0,65
    __asm__ volatile("ecall");
    800014bc:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(res));
    800014c0:	00050493          	mv	s1,a0
    putc(res);
    800014c4:	0ff4f493          	andi	s1,s1,255
    800014c8:	00048513          	mv	a0,s1
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	fb4080e7          	jalr	-76(ra) # 80001480 <_Z4putcc>
}
    800014d4:	00048513          	mv	a0,s1
    800014d8:	01813083          	ld	ra,24(sp)
    800014dc:	01013403          	ld	s0,16(sp)
    800014e0:	00813483          	ld	s1,8(sp)
    800014e4:	02010113          	addi	sp,sp,32
    800014e8:	00008067          	ret

00000000800014ec <_ZN3PCB13threadWrapperEv>:
    running->state=RUNNING;
    //running->changeRegime();
    PCB::contextSwitch(&old->context,&running->context);
}

void PCB::threadWrapper() {
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00113c23          	sd	ra,24(sp)
    800014f4:	00813823          	sd	s0,16(sp)
    800014f8:	00913423          	sd	s1,8(sp)
    800014fc:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001500:	00001097          	auipc	ra,0x1
    80001504:	404080e7          	jalr	1028(ra) # 80002904 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001508:	0000a497          	auipc	s1,0xa
    8000150c:	35848493          	addi	s1,s1,856 # 8000b860 <_ZN3PCB7runningE>
    80001510:	0004b783          	ld	a5,0(s1)
    80001514:	0087b703          	ld	a4,8(a5)
    80001518:	0307b503          	ld	a0,48(a5)
    8000151c:	000700e7          	jalr	a4
    timeSliceCounter=0;
    80001520:	0004b423          	sd	zero,8(s1)
    running->changeState(FINISHED);
    80001524:	0004b783          	ld	a5,0(s1)
    uint64  getSleepingTime() const {return sleepingTime;}
    static void decreaseSleepingTime() {if(sleepyHead) sleepyHead->sleepingTime--;}
    bool isSleeping() const { return state==SLEEPING;}
    bool isSuspended() const {return state==SUSPENDED;}
    void setMainOrConsole(bool mc) { mainOrConsole=mc;}
    void changeState(State s) { state=s;}
    80001528:	00300713          	li	a4,3
    8000152c:	00e7a223          	sw	a4,4(a5)
    thread_exit();
    80001530:	00000097          	auipc	ra,0x0
    80001534:	dfc080e7          	jalr	-516(ra) # 8000132c <_Z11thread_exitv>
}
    80001538:	01813083          	ld	ra,24(sp)
    8000153c:	01013403          	ld	s0,16(sp)
    80001540:	00813483          	ld	s1,8(sp)
    80001544:	02010113          	addi	sp,sp,32
    80001548:	00008067          	ret

000000008000154c <_ZN3PCB8dispatchEv>:
void PCB::dispatch() {
    8000154c:	fe010113          	addi	sp,sp,-32
    80001550:	00113c23          	sd	ra,24(sp)
    80001554:	00813823          	sd	s0,16(sp)
    80001558:	00913423          	sd	s1,8(sp)
    8000155c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80001560:	0000a497          	auipc	s1,0xa
    80001564:	3004b483          	ld	s1,768(s1) # 8000b860 <_ZN3PCB7runningE>
    bool isFinished() const { return state==FINISHED;}
    80001568:	0044a783          	lw	a5,4(s1)
    if(!old->isFinished() && !old->isSleeping()&&!old->isSuspended()){
    8000156c:	00300713          	li	a4,3
    80001570:	00e78a63          	beq	a5,a4,80001584 <_ZN3PCB8dispatchEv+0x38>
    80001574:	00500713          	li	a4,5
    80001578:	00e78663          	beq	a5,a4,80001584 <_ZN3PCB8dispatchEv+0x38>
    8000157c:	00200713          	li	a4,2
    80001580:	04e79663          	bne	a5,a4,800015cc <_ZN3PCB8dispatchEv+0x80>
    running = Scheduler::get();
    80001584:	00000097          	auipc	ra,0x0
    80001588:	470080e7          	jalr	1136(ra) # 800019f4 <_ZN9Scheduler3getEv>
    8000158c:	0000a797          	auipc	a5,0xa
    80001590:	2ca7ba23          	sd	a0,724(a5) # 8000b860 <_ZN3PCB7runningE>
    if(!running)
    80001594:	02050263          	beqz	a0,800015b8 <_ZN3PCB8dispatchEv+0x6c>
    running->state=RUNNING;
    80001598:	00100793          	li	a5,1
    8000159c:	00f52223          	sw	a5,4(a0) # 1004 <_entry-0x7fffeffc>
    PCB::contextSwitch(&old->context,&running->context);
    800015a0:	0000a597          	auipc	a1,0xa
    800015a4:	2c05b583          	ld	a1,704(a1) # 8000b860 <_ZN3PCB7runningE>
    800015a8:	01858593          	addi	a1,a1,24
    800015ac:	01848513          	addi	a0,s1,24
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	c70080e7          	jalr	-912(ra) # 80001220 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800015b8:	01813083          	ld	ra,24(sp)
    800015bc:	01013403          	ld	s0,16(sp)
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret
        Scheduler::put(old);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	468080e7          	jalr	1128(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
    800015d8:	fadff06f          	j	80001584 <_ZN3PCB8dispatchEv+0x38>

00000000800015dc <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00113423          	sd	ra,8(sp)
    800015e4:	00813023          	sd	s0,0(sp)
    800015e8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800015ec:	00002097          	auipc	ra,0x2
    800015f0:	958080e7          	jalr	-1704(ra) # 80002f44 <_ZN15MemoryAllocator7kmallocEm>
}
    800015f4:	00813083          	ld	ra,8(sp)
    800015f8:	00013403          	ld	s0,0(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_ZN3PCBdlEPv>:

void PCB::operator delete(void * ptr) {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00113423          	sd	ra,8(sp)
    8000160c:	00813023          	sd	s0,0(sp)
    80001610:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(ptr);
    80001614:	00002097          	auipc	ra,0x2
    80001618:	958080e7          	jalr	-1704(ra) # 80002f6c <_ZN15MemoryAllocator5kfreeEPv>
}
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN3PCB13threadCreateHEv>:

void PCB::threadCreateH() {
    8000162c:	fd010113          	addi	sp,sp,-48
    80001630:	02113423          	sd	ra,40(sp)
    80001634:	02813023          	sd	s0,32(sp)
    80001638:	00913c23          	sd	s1,24(sp)
    8000163c:	01213823          	sd	s2,16(sp)
    80001640:	01313423          	sd	s3,8(sp)
    80001644:	03010413          	addi	s0,sp,48
    PCB** handle;
    uint64 start_routine;
    uint64 arg;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    80001648:	00058493          	mv	s1,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    8000164c:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(arg));
    80001650:	00068913          	mv	s2,a3
    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) arg, (void *) regA4, DEFAULT_TIME_SLICE);
    80001654:	05800513          	li	a0,88
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	f84080e7          	jalr	-124(ra) # 800015dc <_ZN3PCBnwEm>
    80001660:	0000a797          	auipc	a5,0xa
    80001664:	2107b783          	ld	a5,528(a5) # 8000b870 <_ZN3PCB5regA4E>
        arg(arg)
    80001668:	00050023          	sb	zero,0(a0)
    8000166c:	00052223          	sw	zero,4(a0)
    80001670:	01353423          	sd	s3,8(a0)
    80001674:	00f53823          	sd	a5,16(a0)
    80001678:	00000717          	auipc	a4,0x0
    8000167c:	e7470713          	addi	a4,a4,-396 # 800014ec <_ZN3PCB13threadWrapperEv>
    80001680:	00e53c23          	sd	a4,24(a0)
            (uint64) ((char *) stack + DEFAULT_STACK_SIZE)
    80001684:	00001737          	lui	a4,0x1
    80001688:	00e787b3          	add	a5,a5,a4
        arg(arg)
    8000168c:	02f53023          	sd	a5,32(a0)
    80001690:	00200793          	li	a5,2
    80001694:	02f53423          	sd	a5,40(a0)
    80001698:	03253823          	sd	s2,48(a0)
    8000169c:	02053c23          	sd	zero,56(a0)
    800016a0:	04053023          	sd	zero,64(a0)
    800016a4:	04050423          	sb	zero,72(a0)

    (*handle)=newPCB;
    800016a8:	00a4b023          	sd	a0,0(s1)

    if(!newPCB)
    800016ac:	04050463          	beqz	a0,800016f4 <_ZN3PCB13threadCreateHEv+0xc8>
    void start() { Scheduler::put(this);}
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	388080e7          	jalr	904(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else{
        newPCB->start();
        __asm__ volatile("li a0, 0");
    800016b8:	00000513          	li	a0,0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline void Riscv::w_a0_sscratch() {
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800016bc:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800016c0:	0000a717          	auipc	a4,0xa
    800016c4:	1a073703          	ld	a4,416(a4) # 8000b860 <_ZN3PCB7runningE>
    800016c8:	05073703          	ld	a4,80(a4)
    800016cc:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800016d0:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800016d4:	00078593          	mv	a1,a5
    }
    Riscv::w_a0_sscratch();
}
    800016d8:	02813083          	ld	ra,40(sp)
    800016dc:	02013403          	ld	s0,32(sp)
    800016e0:	01813483          	ld	s1,24(sp)
    800016e4:	01013903          	ld	s2,16(sp)
    800016e8:	00813983          	ld	s3,8(sp)
    800016ec:	03010113          	addi	sp,sp,48
    800016f0:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    800016f4:	fff00513          	li	a0,-1
    800016f8:	fc5ff06f          	j	800016bc <_ZN3PCB13threadCreateHEv+0x90>

00000000800016fc <_ZN3PCB11threadExitHEv>:

void PCB::threadExitH() {
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00113423          	sd	ra,8(sp)
    80001704:	00813023          	sd	s0,0(sp)
    80001708:	01010413          	addi	s0,sp,16
    dispatch();
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	e40080e7          	jalr	-448(ra) # 8000154c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80001714:	00000513          	li	a0,0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80001718:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    8000171c:	0000a717          	auipc	a4,0xa
    80001720:	14473703          	ld	a4,324(a4) # 8000b860 <_ZN3PCB7runningE>
    80001724:	05073703          	ld	a4,80(a4)
    80001728:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    8000172c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80001730:	00078593          	mv	a1,a5
    Riscv::w_a0_sscratch();
}
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_ZN3PCB15threadDispatchHEv>:

void PCB::threadDispatchH() {
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00113423          	sd	ra,8(sp)
    8000174c:	00813023          	sd	s0,0(sp)
    80001750:	01010413          	addi	s0,sp,16
    timeSliceCounter=0;
    80001754:	0000a797          	auipc	a5,0xa
    80001758:	1007ba23          	sd	zero,276(a5) # 8000b868 <_ZN3PCB16timeSliceCounterE>
    dispatch();
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	df0080e7          	jalr	-528(ra) # 8000154c <_ZN3PCB8dispatchEv>
}
    80001764:	00813083          	ld	ra,8(sp)
    80001768:	00013403          	ld	s0,0(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_ZN3PCB11threadJoinHEv>:

void PCB::threadJoinH() {
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00113423          	sd	ra,8(sp)
    8000177c:	00813023          	sd	s0,0(sp)
    80001780:	01010413          	addi	s0,sp,16
    void changeState(State s) { state=s;}
    80001784:	0000a797          	auipc	a5,0xa
    80001788:	0dc7b783          	ld	a5,220(a5) # 8000b860 <_ZN3PCB7runningE>
    8000178c:	00200713          	li	a4,2
    80001790:	00e7a223          	sw	a4,4(a5)
    running->changeState(SUSPENDED);
    dispatch();
    80001794:	00000097          	auipc	ra,0x0
    80001798:	db8080e7          	jalr	-584(ra) # 8000154c <_ZN3PCB8dispatchEv>
}
    8000179c:	00813083          	ld	ra,8(sp)
    800017a0:	00013403          	ld	s0,0(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_ZN3PCBD1Ev>:
    dispatch();
    __asm__ volatile("li a0, 0");
    Riscv::w_a0_sscratch();
}

PCB::~PCB() {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00113423          	sd	ra,8(sp)
    800017b4:	00813023          	sd	s0,0(sp)
    800017b8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(stack);
    800017bc:	01053503          	ld	a0,16(a0)
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	7ac080e7          	jalr	1964(ra) # 80002f6c <_ZN15MemoryAllocator5kfreeEPv>
}
    800017c8:	00813083          	ld	ra,8(sp)
    800017cc:	00013403          	ld	s0,0(sp)
    800017d0:	01010113          	addi	sp,sp,16
    800017d4:	00008067          	ret

00000000800017d8 <_ZN3PCB12insertSleepyEv>:

void PCB::insertSleepy() {
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00813423          	sd	s0,8(sp)
    800017e0:	01010413          	addi	s0,sp,16
    running->changeState(SLEEPING);
    800017e4:	0000a797          	auipc	a5,0xa
    800017e8:	07c78793          	addi	a5,a5,124 # 8000b860 <_ZN3PCB7runningE>
    800017ec:	0007b703          	ld	a4,0(a5)
    800017f0:	00500693          	li	a3,5
    800017f4:	00d72223          	sw	a3,4(a4)
    PCB *prev= nullptr;
    for(PCB* curr = sleepyHead; curr; curr=curr->nextSleepy){
    800017f8:	0187b783          	ld	a5,24(a5)
    PCB *prev= nullptr;
    800017fc:	00000593          	li	a1,0
    for(PCB* curr = sleepyHead; curr; curr=curr->nextSleepy){
    80001800:	02078e63          	beqz	a5,8000183c <_ZN3PCB12insertSleepyEv+0x64>
    uint64  getSleepingTime() const {return sleepingTime;}
    80001804:	0387b603          	ld	a2,56(a5)
        if(curr->getSleepingTime()  > running->getSleepingTime()){
    80001808:	0000a697          	auipc	a3,0xa
    8000180c:	0586b683          	ld	a3,88(a3) # 8000b860 <_ZN3PCB7runningE>
    80001810:	0386b703          	ld	a4,56(a3)
    80001814:	00c76c63          	bltu	a4,a2,8000182c <_ZN3PCB12insertSleepyEv+0x54>
            running->nextSleepy=curr;
            running->nextSleepy->setSleepingTime(running->nextSleepy->getSleepingTime()-running->getSleepingTime());
            break;
        }
        running->setSleepingTime(running->getSleepingTime()-curr->getSleepingTime());
    80001818:	40c70733          	sub	a4,a4,a2
    void setSleepingTime(uint64 t) { sleepingTime=t;}
    8000181c:	02e6bc23          	sd	a4,56(a3)
        prev=curr;
    80001820:	00078593          	mv	a1,a5
    for(PCB* curr = sleepyHead; curr; curr=curr->nextSleepy){
    80001824:	0407b783          	ld	a5,64(a5)
    80001828:	fd9ff06f          	j	80001800 <_ZN3PCB12insertSleepyEv+0x28>
            running->nextSleepy=curr;
    8000182c:	04f6b023          	sd	a5,64(a3)
    uint64  getSleepingTime() const {return sleepingTime;}
    80001830:	0387b683          	ld	a3,56(a5)
            running->nextSleepy->setSleepingTime(running->nextSleepy->getSleepingTime()-running->getSleepingTime());
    80001834:	40e68733          	sub	a4,a3,a4
    void setSleepingTime(uint64 t) { sleepingTime=t;}
    80001838:	02e7bc23          	sd	a4,56(a5)
    }
    if(!prev)
    8000183c:	00058e63          	beqz	a1,80001858 <_ZN3PCB12insertSleepyEv+0x80>
        sleepyHead=running;
    else
        prev->nextSleepy=running;
    80001840:	0000a797          	auipc	a5,0xa
    80001844:	0207b783          	ld	a5,32(a5) # 8000b860 <_ZN3PCB7runningE>
    80001848:	04f5b023          	sd	a5,64(a1)
}
    8000184c:	00813403          	ld	s0,8(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret
        sleepyHead=running;
    80001858:	0000a797          	auipc	a5,0xa
    8000185c:	00878793          	addi	a5,a5,8 # 8000b860 <_ZN3PCB7runningE>
    80001860:	0007b703          	ld	a4,0(a5)
    80001864:	00e7bc23          	sd	a4,24(a5)
    80001868:	fe5ff06f          	j	8000184c <_ZN3PCB12insertSleepyEv+0x74>

000000008000186c <_ZN3PCB10timeSleepHEv>:
void PCB::timeSleepH() {
    8000186c:	fe010113          	addi	sp,sp,-32
    80001870:	00113c23          	sd	ra,24(sp)
    80001874:	00813823          	sd	s0,16(sp)
    80001878:	00913423          	sd	s1,8(sp)
    8000187c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80001880:	00058713          	mv	a4,a1
    timeSliceCounter=0;
    80001884:	0000a497          	auipc	s1,0xa
    80001888:	fdc48493          	addi	s1,s1,-36 # 8000b860 <_ZN3PCB7runningE>
    8000188c:	0004b423          	sd	zero,8(s1)
    running->setSleepingTime(time);
    80001890:	0004b783          	ld	a5,0(s1)
    80001894:	02e7bc23          	sd	a4,56(a5)
    insertSleepy();
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	f40080e7          	jalr	-192(ra) # 800017d8 <_ZN3PCB12insertSleepyEv>
    dispatch();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	cac080e7          	jalr	-852(ra) # 8000154c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800018a8:	00000513          	li	a0,0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800018ac:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800018b0:	0004b703          	ld	a4,0(s1)
    800018b4:	05073703          	ld	a4,80(a4)
    800018b8:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800018bc:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800018c0:	00078593          	mv	a1,a5
}
    800018c4:	01813083          	ld	ra,24(sp)
    800018c8:	01013403          	ld	s0,16(sp)
    800018cc:	00813483          	ld	s1,8(sp)
    800018d0:	02010113          	addi	sp,sp,32
    800018d4:	00008067          	ret

00000000800018d8 <_ZN3PCB12removeSleepyEv>:

void PCB::removeSleepy() {
    800018d8:	fe010113          	addi	sp,sp,-32
    800018dc:	00113c23          	sd	ra,24(sp)
    800018e0:	00813823          	sd	s0,16(sp)
    800018e4:	00913423          	sd	s1,8(sp)
    800018e8:	02010413          	addi	s0,sp,32
    if(!sleepyHead)
    800018ec:	0000a497          	auipc	s1,0xa
    800018f0:	f8c4b483          	ld	s1,-116(s1) # 8000b878 <_ZN3PCB10sleepyHeadE>
    800018f4:	00048e63          	beqz	s1,80001910 <_ZN3PCB12removeSleepyEv+0x38>
        return;
    PCB* curr;
    PCB *prev = nullptr;
    800018f8:	00000513          	li	a0,0
    800018fc:	03c0006f          	j	80001938 <_ZN3PCB12removeSleepyEv+0x60>
            prev->nextSleepy = nullptr;
            Scheduler::put(prev);
        }
        prev=curr;
    }
    if(prev){
    80001900:	00050863          	beqz	a0,80001910 <_ZN3PCB12removeSleepyEv+0x38>
        prev->nextSleepy=nullptr;
    80001904:	04053023          	sd	zero,64(a0)
        Scheduler::put(prev);
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	130080e7          	jalr	304(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
    }
}
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	02010113          	addi	sp,sp,32
    80001920:	00008067          	ret
    for(curr = sleepyHead; curr && !curr->getSleepingTime();curr=curr->nextSleepy, sleepyHead=curr){
    80001924:	0404b783          	ld	a5,64(s1)
    80001928:	0000a717          	auipc	a4,0xa
    8000192c:	f4f73823          	sd	a5,-176(a4) # 8000b878 <_ZN3PCB10sleepyHeadE>
        prev=curr;
    80001930:	00048513          	mv	a0,s1
    for(curr = sleepyHead; curr && !curr->getSleepingTime();curr=curr->nextSleepy, sleepyHead=curr){
    80001934:	00078493          	mv	s1,a5
    80001938:	fc0484e3          	beqz	s1,80001900 <_ZN3PCB12removeSleepyEv+0x28>
    uint64  getSleepingTime() const {return sleepingTime;}
    8000193c:	0384b783          	ld	a5,56(s1)
    80001940:	fc0790e3          	bnez	a5,80001900 <_ZN3PCB12removeSleepyEv+0x28>
        if(prev) {
    80001944:	fe0500e3          	beqz	a0,80001924 <_ZN3PCB12removeSleepyEv+0x4c>
            prev->nextSleepy = nullptr;
    80001948:	04053023          	sd	zero,64(a0)
            Scheduler::put(prev);
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	0ec080e7          	jalr	236(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
    80001954:	fd1ff06f          	j	80001924 <_ZN3PCB12removeSleepyEv+0x4c>

0000000080001958 <_ZN3PCB12changeRegimeEv>:

void PCB::changeRegime() {
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00813423          	sd	s0,8(sp)
    80001960:	01010413          	addi	s0,sp,16
    if(mainOrConsole)
    80001964:	04854783          	lbu	a5,72(a0)
    80001968:	00078c63          	beqz	a5,80001980 <_ZN3PCB12changeRegimeEv+0x28>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000196c:	10000793          	li	a5,256
    80001970:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80001974:	00813403          	ld	s0,8(sp)
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001980:	10000793          	li	a5,256
    80001984:	1007b073          	csrc	sstatus,a5
    80001988:	fedff06f          	j	80001974 <_ZN3PCB12changeRegimeEv+0x1c>

000000008000198c <_Z8userMainv>:
#include "../test/ConsumerProducer_C_API_test.hpp"
#include "../test/ThreadSleep_C_API_test.hpp"
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp"
#include "../test/ConsumerProducer_CPP_API_test.hpp"

void userMain(){
    8000198c:	ff010113          	addi	sp,sp,-16
    80001990:	00113423          	sd	ra,8(sp)
    80001994:	00813023          	sd	s0,0(sp)
    80001998:	01010413          	addi	s0,sp,16
    //System_Mode_test();
    //Threads_CPP_API_test();
    //producerConsumer_C_API();
    //producerConsumer_CPP_Sync_API();
    //testSleeping();
    testConsumerProducer();
    8000199c:	00002097          	auipc	ra,0x2
    800019a0:	7a0080e7          	jalr	1952(ra) # 8000413c <_Z20testConsumerProducerv>
    800019a4:	00813083          	ld	ra,8(sp)
    800019a8:	00013403          	ld	s0,0(sp)
    800019ac:	01010113          	addi	sp,sp,16
    800019b0:	00008067          	ret

00000000800019b4 <_Z41__static_initialization_and_destruction_0ii>:
    return readyQueue.removeFirst();
}

void Scheduler::put(PCB *pcb) {
    readyQueue.insertLast(pcb);
}
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00813423          	sd	s0,8(sp)
    800019bc:	01010413          	addi	s0,sp,16
    800019c0:	00100793          	li	a5,1
    800019c4:	00f50863          	beq	a0,a5,800019d4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800019c8:	00813403          	ld	s0,8(sp)
    800019cc:	01010113          	addi	sp,sp,16
    800019d0:	00008067          	ret
    800019d4:	000107b7          	lui	a5,0x10
    800019d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800019dc:	fef596e3          	bne	a1,a5,800019c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

    Elem* head, *tail;
    void * operator new(size_t);
    void operator delete(void *);
public:
    Queue(): head(nullptr), tail(nullptr){}
    800019e0:	0000a797          	auipc	a5,0xa
    800019e4:	ea078793          	addi	a5,a5,-352 # 8000b880 <_ZN9Scheduler10readyQueueE>
    800019e8:	0007b023          	sd	zero,0(a5)
    800019ec:	0007b423          	sd	zero,8(a5)
    800019f0:	fd9ff06f          	j	800019c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800019f4 <_ZN9Scheduler3getEv>:
PCB *Scheduler::get() {
    800019f4:	ff010113          	addi	sp,sp,-16
    800019f8:	00813423          	sd	s0,8(sp)
    800019fc:	01010413          	addi	s0,sp,16
        else
            head=tail=e;
    }

    T* removeFirst(){
        if(!head)
    80001a00:	0000a517          	auipc	a0,0xa
    80001a04:	e8053503          	ld	a0,-384(a0) # 8000b880 <_ZN9Scheduler10readyQueueE>
    80001a08:	00050c63          	beqz	a0,80001a20 <_ZN9Scheduler3getEv+0x2c>
            return nullptr;
        Elem* e = head;
        head = head->next;
    80001a0c:	00853783          	ld	a5,8(a0)
    80001a10:	0000a717          	auipc	a4,0xa
    80001a14:	e6f73823          	sd	a5,-400(a4) # 8000b880 <_ZN9Scheduler10readyQueueE>
        if(!head)
    80001a18:	00078a63          	beqz	a5,80001a2c <_ZN9Scheduler3getEv+0x38>
            tail=nullptr;
        T* ret = e->data;
    80001a1c:	00053503          	ld	a0,0(a0)
}
    80001a20:	00813403          	ld	s0,8(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00008067          	ret
            tail=nullptr;
    80001a2c:	0000a797          	auipc	a5,0xa
    80001a30:	e407be23          	sd	zero,-420(a5) # 8000b888 <_ZN9Scheduler10readyQueueE+0x8>
    80001a34:	fe9ff06f          	j	80001a1c <_ZN9Scheduler3getEv+0x28>

0000000080001a38 <_ZN9Scheduler3putEP3PCB>:
void Scheduler::put(PCB *pcb) {
    80001a38:	fe010113          	addi	sp,sp,-32
    80001a3c:	00113c23          	sd	ra,24(sp)
    80001a40:	00813823          	sd	s0,16(sp)
    80001a44:	00913423          	sd	s1,8(sp)
    80001a48:	02010413          	addi	s0,sp,32
    80001a4c:	00050493          	mv	s1,a0
        Elem* e = new Elem(data, nullptr);
    80001a50:	01000513          	li	a0,16
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	084080e7          	jalr	132(ra) # 80001ad8 <_ZN5QueueI3PCBE4ElemnwEm>
        Elem(T* data, Elem* next): data(data), next(next){}
    80001a5c:	00953023          	sd	s1,0(a0)
    80001a60:	00053423          	sd	zero,8(a0)
        if(tail){
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	e247b783          	ld	a5,-476(a5) # 8000b888 <_ZN9Scheduler10readyQueueE+0x8>
    80001a6c:	02078263          	beqz	a5,80001a90 <_ZN9Scheduler3putEP3PCB+0x58>
            tail->next=e;
    80001a70:	00a7b423          	sd	a0,8(a5)
            tail=e;
    80001a74:	0000a797          	auipc	a5,0xa
    80001a78:	e0a7ba23          	sd	a0,-492(a5) # 8000b888 <_ZN9Scheduler10readyQueueE+0x8>
}
    80001a7c:	01813083          	ld	ra,24(sp)
    80001a80:	01013403          	ld	s0,16(sp)
    80001a84:	00813483          	ld	s1,8(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret
            head=tail=e;
    80001a90:	0000a797          	auipc	a5,0xa
    80001a94:	df078793          	addi	a5,a5,-528 # 8000b880 <_ZN9Scheduler10readyQueueE>
    80001a98:	00a7b423          	sd	a0,8(a5)
    80001a9c:	00a7b023          	sd	a0,0(a5)
    80001aa0:	fddff06f          	j	80001a7c <_ZN9Scheduler3putEP3PCB+0x44>

0000000080001aa4 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00113423          	sd	ra,8(sp)
    80001aac:	00813023          	sd	s0,0(sp)
    80001ab0:	01010413          	addi	s0,sp,16
    80001ab4:	000105b7          	lui	a1,0x10
    80001ab8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001abc:	00100513          	li	a0,1
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	ef4080e7          	jalr	-268(ra) # 800019b4 <_Z41__static_initialization_and_destruction_0ii>
    80001ac8:	00813083          	ld	ra,8(sp)
    80001acc:	00013403          	ld	s0,0(sp)
    80001ad0:	01010113          	addi	sp,sp,16
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN5QueueI3PCBE4ElemnwEm>:
void Queue<T>::Elem::operator delete(void * ptr) {
    MemoryAllocator::kfree(ptr);
}

template<typename T>
void *Queue<T>::Elem::operator new(size_t size) {
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00113423          	sd	ra,8(sp)
    80001ae0:	00813023          	sd	s0,0(sp)
    80001ae4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	45c080e7          	jalr	1116(ra) # 80002f44 <_ZN15MemoryAllocator7kmallocEm>
}
    80001af0:	00813083          	ld	ra,8(sp)
    80001af4:	00013403          	ld	s0,0(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret

0000000080001b00 <_ZL9userMainWPv>:
#include "../h/Riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/KernelConsole.hpp"


static void userMainW(void * p){
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00113423          	sd	ra,8(sp)
    80001b08:	00813023          	sd	s0,0(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    userMain();
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	e7c080e7          	jalr	-388(ra) # 8000198c <_Z8userMainv>
}
    80001b18:	00813083          	ld	ra,8(sp)
    80001b1c:	00013403          	ld	s0,0(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <main>:

int main(){
    80001b28:	fb010113          	addi	sp,sp,-80
    80001b2c:	04113423          	sd	ra,72(sp)
    80001b30:	04813023          	sd	s0,64(sp)
    80001b34:	02913c23          	sd	s1,56(sp)
    80001b38:	03213823          	sd	s2,48(sp)
    80001b3c:	03313423          	sd	s3,40(sp)
    80001b40:	03413023          	sd	s4,32(sp)
    80001b44:	01513c23          	sd	s5,24(sp)
    80001b48:	01613823          	sd	s6,16(sp)
    80001b4c:	01713423          	sd	s7,8(sp)
    80001b50:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001b54:	0000a797          	auipc	a5,0xa
    80001b58:	c547b783          	ld	a5,-940(a5) # 8000b7a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001b5c:	10579073          	csrw	stvec,a5
    PCB* mainThr = new PCB(0,0,0,0);
    80001b60:	05800513          	li	a0,88
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	a78080e7          	jalr	-1416(ra) # 800015dc <_ZN3PCBnwEm>
        arg(arg)
    80001b6c:	00050023          	sb	zero,0(a0)
    80001b70:	00053423          	sd	zero,8(a0)
    80001b74:	00053823          	sd	zero,16(a0)
    80001b78:	0000ab17          	auipc	s6,0xa
    80001b7c:	c38b3b03          	ld	s6,-968(s6) # 8000b7b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b80:	01653c23          	sd	s6,24(a0)
    80001b84:	00001a37          	lui	s4,0x1
    80001b88:	03453023          	sd	s4,32(a0)
    80001b8c:	02053423          	sd	zero,40(a0)
    80001b90:	02053823          	sd	zero,48(a0)
    80001b94:	02053c23          	sd	zero,56(a0)
    80001b98:	04053023          	sd	zero,64(a0)
    void setMainOrConsole(bool mc) { mainOrConsole=mc;}
    80001b9c:	00100793          	li	a5,1
    80001ba0:	04f50423          	sb	a5,72(a0)
    mainThr->setMainOrConsole(true);
    PCB::running=mainThr;
    80001ba4:	0000a797          	auipc	a5,0xa
    80001ba8:	c447b783          	ld	a5,-956(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001bac:	00a7b023          	sd	a0,0(a5)
    void changeState(State s) { state=s;}
    80001bb0:	00100a93          	li	s5,1
    80001bb4:	01552223          	sw	s5,4(a0)
    mainThr->changeState(PCB::RUNNING);
    PCB* userThr = new PCB(&userMainW,0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),DEFAULT_TIME_SLICE);
    80001bb8:	00001537          	lui	a0,0x1
    80001bbc:	00001097          	auipc	ra,0x1
    80001bc0:	388080e7          	jalr	904(ra) # 80002f44 <_ZN15MemoryAllocator7kmallocEm>
    80001bc4:	00050493          	mv	s1,a0
    80001bc8:	05800513          	li	a0,88
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	a10080e7          	jalr	-1520(ra) # 800015dc <_ZN3PCBnwEm>
    80001bd4:	00050913          	mv	s2,a0
        arg(arg)
    80001bd8:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001bdc:	00052223          	sw	zero,4(a0)
    80001be0:	00000797          	auipc	a5,0x0
    80001be4:	f2078793          	addi	a5,a5,-224 # 80001b00 <_ZL9userMainWPv>
    80001be8:	00f53423          	sd	a5,8(a0)
    80001bec:	00953823          	sd	s1,16(a0)
    80001bf0:	01653c23          	sd	s6,24(a0)
            (uint64) ((char *) stack + DEFAULT_STACK_SIZE)
    80001bf4:	014484b3          	add	s1,s1,s4
        arg(arg)
    80001bf8:	02953023          	sd	s1,32(a0)
    80001bfc:	00200b93          	li	s7,2
    80001c00:	03753423          	sd	s7,40(a0)
    80001c04:	02053823          	sd	zero,48(a0)
    80001c08:	02053c23          	sd	zero,56(a0)
    80001c0c:	04053023          	sd	zero,64(a0)
    80001c10:	04050423          	sb	zero,72(a0)
    void start() { Scheduler::put(this);}
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	e24080e7          	jalr	-476(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
    userThr->start();

    KernelConsole::init();
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	5b8080e7          	jalr	1464(ra) # 800031d4 <_ZN13KernelConsole4initEv>

    PCB* consoleThr = new PCB(&KernelConsole::consoleWrapper,0,MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),DEFAULT_TIME_SLICE);
    80001c24:	00001537          	lui	a0,0x1
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	31c080e7          	jalr	796(ra) # 80002f44 <_ZN15MemoryAllocator7kmallocEm>
    80001c30:	00050993          	mv	s3,a0
    80001c34:	05800513          	li	a0,88
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	9a4080e7          	jalr	-1628(ra) # 800015dc <_ZN3PCBnwEm>
    80001c40:	00050493          	mv	s1,a0
        arg(arg)
    80001c44:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001c48:	00052223          	sw	zero,4(a0)
    80001c4c:	0000a797          	auipc	a5,0xa
    80001c50:	bac7b783          	ld	a5,-1108(a5) # 8000b7f8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80001c54:	00f53423          	sd	a5,8(a0)
    80001c58:	01353823          	sd	s3,16(a0)
    80001c5c:	01653c23          	sd	s6,24(a0)
            (uint64) ((char *) stack + DEFAULT_STACK_SIZE)
    80001c60:	014989b3          	add	s3,s3,s4
        arg(arg)
    80001c64:	03353023          	sd	s3,32(a0)
    80001c68:	03753423          	sd	s7,40(a0)
    80001c6c:	02053823          	sd	zero,48(a0)
    80001c70:	02053c23          	sd	zero,56(a0)
    80001c74:	04053023          	sd	zero,64(a0)
    void setMainOrConsole(bool mc) { mainOrConsole=mc;}
    80001c78:	05550423          	sb	s5,72(a0)
    void start() { Scheduler::put(this);}
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	dbc080e7          	jalr	-580(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c84:	100ba073          	csrs	sstatus,s7
    bool isFinished() const { return state==FINISHED;}
    80001c88:	00492703          	lw	a4,4(s2)
    consoleThr->start();

    //enable interrupts
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while(!userThr->isFinished()){
    80001c8c:	00300793          	li	a5,3
    80001c90:	00f70863          	beq	a4,a5,80001ca0 <main+0x178>
        //putc('m');
        thread_dispatch();
    80001c94:	fffff097          	auipc	ra,0xfffff
    80001c98:	6c0080e7          	jalr	1728(ra) # 80001354 <_Z15thread_dispatchv>
    while(!userThr->isFinished()){
    80001c9c:	fedff06f          	j	80001c88 <main+0x160>

    static void putcH();
    static void getcH();
public:
    static void consoleWrapper(void* p);
    static void setEnd() {toEnd=1;}
    80001ca0:	0000a797          	auipc	a5,0xa
    80001ca4:	b407b783          	ld	a5,-1216(a5) # 8000b7e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001ca8:	00100713          	li	a4,1
    80001cac:	00e78023          	sb	a4,0(a5)
    80001cb0:	0044a783          	lw	a5,4(s1)
    }
    KernelConsole::setEnd();



    while(!consoleThr->isFinished() && !consoleThr->isSuspended())
    80001cb4:	00300713          	li	a4,3
    80001cb8:	00e78c63          	beq	a5,a4,80001cd0 <main+0x1a8>
    80001cbc:	00200713          	li	a4,2
    80001cc0:	00e78863          	beq	a5,a4,80001cd0 <main+0x1a8>
    {
        thread_dispatch();
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	690080e7          	jalr	1680(ra) # 80001354 <_Z15thread_dispatchv>
    while(!consoleThr->isFinished() && !consoleThr->isSuspended())
    80001ccc:	fe5ff06f          	j	80001cb0 <main+0x188>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001cd0:	00200793          	li	a5,2
    80001cd4:	1007b073          	csrc	sstatus,a5
    }

    //disable interrupts
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    return 0;
    80001cd8:	00000513          	li	a0,0
    80001cdc:	04813083          	ld	ra,72(sp)
    80001ce0:	04013403          	ld	s0,64(sp)
    80001ce4:	03813483          	ld	s1,56(sp)
    80001ce8:	03013903          	ld	s2,48(sp)
    80001cec:	02813983          	ld	s3,40(sp)
    80001cf0:	02013a03          	ld	s4,32(sp)
    80001cf4:	01813a83          	ld	s5,24(sp)
    80001cf8:	01013b03          	ld	s6,16(sp)
    80001cfc:	00813b83          	ld	s7,8(sp)
    80001d00:	05010113          	addi	sp,sp,80
    80001d04:	00008067          	ret

0000000080001d08 <_ZN6Thread10runWrapperEPv>:
int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::runWrapper(void * thread) {
    if(thread)
    80001d08:	02050863          	beqz	a0,80001d38 <_ZN6Thread10runWrapperEPv+0x30>
void Thread::runWrapper(void * thread) {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00113423          	sd	ra,8(sp)
    80001d14:	00813023          	sd	s0,0(sp)
    80001d18:	01010413          	addi	s0,sp,16
        ((Thread*) thread)->run();
    80001d1c:	00053783          	ld	a5,0(a0)
    80001d20:	0107b783          	ld	a5,16(a5)
    80001d24:	000780e7          	jalr	a5
}
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	01010113          	addi	sp,sp,16
    80001d34:	00008067          	ret
    80001d38:	00008067          	ret

0000000080001d3c <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    if(sem_open(&myHandle,init))
        myHandle=0;
}

Semaphore::~Semaphore() {
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    //delete myHandle;
}
    80001d48:	00813403          	ld	s0,8(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    80001d64:	0000a797          	auipc	a5,0xa
    80001d68:	82478793          	addi	a5,a5,-2012 # 8000b588 <_ZTV6Thread+0x10>
    80001d6c:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    80001d70:	00853503          	ld	a0,8(a0)
    80001d74:	fffff097          	auipc	ra,0xfffff
    80001d78:	510080e7          	jalr	1296(ra) # 80001284 <_Z8mem_freePv>
}
    80001d7c:	00813083          	ld	ra,8(sp)
    80001d80:	00013403          	ld	s0,0(sp)
    80001d84:	01010113          	addi	sp,sp,16
    80001d88:	00008067          	ret

0000000080001d8c <_Znwm>:
void * operator new(size_t size){
    80001d8c:	ff010113          	addi	sp,sp,-16
    80001d90:	00113423          	sd	ra,8(sp)
    80001d94:	00813023          	sd	s0,0(sp)
    80001d98:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001d9c:	fffff097          	auipc	ra,0xfffff
    80001da0:	4b8080e7          	jalr	1208(ra) # 80001254 <_Z9mem_allocm>
}
    80001da4:	00813083          	ld	ra,8(sp)
    80001da8:	00013403          	ld	s0,0(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret

0000000080001db4 <_ZdlPv>:
void operator delete(void * ptr){
    80001db4:	ff010113          	addi	sp,sp,-16
    80001db8:	00113423          	sd	ra,8(sp)
    80001dbc:	00813023          	sd	s0,0(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	4c0080e7          	jalr	1216(ra) # 80001284 <_Z8mem_freePv>
}
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001ddc:	fe010113          	addi	sp,sp,-32
    80001de0:	00113c23          	sd	ra,24(sp)
    80001de4:	00813823          	sd	s0,16(sp)
    80001de8:	00913423          	sd	s1,8(sp)
    80001dec:	02010413          	addi	s0,sp,32
    80001df0:	00050493          	mv	s1,a0
}
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	f60080e7          	jalr	-160(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80001dfc:	00048513          	mv	a0,s1
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	fb4080e7          	jalr	-76(ra) # 80001db4 <_ZdlPv>
    80001e08:	01813083          	ld	ra,24(sp)
    80001e0c:	01013403          	ld	s0,16(sp)
    80001e10:	00813483          	ld	s1,8(sp)
    80001e14:	02010113          	addi	sp,sp,32
    80001e18:	00008067          	ret

0000000080001e1c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	01010413          	addi	s0,sp,16
}
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	f88080e7          	jalr	-120(ra) # 80001db4 <_ZdlPv>
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00813423          	sd	s0,8(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    80001e50:	00009797          	auipc	a5,0x9
    80001e54:	73878793          	addi	a5,a5,1848 # 8000b588 <_ZTV6Thread+0x10>
    80001e58:	00f53023          	sd	a5,0(a0)
    myHandle=0;
    80001e5c:	00053423          	sd	zero,8(a0)
    this->body=body;
    80001e60:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001e64:	00c53c23          	sd	a2,24(a0)
}
    80001e68:	00813403          	ld	s0,8(sp)
    80001e6c:	01010113          	addi	sp,sp,16
    80001e70:	00008067          	ret

0000000080001e74 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001e74:	ff010113          	addi	sp,sp,-16
    80001e78:	00813423          	sd	s0,8(sp)
    80001e7c:	01010413          	addi	s0,sp,16
    80001e80:	00009797          	auipc	a5,0x9
    80001e84:	70878793          	addi	a5,a5,1800 # 8000b588 <_ZTV6Thread+0x10>
    80001e88:	00f53023          	sd	a5,0(a0)
    myHandle=0;
    80001e8c:	00053423          	sd	zero,8(a0)
    body=&runWrapper;
    80001e90:	00000797          	auipc	a5,0x0
    80001e94:	e7878793          	addi	a5,a5,-392 # 80001d08 <_ZN6Thread10runWrapperEPv>
    80001e98:	00f53823          	sd	a5,16(a0)
    arg=(void*)this;
    80001e9c:	00a53c23          	sd	a0,24(a0)
}
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret

0000000080001eac <_ZN6Thread5startEv>:
    if(!myHandle)
    80001eac:	00853783          	ld	a5,8(a0)
    80001eb0:	02079c63          	bnez	a5,80001ee8 <_ZN6Thread5startEv+0x3c>
int Thread::start() {
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
        return thread_create(&myHandle,body,arg);
    80001ec4:	01853603          	ld	a2,24(a0)
    80001ec8:	01053583          	ld	a1,16(a0)
    80001ecc:	00850513          	addi	a0,a0,8
    80001ed0:	fffff097          	auipc	ra,0xfffff
    80001ed4:	3e0080e7          	jalr	992(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001ed8:	00813083          	ld	ra,8(sp)
    80001edc:	00013403          	ld	s0,0(sp)
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret
    return -1;
    80001ee8:	fff00513          	li	a0,-1
}
    80001eec:	00008067          	ret

0000000080001ef0 <_ZN6Thread4joinEv>:
    if(!myHandle)
    80001ef0:	00853503          	ld	a0,8(a0)
    80001ef4:	02050663          	beqz	a0,80001f20 <_ZN6Thread4joinEv+0x30>
void Thread::join() {
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	00813023          	sd	s0,0(sp)
    80001f04:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	46c080e7          	jalr	1132(ra) # 80001374 <_Z11thread_joinP7_thread>
}
    80001f10:	00813083          	ld	ra,8(sp)
    80001f14:	00013403          	ld	s0,0(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret
    80001f20:	00008067          	ret

0000000080001f24 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00113423          	sd	ra,8(sp)
    80001f2c:	00813023          	sd	s0,0(sp)
    80001f30:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	420080e7          	jalr	1056(ra) # 80001354 <_Z15thread_dispatchv>
}
    80001f3c:	00813083          	ld	ra,8(sp)
    80001f40:	00013403          	ld	s0,0(sp)
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret

0000000080001f4c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00113423          	sd	ra,8(sp)
    80001f54:	00813023          	sd	s0,0(sp)
    80001f58:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001f5c:	fffff097          	auipc	ra,0xfffff
    80001f60:	4f8080e7          	jalr	1272(ra) # 80001454 <_Z10time_sleepm>
}
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00813423          	sd	s0,8(sp)
    80001f7c:	01010413          	addi	s0,sp,16
}
    80001f80:	00813403          	ld	s0,8(sp)
    80001f84:	01010113          	addi	sp,sp,16
    80001f88:	00008067          	ret

0000000080001f8c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    80001f8c:	fe010113          	addi	sp,sp,-32
    80001f90:	00113c23          	sd	ra,24(sp)
    80001f94:	00813823          	sd	s0,16(sp)
    80001f98:	00913423          	sd	s1,8(sp)
    80001f9c:	01213023          	sd	s2,0(sp)
    80001fa0:	02010413          	addi	s0,sp,32
    80001fa4:	00050493          	mv	s1,a0
    80001fa8:	00058913          	mv	s2,a1
    80001fac:	00000097          	auipc	ra,0x0
    80001fb0:	ec8080e7          	jalr	-312(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80001fb4:	00009797          	auipc	a5,0x9
    80001fb8:	5a478793          	addi	a5,a5,1444 # 8000b558 <_ZTV14PeriodicThread+0x10>
    80001fbc:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80001fc0:	0324b023          	sd	s2,32(s1)
}
    80001fc4:	01813083          	ld	ra,24(sp)
    80001fc8:	01013403          	ld	s0,16(sp)
    80001fcc:	00813483          	ld	s1,8(sp)
    80001fd0:	00013903          	ld	s2,0(sp)
    80001fd4:	02010113          	addi	sp,sp,32
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN14PeriodicThread10runWrapperEPv>:
    if(thread)
    80001fdc:	02050863          	beqz	a0,8000200c <_ZN14PeriodicThread10runWrapperEPv+0x30>
void PeriodicThread::runWrapper(void * thread) {
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00113423          	sd	ra,8(sp)
    80001fe8:	00813023          	sd	s0,0(sp)
    80001fec:	01010413          	addi	s0,sp,16
        ((PeriodicThread*) thread)->run();
    80001ff0:	00053783          	ld	a5,0(a0)
    80001ff4:	0107b783          	ld	a5,16(a5)
    80001ff8:	000780e7          	jalr	a5
}
    80001ffc:	00813083          	ld	ra,8(sp)
    80002000:	00013403          	ld	s0,0(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret
    8000200c:	00008067          	ret

0000000080002010 <_ZN7Console4getcEv>:
char Console::getc() {
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00113423          	sd	ra,8(sp)
    80002018:	00813023          	sd	s0,0(sp)
    8000201c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002020:	fffff097          	auipc	ra,0xfffff
    80002024:	484080e7          	jalr	1156(ra) # 800014a4 <_Z4getcv>
}
    80002028:	00813083          	ld	ra,8(sp)
    8000202c:	00013403          	ld	s0,0(sp)
    80002030:	01010113          	addi	sp,sp,16
    80002034:	00008067          	ret

0000000080002038 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002038:	ff010113          	addi	sp,sp,-16
    8000203c:	00113423          	sd	ra,8(sp)
    80002040:	00813023          	sd	s0,0(sp)
    80002044:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	438080e7          	jalr	1080(ra) # 80001480 <_Z4putcc>
}
    80002050:	00813083          	ld	ra,8(sp)
    80002054:	00013403          	ld	s0,0(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002060:	fe010113          	addi	sp,sp,-32
    80002064:	00113c23          	sd	ra,24(sp)
    80002068:	00813823          	sd	s0,16(sp)
    8000206c:	00913423          	sd	s1,8(sp)
    80002070:	02010413          	addi	s0,sp,32
    80002074:	00050493          	mv	s1,a0
    80002078:	00009797          	auipc	a5,0x9
    8000207c:	53878793          	addi	a5,a5,1336 # 8000b5b0 <_ZTV9Semaphore+0x10>
    80002080:	00f53023          	sd	a5,0(a0)
    if(sem_open(&myHandle,init))
    80002084:	00850513          	addi	a0,a0,8
    80002088:	fffff097          	auipc	ra,0xfffff
    8000208c:	310080e7          	jalr	784(ra) # 80001398 <_Z8sem_openPP4_semj>
    80002090:	00050463          	beqz	a0,80002098 <_ZN9SemaphoreC1Ej+0x38>
        myHandle=0;
    80002094:	0004b423          	sd	zero,8(s1)
}
    80002098:	01813083          	ld	ra,24(sp)
    8000209c:	01013403          	ld	s0,16(sp)
    800020a0:	00813483          	ld	s1,8(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret

00000000800020ac <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if(!myHandle)
    800020ac:	00853503          	ld	a0,8(a0)
    800020b0:	02050663          	beqz	a0,800020dc <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800020b4:	ff010113          	addi	sp,sp,-16
    800020b8:	00113423          	sd	ra,8(sp)
    800020bc:	00813023          	sd	s0,0(sp)
    800020c0:	01010413          	addi	s0,sp,16
        return -1;
    return sem_wait(myHandle);
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	338080e7          	jalr	824(ra) # 800013fc <_Z8sem_waitP4_sem>
}
    800020cc:	00813083          	ld	ra,8(sp)
    800020d0:	00013403          	ld	s0,0(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret
        return -1;
    800020dc:	fff00513          	li	a0,-1
}
    800020e0:	00008067          	ret

00000000800020e4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if(!myHandle)
    800020e4:	00853503          	ld	a0,8(a0)
    800020e8:	02050663          	beqz	a0,80002114 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
        return -1;
    return sem_signal(myHandle);
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	32c080e7          	jalr	812(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    80002104:	00813083          	ld	ra,8(sp)
    80002108:	00013403          	ld	s0,0(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret
        return -1;
    80002114:	fff00513          	li	a0,-1
}
    80002118:	00008067          	ret

000000008000211c <_ZN6Thread3runEv>:
    void join();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run() {}
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00813423          	sd	s0,8(sp)
    8000213c:	01010413          	addi	s0,sp,16
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret

000000008000214c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00113423          	sd	ra,8(sp)
    80002154:	00813023          	sd	s0,0(sp)
    80002158:	01010413          	addi	s0,sp,16
    8000215c:	00009797          	auipc	a5,0x9
    80002160:	3fc78793          	addi	a5,a5,1020 # 8000b558 <_ZTV14PeriodicThread+0x10>
    80002164:	00f53023          	sd	a5,0(a0)
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	bec080e7          	jalr	-1044(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00013403          	ld	s0,0(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret

0000000080002180 <_ZN14PeriodicThreadD0Ev>:
    80002180:	fe010113          	addi	sp,sp,-32
    80002184:	00113c23          	sd	ra,24(sp)
    80002188:	00813823          	sd	s0,16(sp)
    8000218c:	00913423          	sd	s1,8(sp)
    80002190:	02010413          	addi	s0,sp,32
    80002194:	00050493          	mv	s1,a0
    80002198:	00009797          	auipc	a5,0x9
    8000219c:	3c078793          	addi	a5,a5,960 # 8000b558 <_ZTV14PeriodicThread+0x10>
    800021a0:	00f53023          	sd	a5,0(a0)
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	bb0080e7          	jalr	-1104(ra) # 80001d54 <_ZN6ThreadD1Ev>
    800021ac:	00048513          	mv	a0,s1
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	c04080e7          	jalr	-1020(ra) # 80001db4 <_ZdlPv>
    800021b8:	01813083          	ld	ra,24(sp)
    800021bc:	01013403          	ld	s0,16(sp)
    800021c0:	00813483          	ld	s1,8(sp)
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret

00000000800021cc <_ZN15KernelSemaphoreD1Ev>:
    PCB* newRunning = blockedThreadsQueue.removeFirst();
    newRunning->state=PCB::READY;
    Scheduler::put(newRunning);
}

KernelSemaphore::~KernelSemaphore() {
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32
    800021e0:	00050493          	mv	s1,a0
    800021e4:	00009797          	auipc	a5,0x9
    800021e8:	3ec78793          	addi	a5,a5,1004 # 8000b5d0 <_ZTV15KernelSemaphore+0x10>
    800021ec:	00f53023          	sd	a5,0(a0)
    800021f0:	01c0006f          	j	8000220c <_ZN15KernelSemaphoreD1Ev+0x40>
        if(!head)
            return nullptr;
        Elem* e = head;
        head = head->next;
        if(!head)
            tail=nullptr;
    800021f4:	0004bc23          	sd	zero,24(s1)
        T* ret = e->data;
    800021f8:	0007b503          	ld	a0,0(a5)
    while(blockedThreadsQueue.peekFirst()){
        PCB* pcb = blockedThreadsQueue.removeFirst();
        pcb->rcs=1;
    800021fc:	00100793          	li	a5,1
    80002200:	00f50023          	sb	a5,0(a0)
        Scheduler::put(pcb);
    80002204:	00000097          	auipc	ra,0x0
    80002208:	834080e7          	jalr	-1996(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
        //delete e;
        return ret;
    }

    T* peekFirst(){
        if(!head)
    8000220c:	0104b783          	ld	a5,16(s1)
    80002210:	00078e63          	beqz	a5,8000222c <_ZN15KernelSemaphoreD1Ev+0x60>
            return nullptr;
        return head->data;
    80002214:	0007b703          	ld	a4,0(a5)
    while(blockedThreadsQueue.peekFirst()){
    80002218:	00070a63          	beqz	a4,8000222c <_ZN15KernelSemaphoreD1Ev+0x60>
        head = head->next;
    8000221c:	0087b703          	ld	a4,8(a5)
    80002220:	00e4b823          	sd	a4,16(s1)
        if(!head)
    80002224:	fc071ae3          	bnez	a4,800021f8 <_ZN15KernelSemaphoreD1Ev+0x2c>
    80002228:	fcdff06f          	j	800021f4 <_ZN15KernelSemaphoreD1Ev+0x28>
    }
}
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret

0000000080002240 <_ZN15KernelSemaphore7unblockEv>:
void KernelSemaphore::unblock() {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
    80002250:	00050793          	mv	a5,a0
        if(!head)
    80002254:	01053503          	ld	a0,16(a0)
    80002258:	00050a63          	beqz	a0,8000226c <_ZN15KernelSemaphore7unblockEv+0x2c>
        head = head->next;
    8000225c:	00853703          	ld	a4,8(a0)
    80002260:	00e7b823          	sd	a4,16(a5)
        if(!head)
    80002264:	02070263          	beqz	a4,80002288 <_ZN15KernelSemaphore7unblockEv+0x48>
        T* ret = e->data;
    80002268:	00053503          	ld	a0,0(a0)
    newRunning->state=PCB::READY;
    8000226c:	00052223          	sw	zero,4(a0)
    Scheduler::put(newRunning);
    80002270:	fffff097          	auipc	ra,0xfffff
    80002274:	7c8080e7          	jalr	1992(ra) # 80001a38 <_ZN9Scheduler3putEP3PCB>
}
    80002278:	00813083          	ld	ra,8(sp)
    8000227c:	00013403          	ld	s0,0(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret
            tail=nullptr;
    80002288:	0007bc23          	sd	zero,24(a5)
    8000228c:	fddff06f          	j	80002268 <_ZN15KernelSemaphore7unblockEv+0x28>

0000000080002290 <_ZN15KernelSemaphore6signalEv>:
    if(val++ < 0)
    80002290:	00852783          	lw	a5,8(a0)
    80002294:	0017871b          	addiw	a4,a5,1
    80002298:	00e52423          	sw	a4,8(a0)
    8000229c:	0007c663          	bltz	a5,800022a8 <_ZN15KernelSemaphore6signalEv+0x18>
}
    800022a0:	00000513          	li	a0,0
    800022a4:	00008067          	ret
uint64 KernelSemaphore::signal() {
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00113423          	sd	ra,8(sp)
    800022b0:	00813023          	sd	s0,0(sp)
    800022b4:	01010413          	addi	s0,sp,16
        unblock();
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	f88080e7          	jalr	-120(ra) # 80002240 <_ZN15KernelSemaphore7unblockEv>
}
    800022c0:	00000513          	li	a0,0
    800022c4:	00813083          	ld	ra,8(sp)
    800022c8:	00013403          	ld	s0,0(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZN15KernelSemaphore9semCloseHEv>:

}

void KernelSemaphore::semCloseH() {
    KernelSemaphore* handle;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    800022d4:	00058513          	mv	a0,a1
    delete handle;
    800022d8:	04050a63          	beqz	a0,8000232c <_ZN15KernelSemaphore9semCloseHEv+0x58>
void KernelSemaphore::semCloseH() {
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    delete handle;
    800022ec:	00053783          	ld	a5,0(a0)
    800022f0:	0087b783          	ld	a5,8(a5)
    800022f4:	000780e7          	jalr	a5
    __asm__ volatile("li a0, 0");
    800022f8:	00000513          	li	a0,0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
}

inline void Riscv::w_a0_sscratch() {
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800022fc:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002300:	00009717          	auipc	a4,0x9
    80002304:	4e873703          	ld	a4,1256(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002308:	00073703          	ld	a4,0(a4)
    8000230c:	05073703          	ld	a4,80(a4)
    80002310:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002314:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002318:	00078593          	mv	a1,a5
    Riscv::w_a0_sscratch();
}
    8000231c:	00813083          	ld	ra,8(sp)
    80002320:	00013403          	ld	s0,0(sp)
    80002324:	01010113          	addi	sp,sp,16
    80002328:	00008067          	ret
    __asm__ volatile("li a0, 0");
    8000232c:	00000513          	li	a0,0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002330:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002334:	00009717          	auipc	a4,0x9
    80002338:	4b473703          	ld	a4,1204(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000233c:	00073703          	ld	a4,0(a4)
    80002340:	05073703          	ld	a4,80(a4)
    80002344:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002348:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    8000234c:	00078593          	mv	a1,a5
    80002350:	00008067          	ret

0000000080002354 <_ZN15KernelSemaphore10semSignalHEv>:
    Riscv::w_a0_sscratch();
}

void KernelSemaphore::semSignalH() {
    KernelSemaphore* handle;
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    80002354:	00058513          	mv	a0,a1
    if(handle){
    80002358:	04050863          	beqz	a0,800023a8 <_ZN15KernelSemaphore10semSignalHEv+0x54>
void KernelSemaphore::semSignalH() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
        handle->signal();
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	f24080e7          	jalr	-220(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>
        __asm__ volatile("li a0, 0");
    80002374:	00000513          	li	a0,0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002378:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    8000237c:	00009717          	auipc	a4,0x9
    80002380:	46c73703          	ld	a4,1132(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002384:	00073703          	ld	a4,0(a4)
    80002388:	05073703          	ld	a4,80(a4)
    8000238c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002390:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002394:	00078593          	mv	a1,a5
    }
    else{
        __asm__ volatile("li a0, 1");
    }
    Riscv::w_a0_sscratch();
}
    80002398:	00813083          	ld	ra,8(sp)
    8000239c:	00013403          	ld	s0,0(sp)
    800023a0:	01010113          	addi	sp,sp,16
    800023a4:	00008067          	ret
        __asm__ volatile("li a0, 1");
    800023a8:	00100513          	li	a0,1
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800023ac:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800023b0:	00009717          	auipc	a4,0x9
    800023b4:	43873703          	ld	a4,1080(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800023b8:	00073703          	ld	a4,0(a4)
    800023bc:	05073703          	ld	a4,80(a4)
    800023c0:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    800023c4:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800023c8:	00078593          	mv	a1,a5
    800023cc:	00008067          	ret

00000000800023d0 <_ZN15KernelSemaphorenwEm>:

void *KernelSemaphore::operator new(size_t size) {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00113423          	sd	ra,8(sp)
    800023d8:	00813023          	sd	s0,0(sp)
    800023dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	b64080e7          	jalr	-1180(ra) # 80002f44 <_ZN15MemoryAllocator7kmallocEm>
}
    800023e8:	00813083          	ld	ra,8(sp)
    800023ec:	00013403          	ld	s0,0(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZN15KernelSemaphore8semOpenHEv>:
void KernelSemaphore::semOpenH() {
    800023f8:	fe010113          	addi	sp,sp,-32
    800023fc:	00113c23          	sd	ra,24(sp)
    80002400:	00813823          	sd	s0,16(sp)
    80002404:	00913423          	sd	s1,8(sp)
    80002408:	01213023          	sd	s2,0(sp)
    8000240c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    80002410:	00058493          	mv	s1,a1
    __asm__ volatile("mv %0, a2" : "=r"(init));
    80002414:	00060913          	mv	s2,a2
    KernelSemaphore* sem = new KernelSemaphore(init);
    80002418:	02000513          	li	a0,32
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	fb4080e7          	jalr	-76(ra) # 800023d0 <_ZN15KernelSemaphorenwEm>
#include "../h/Queue.hpp"
#include "../h/Riscv.hpp"

class KernelSemaphore {
public:
    explicit KernelSemaphore(int init=1) : val(init) {};
    80002424:	00009797          	auipc	a5,0x9
    80002428:	1ac78793          	addi	a5,a5,428 # 8000b5d0 <_ZTV15KernelSemaphore+0x10>
    8000242c:	00f53023          	sd	a5,0(a0)
    80002430:	01252423          	sw	s2,8(a0)
    Queue(): head(nullptr), tail(nullptr){}
    80002434:	00053823          	sd	zero,16(a0)
    80002438:	00053c23          	sd	zero,24(a0)
    (*handle) = sem;
    8000243c:	00a4b023          	sd	a0,0(s1)
    if(sem)
    80002440:	04050063          	beqz	a0,80002480 <_ZN15KernelSemaphore8semOpenHEv+0x88>
        __asm__ volatile("li a0, 0");
    80002444:	00000513          	li	a0,0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002448:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    8000244c:	00009717          	auipc	a4,0x9
    80002450:	39c73703          	ld	a4,924(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002454:	00073703          	ld	a4,0(a4)
    80002458:	05073703          	ld	a4,80(a4)
    8000245c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002460:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002464:	00078593          	mv	a1,a5
}
    80002468:	01813083          	ld	ra,24(sp)
    8000246c:	01013403          	ld	s0,16(sp)
    80002470:	00813483          	ld	s1,8(sp)
    80002474:	00013903          	ld	s2,0(sp)
    80002478:	02010113          	addi	sp,sp,32
    8000247c:	00008067          	ret
        __asm__ volatile("li a0, 0xfffff");
    80002480:	00100537          	lui	a0,0x100
    80002484:	fff5051b          	addiw	a0,a0,-1
    80002488:	fc1ff06f          	j	80002448 <_ZN15KernelSemaphore8semOpenHEv+0x50>

000000008000248c <_ZN15KernelSemaphoredlEPv>:

void KernelSemaphore::operator delete(void * p) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	ad0080e7          	jalr	-1328(ra) # 80002f6c <_ZN15MemoryAllocator5kfreeEPv>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN15KernelSemaphoreD0Ev>:
KernelSemaphore::~KernelSemaphore() {
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	02010413          	addi	s0,sp,32
    800024c8:	00050493          	mv	s1,a0
}
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	d00080e7          	jalr	-768(ra) # 800021cc <_ZN15KernelSemaphoreD1Ev>
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	fb4080e7          	jalr	-76(ra) # 8000248c <_ZN15KernelSemaphoredlEPv>
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret

00000000800024f4 <_ZN15KernelSemaphore5blockEv>:
void KernelSemaphore::block() {
    800024f4:	fe010113          	addi	sp,sp,-32
    800024f8:	00113c23          	sd	ra,24(sp)
    800024fc:	00813823          	sd	s0,16(sp)
    80002500:	00913423          	sd	s1,8(sp)
    80002504:	01213023          	sd	s2,0(sp)
    80002508:	02010413          	addi	s0,sp,32
    8000250c:	00050493          	mv	s1,a0
    blockedThreadsQueue.insertLast(PCB::running);
    80002510:	00009797          	auipc	a5,0x9
    80002514:	2d87b783          	ld	a5,728(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002518:	0007b903          	ld	s2,0(a5)
        Elem* e = new Elem(data, nullptr);
    8000251c:	01000513          	li	a0,16
    80002520:	fffff097          	auipc	ra,0xfffff
    80002524:	5b8080e7          	jalr	1464(ra) # 80001ad8 <_ZN5QueueI3PCBE4ElemnwEm>
        Elem(T* data, Elem* next): data(data), next(next){}
    80002528:	01253023          	sd	s2,0(a0) # 100000 <_entry-0x7ff00000>
    8000252c:	00053423          	sd	zero,8(a0)
        if(tail){
    80002530:	0184b783          	ld	a5,24(s1)
    80002534:	04078063          	beqz	a5,80002574 <_ZN15KernelSemaphore5blockEv+0x80>
            tail->next=e;
    80002538:	00a7b423          	sd	a0,8(a5)
            tail=e;
    8000253c:	00a4bc23          	sd	a0,24(s1)
    PCB::running->state= PCB::SUSPENDED;
    80002540:	00009797          	auipc	a5,0x9
    80002544:	2a87b783          	ld	a5,680(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002548:	0007b783          	ld	a5,0(a5)
    8000254c:	00200713          	li	a4,2
    80002550:	00e7a223          	sw	a4,4(a5)
    PCB::dispatch();
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	ff8080e7          	jalr	-8(ra) # 8000154c <_ZN3PCB8dispatchEv>
}
    8000255c:	01813083          	ld	ra,24(sp)
    80002560:	01013403          	ld	s0,16(sp)
    80002564:	00813483          	ld	s1,8(sp)
    80002568:	00013903          	ld	s2,0(sp)
    8000256c:	02010113          	addi	sp,sp,32
    80002570:	00008067          	ret
            head=tail=e;
    80002574:	00a4bc23          	sd	a0,24(s1)
    80002578:	00a4b823          	sd	a0,16(s1)
    8000257c:	fc5ff06f          	j	80002540 <_ZN15KernelSemaphore5blockEv+0x4c>

0000000080002580 <_ZN15KernelSemaphore4waitEv>:
    if(--val < 0)
    80002580:	00852783          	lw	a5,8(a0)
    80002584:	fff7879b          	addiw	a5,a5,-1
    80002588:	00f52423          	sw	a5,8(a0)
    8000258c:	02079713          	slli	a4,a5,0x20
    80002590:	00074663          	bltz	a4,8000259c <_ZN15KernelSemaphore4waitEv+0x1c>
}
    80002594:	00000513          	li	a0,0
    80002598:	00008067          	ret
uint64 KernelSemaphore::wait() {
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00113423          	sd	ra,8(sp)
    800025a4:	00813023          	sd	s0,0(sp)
    800025a8:	01010413          	addi	s0,sp,16
        block();
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	f48080e7          	jalr	-184(ra) # 800024f4 <_ZN15KernelSemaphore5blockEv>
}
    800025b4:	00000513          	li	a0,0
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN15KernelSemaphore8semWaitHEv>:
void KernelSemaphore::semWaitH() {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00113423          	sd	ra,8(sp)
    800025d0:	00813023          	sd	s0,0(sp)
    800025d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(handle));
    800025d8:	00058513          	mv	a0,a1
    handle->wait();
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	fa4080e7          	jalr	-92(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>
    if(!PCB::running->rcs)
    800025e4:	00009797          	auipc	a5,0x9
    800025e8:	2047b783          	ld	a5,516(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800025ec:	0007b783          	ld	a5,0(a5)
    800025f0:	0007c783          	lbu	a5,0(a5)
    800025f4:	02079c63          	bnez	a5,8000262c <_ZN15KernelSemaphore8semWaitHEv+0x64>
        __asm__ volatile("li a0, 0");
    800025f8:	00000513          	li	a0,0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800025fc:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002600:	00009717          	auipc	a4,0x9
    80002604:	1e873703          	ld	a4,488(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002608:	00073703          	ld	a4,0(a4)
    8000260c:	05073703          	ld	a4,80(a4)
    80002610:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002614:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002618:	00078593          	mv	a1,a5
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret
        __asm__ volatile("li a0, 1");
    8000262c:	00100513          	li	a0,1
    80002630:	fcdff06f          	j	800025fc <_ZN15KernelSemaphore8semWaitHEv+0x34>

0000000080002634 <_ZN13ConsoleBufferC1Ei>:
// Created by os on 6/28/23.
//

#include "../h/ConsoleBuffer.hpp"

ConsoleBuffer::ConsoleBuffer(int _cap): cap(_cap + 1), head(0), tail(0) {
    80002634:	fd010113          	addi	sp,sp,-48
    80002638:	02113423          	sd	ra,40(sp)
    8000263c:	02813023          	sd	s0,32(sp)
    80002640:	00913c23          	sd	s1,24(sp)
    80002644:	01213823          	sd	s2,16(sp)
    80002648:	01313423          	sd	s3,8(sp)
    8000264c:	03010413          	addi	s0,sp,48
    80002650:	00058993          	mv	s3,a1
    80002654:	0015879b          	addiw	a5,a1,1
    80002658:	00f52023          	sw	a5,0(a0)
    8000265c:	000014b7          	lui	s1,0x1
    80002660:	009504b3          	add	s1,a0,s1
    80002664:	0004a223          	sw	zero,4(s1) # 1004 <_entry-0x7fffeffc>
    80002668:	0004a423          	sw	zero,8(s1)
    //buffer = (char*)mem_alloc(sizeof(int) * cap);
    itemAvailable = new KernelSemaphore(0);
    8000266c:	02000513          	li	a0,32
    80002670:	00000097          	auipc	ra,0x0
    80002674:	d60080e7          	jalr	-672(ra) # 800023d0 <_ZN15KernelSemaphorenwEm>
#include "../h/Queue.hpp"
#include "../h/Riscv.hpp"

class KernelSemaphore {
public:
    explicit KernelSemaphore(int init=1) : val(init) {};
    80002678:	00009917          	auipc	s2,0x9
    8000267c:	14893903          	ld	s2,328(s2) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002680:	01090913          	addi	s2,s2,16
    80002684:	01253023          	sd	s2,0(a0)
    80002688:	00052423          	sw	zero,8(a0)

    Elem* head, *tail;
    void * operator new(size_t);
    void operator delete(void *);
public:
    Queue(): head(nullptr), tail(nullptr){}
    8000268c:	00053823          	sd	zero,16(a0)
    80002690:	00053c23          	sd	zero,24(a0)
    80002694:	00a4bc23          	sd	a0,24(s1)
    spaceAvailable = new KernelSemaphore(_cap);
    80002698:	02000513          	li	a0,32
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	d34080e7          	jalr	-716(ra) # 800023d0 <_ZN15KernelSemaphorenwEm>
    800026a4:	01253023          	sd	s2,0(a0)
    800026a8:	01352423          	sw	s3,8(a0)
    800026ac:	00053823          	sd	zero,16(a0)
    800026b0:	00053c23          	sd	zero,24(a0)
    800026b4:	00a4b823          	sd	a0,16(s1)
    mutexHead = new KernelSemaphore(1);
    800026b8:	02000513          	li	a0,32
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	d14080e7          	jalr	-748(ra) # 800023d0 <_ZN15KernelSemaphorenwEm>
    800026c4:	01253023          	sd	s2,0(a0)
    800026c8:	00100993          	li	s3,1
    800026cc:	01352423          	sw	s3,8(a0)
    800026d0:	00053823          	sd	zero,16(a0)
    800026d4:	00053c23          	sd	zero,24(a0)
    800026d8:	02a4b023          	sd	a0,32(s1)
    mutexTail = new KernelSemaphore(1);
    800026dc:	02000513          	li	a0,32
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	cf0080e7          	jalr	-784(ra) # 800023d0 <_ZN15KernelSemaphorenwEm>
    800026e8:	01253023          	sd	s2,0(a0)
    800026ec:	01352423          	sw	s3,8(a0)
    800026f0:	00053823          	sd	zero,16(a0)
    800026f4:	00053c23          	sd	zero,24(a0)
    800026f8:	02a4b423          	sd	a0,40(s1)
}
    800026fc:	02813083          	ld	ra,40(sp)
    80002700:	02013403          	ld	s0,32(sp)
    80002704:	01813483          	ld	s1,24(sp)
    80002708:	01013903          	ld	s2,16(sp)
    8000270c:	00813983          	ld	s3,8(sp)
    80002710:	03010113          	addi	sp,sp,48
    80002714:	00008067          	ret

0000000080002718 <_ZN13ConsoleBufferD1Ev>:

ConsoleBuffer::~ConsoleBuffer() {
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00113423          	sd	ra,8(sp)
    80002720:	00813023          	sd	s0,0(sp)
    80002724:	01010413          	addi	s0,sp,16
        head = (head + 1) % cap;
    }
    putc('!');
    putc('\n');*/

    MemoryAllocator::kfree(buffer);
    80002728:	00450513          	addi	a0,a0,4
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	840080e7          	jalr	-1984(ra) # 80002f6c <_ZN15MemoryAllocator5kfreeEPv>
    /*sem_close(itemAvailable);
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);*/
}
    80002734:	00813083          	ld	ra,8(sp)
    80002738:	00013403          	ld	s0,0(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <_ZN13ConsoleBuffer3putEc>:

void ConsoleBuffer::put(char val) {
    80002744:	fd010113          	addi	sp,sp,-48
    80002748:	02113423          	sd	ra,40(sp)
    8000274c:	02813023          	sd	s0,32(sp)
    80002750:	00913c23          	sd	s1,24(sp)
    80002754:	01213823          	sd	s2,16(sp)
    80002758:	01313423          	sd	s3,8(sp)
    8000275c:	03010413          	addi	s0,sp,48
    80002760:	00050913          	mv	s2,a0
    80002764:	00058993          	mv	s3,a1
    spaceAvailable->wait();
    80002768:	000014b7          	lui	s1,0x1
    8000276c:	009504b3          	add	s1,a0,s1
    80002770:	0104b503          	ld	a0,16(s1) # 1010 <_entry-0x7fffeff0>
    80002774:	00000097          	auipc	ra,0x0
    80002778:	e0c080e7          	jalr	-500(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>
    mutexTail->wait();
    8000277c:	0284b503          	ld	a0,40(s1)
    80002780:	00000097          	auipc	ra,0x0
    80002784:	e00080e7          	jalr	-512(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>

    buffer[tail] = val;
    80002788:	0084a783          	lw	a5,8(s1)
    8000278c:	00f90733          	add	a4,s2,a5
    80002790:	01370223          	sb	s3,4(a4)
    tail = (tail + 1) % cap;
    80002794:	0017879b          	addiw	a5,a5,1
    80002798:	00092703          	lw	a4,0(s2)
    8000279c:	02e7e7bb          	remw	a5,a5,a4
    800027a0:	00f4a423          	sw	a5,8(s1)

    mutexTail->signal();
    800027a4:	0284b503          	ld	a0,40(s1)
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	ae8080e7          	jalr	-1304(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>
    itemAvailable->signal();
    800027b0:	0184b503          	ld	a0,24(s1)
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	adc080e7          	jalr	-1316(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>

}
    800027bc:	02813083          	ld	ra,40(sp)
    800027c0:	02013403          	ld	s0,32(sp)
    800027c4:	01813483          	ld	s1,24(sp)
    800027c8:	01013903          	ld	s2,16(sp)
    800027cc:	00813983          	ld	s3,8(sp)
    800027d0:	03010113          	addi	sp,sp,48
    800027d4:	00008067          	ret

00000000800027d8 <_ZN13ConsoleBuffer3getEv>:

char ConsoleBuffer::get() {
    800027d8:	fd010113          	addi	sp,sp,-48
    800027dc:	02113423          	sd	ra,40(sp)
    800027e0:	02813023          	sd	s0,32(sp)
    800027e4:	00913c23          	sd	s1,24(sp)
    800027e8:	01213823          	sd	s2,16(sp)
    800027ec:	01313423          	sd	s3,8(sp)
    800027f0:	03010413          	addi	s0,sp,48
    800027f4:	00050913          	mv	s2,a0
    itemAvailable->wait();
    800027f8:	000014b7          	lui	s1,0x1
    800027fc:	009504b3          	add	s1,a0,s1
    80002800:	0184b503          	ld	a0,24(s1) # 1018 <_entry-0x7fffefe8>
    80002804:	00000097          	auipc	ra,0x0
    80002808:	d7c080e7          	jalr	-644(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>
    mutexHead->wait();
    8000280c:	0204b503          	ld	a0,32(s1)
    80002810:	00000097          	auipc	ra,0x0
    80002814:	d70080e7          	jalr	-656(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>

    char ret = buffer[head];
    80002818:	0044a783          	lw	a5,4(s1)
    8000281c:	00f90733          	add	a4,s2,a5
    80002820:	00474983          	lbu	s3,4(a4)
    head = (head + 1) % cap;
    80002824:	0017879b          	addiw	a5,a5,1
    80002828:	00092703          	lw	a4,0(s2)
    8000282c:	02e7e7bb          	remw	a5,a5,a4
    80002830:	00f4a223          	sw	a5,4(s1)

    mutexHead->signal();
    80002834:	0204b503          	ld	a0,32(s1)
    80002838:	00000097          	auipc	ra,0x0
    8000283c:	a58080e7          	jalr	-1448(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>
    spaceAvailable->signal();
    80002840:	0104b503          	ld	a0,16(s1)
    80002844:	00000097          	auipc	ra,0x0
    80002848:	a4c080e7          	jalr	-1460(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>

    return ret;
}
    8000284c:	00098513          	mv	a0,s3
    80002850:	02813083          	ld	ra,40(sp)
    80002854:	02013403          	ld	s0,32(sp)
    80002858:	01813483          	ld	s1,24(sp)
    8000285c:	01013903          	ld	s2,16(sp)
    80002860:	00813983          	ld	s3,8(sp)
    80002864:	03010113          	addi	sp,sp,48
    80002868:	00008067          	ret

000000008000286c <_ZN13ConsoleBuffer6getCntEv>:

int ConsoleBuffer::getCnt() {
    8000286c:	fe010113          	addi	sp,sp,-32
    80002870:	00113c23          	sd	ra,24(sp)
    80002874:	00813823          	sd	s0,16(sp)
    80002878:	00913423          	sd	s1,8(sp)
    8000287c:	01213023          	sd	s2,0(sp)
    80002880:	02010413          	addi	s0,sp,32
    80002884:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002888:	00001937          	lui	s2,0x1
    8000288c:	01250933          	add	s2,a0,s2
    80002890:	02093503          	ld	a0,32(s2) # 1020 <_entry-0x7fffefe0>
    80002894:	00000097          	auipc	ra,0x0
    80002898:	cec080e7          	jalr	-788(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>
    mutexTail->wait();
    8000289c:	02893503          	ld	a0,40(s2)
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	ce0080e7          	jalr	-800(ra) # 80002580 <_ZN15KernelSemaphore4waitEv>
    //sem_wait(mutexHead);
    //sem_wait(mutexTail);

    if (tail >= head) {
    800028a8:	00892783          	lw	a5,8(s2)
    800028ac:	00492903          	lw	s2,4(s2)
    800028b0:	0527c263          	blt	a5,s2,800028f4 <_ZN13ConsoleBuffer6getCntEv+0x88>
        ret = tail - head;
    800028b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800028b8:	00001537          	lui	a0,0x1
    800028bc:	00a484b3          	add	s1,s1,a0
    800028c0:	0284b503          	ld	a0,40(s1)
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	9cc080e7          	jalr	-1588(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>
    mutexHead->signal();
    800028cc:	0204b503          	ld	a0,32(s1)
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	9c0080e7          	jalr	-1600(ra) # 80002290 <_ZN15KernelSemaphore6signalEv>
    //sem_signal(mutexTail);
    //sem_signal(mutexHead);

    return ret;
    800028d8:	00090513          	mv	a0,s2
    800028dc:	01813083          	ld	ra,24(sp)
    800028e0:	01013403          	ld	s0,16(sp)
    800028e4:	00813483          	ld	s1,8(sp)
    800028e8:	00013903          	ld	s2,0(sp)
    800028ec:	02010113          	addi	sp,sp,32
    800028f0:	00008067          	ret
        ret = cap - head + tail;
    800028f4:	0004a703          	lw	a4,0(s1)
    800028f8:	4127093b          	subw	s2,a4,s2
    800028fc:	00f9093b          	addw	s2,s2,a5
    80002900:	fb9ff06f          	j	800028b8 <_ZN13ConsoleBuffer6getCntEv+0x4c>

0000000080002904 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/PCB.hpp"
#include "../h/KernelSemaphore.hpp"
#include "../h/KernelConsole.hpp"

void Riscv::popSppSpie() {
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00813423          	sd	s0,8(sp)
    8000290c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002910:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002914:	10200073          	sret
}
    80002918:	00813403          	ld	s0,8(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80002924:	f8010113          	addi	sp,sp,-128
    80002928:	06113c23          	sd	ra,120(sp)
    8000292c:	06813823          	sd	s0,112(sp)
    80002930:	06913423          	sd	s1,104(sp)
    80002934:	08010413          	addi	s0,sp,128
    __asm__ volatile("mv %0, a4" : "=r"(PCB::regA4));
    80002938:	00070713          	mv	a4,a4
    8000293c:	00009797          	auipc	a5,0x9
    80002940:	ec47b783          	ld	a5,-316(a5) # 8000b800 <_GLOBAL_OFFSET_TABLE_+0x78>
    80002944:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80002948:	00009797          	auipc	a5,0x9
    8000294c:	ea07b783          	ld	a5,-352(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002950:	0007b783          	ld	a5,0(a5)
    80002954:	14002773          	csrr	a4,sscratch
    80002958:	04e7b823          	sd	a4,80(a5)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000295c:	142027f3          	csrr	a5,scause
    80002960:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002964:	fb043783          	ld	a5,-80(s0)
    volatile uint64 scause = r_scause();
    80002968:	fcf43c23          	sd	a5,-40(s0)
    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
    8000296c:	fd843703          	ld	a4,-40(s0)
    80002970:	00800793          	li	a5,8
    80002974:	04f70663          	beq	a4,a5,800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
    80002978:	fd843703          	ld	a4,-40(s0)
    8000297c:	00900793          	li	a5,9
    80002980:	04f70063          	beq	a4,a5,800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x9c>
        /*if(PCB::running->mainOrConsole)
            Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
        else
            Riscv::mc_sstatus(Riscv::SSTATUS_SPP);*/
    }
    else if(scause == 0x8000000000000001UL){
    80002984:	fd843703          	ld	a4,-40(s0)
    80002988:	fff00793          	li	a5,-1
    8000298c:	03f79793          	slli	a5,a5,0x3f
    80002990:	00178793          	addi	a5,a5,1
    80002994:	1af70863          	beq	a4,a5,80002b44 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        //PCB::running->changeRegime();
    }
    else if(scause == 0x8000000000000009UL){
    80002998:	fd843703          	ld	a4,-40(s0)
    8000299c:	fff00793          	li	a5,-1
    800029a0:	03f79793          	slli	a5,a5,0x3f
    800029a4:	00978793          	addi	a5,a5,9
    800029a8:	24f70263          	beq	a4,a5,80002bec <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
            char ret = *(char*)CONSOLE_RX_DATA;
            KernelConsole::inputBuffer->put(ret);
        }
        plic_complete(num);
    }
    else if(scause == 0x02UL){
    800029ac:	fd843703          	ld	a4,-40(s0)
    800029b0:	00200793          	li	a5,2
    800029b4:	28f70e63          	beq	a4,a5,80002c50 <_ZN5Riscv20handleSupervisorTrapEv+0x32c>
        __putc('2');

    }
    else if(scause == 0x05UL){
    800029b8:	fd843783          	ld	a5,-40(s0)
    }
    else{
        // unexpected trap cause
        // print(scause) (sepc) (stval)
    }
}
    800029bc:	0f00006f          	j	80002aac <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800029c0:	141027f3          	csrr	a5,sepc
    800029c4:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    800029c8:	fc043783          	ld	a5,-64(s0)
        volatile uint64 sepc = r_sepc() + 4;
    800029cc:	00478793          	addi	a5,a5,4
    800029d0:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800029d4:	100027f3          	csrr	a5,sstatus
    800029d8:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800029dc:	fb843783          	ld	a5,-72(s0)
        volatile uint64 sstatus = r_sstatus();
    800029e0:	f8f43823          	sd	a5,-112(s0)
        __asm__ volatile("mv %0, a0" : "=r"(a0));
    800029e4:	00050793          	mv	a5,a0
    800029e8:	f8f43c23          	sd	a5,-104(s0)
        if(a0==0x01){
    800029ec:	f9843703          	ld	a4,-104(s0)
    800029f0:	00100793          	li	a5,1
    800029f4:	0af70063          	beq	a4,a5,80002a94 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
        else if(a0==0x02){
    800029f8:	f9843703          	ld	a4,-104(s0)
    800029fc:	00200793          	li	a5,2
    80002a00:	0cf70063          	beq	a4,a5,80002ac0 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
        else if(a0==0x11){
    80002a04:	f9843703          	ld	a4,-104(s0)
    80002a08:	01100793          	li	a5,17
    80002a0c:	0cf70063          	beq	a4,a5,80002acc <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
        else if(a0==0x12){
    80002a10:	f9843703          	ld	a4,-104(s0)
    80002a14:	01200793          	li	a5,18
    80002a18:	0cf70063          	beq	a4,a5,80002ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
        else if(a0==0x13){
    80002a1c:	f9843703          	ld	a4,-104(s0)
    80002a20:	01300793          	li	a5,19
    80002a24:	0cf70063          	beq	a4,a5,80002ae4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
        else if(a0==0x14){
    80002a28:	f9843703          	ld	a4,-104(s0)
    80002a2c:	01400793          	li	a5,20
    80002a30:	0cf70063          	beq	a4,a5,80002af0 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
        else if(a0==0x21){
    80002a34:	f9843703          	ld	a4,-104(s0)
    80002a38:	02100793          	li	a5,33
    80002a3c:	0cf70063          	beq	a4,a5,80002afc <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if(a0==0x22){
    80002a40:	f9843703          	ld	a4,-104(s0)
    80002a44:	02200793          	li	a5,34
    80002a48:	0cf70063          	beq	a4,a5,80002b08 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        else if(a0==0x23){
    80002a4c:	f9843703          	ld	a4,-104(s0)
    80002a50:	02300793          	li	a5,35
    80002a54:	0cf70063          	beq	a4,a5,80002b14 <_ZN5Riscv20handleSupervisorTrapEv+0x1f0>
        else if(a0==0x24){
    80002a58:	f9843703          	ld	a4,-104(s0)
    80002a5c:	02400793          	li	a5,36
    80002a60:	0cf70063          	beq	a4,a5,80002b20 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
        else if(a0==0x31){
    80002a64:	f9843703          	ld	a4,-104(s0)
    80002a68:	03100793          	li	a5,49
    80002a6c:	0cf70063          	beq	a4,a5,80002b2c <_ZN5Riscv20handleSupervisorTrapEv+0x208>
        else if(a0==0x41){
    80002a70:	f9843703          	ld	a4,-104(s0)
    80002a74:	04100793          	li	a5,65
    80002a78:	0cf70063          	beq	a4,a5,80002b38 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        else if(a0==0x42){
    80002a7c:	f9843703          	ld	a4,-104(s0)
    80002a80:	04200793          	li	a5,66
    80002a84:	00f71c63          	bne	a4,a5,80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            KernelConsole::putcH();
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	678080e7          	jalr	1656(ra) # 80003100 <_ZN13KernelConsole5putcHEv>
    80002a90:	00c0006f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            MemoryAllocator::memAllocH();
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	500080e7          	jalr	1280(ra) # 80002f94 <_ZN15MemoryAllocator9memAllocHEv>
        w_sepc(sepc);
    80002a9c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002aa0:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002aa4:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002aa8:	10079073          	csrw	sstatus,a5
}
    80002aac:	07813083          	ld	ra,120(sp)
    80002ab0:	07013403          	ld	s0,112(sp)
    80002ab4:	06813483          	ld	s1,104(sp)
    80002ab8:	08010113          	addi	sp,sp,128
    80002abc:	00008067          	ret
            MemoryAllocator::memFreeH();
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	528080e7          	jalr	1320(ra) # 80002fe8 <_ZN15MemoryAllocator8memFreeHEv>
    80002ac8:	fd5ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            PCB::threadCreateH();
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	b60080e7          	jalr	-1184(ra) # 8000162c <_ZN3PCB13threadCreateHEv>
    80002ad4:	fc9ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            PCB::threadExitH();
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	c24080e7          	jalr	-988(ra) # 800016fc <_ZN3PCB11threadExitHEv>
    80002ae0:	fbdff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            PCB::threadDispatchH();
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	c60080e7          	jalr	-928(ra) # 80001744 <_ZN3PCB15threadDispatchHEv>
    80002aec:	fb1ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            PCB::threadJoinH();
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	c84080e7          	jalr	-892(ra) # 80001774 <_ZN3PCB11threadJoinHEv>
    80002af8:	fa5ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            KernelSemaphore::semOpenH();
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	8fc080e7          	jalr	-1796(ra) # 800023f8 <_ZN15KernelSemaphore8semOpenHEv>
    80002b04:	f99ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            KernelSemaphore::semCloseH();
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	7cc080e7          	jalr	1996(ra) # 800022d4 <_ZN15KernelSemaphore9semCloseHEv>
    80002b10:	f8dff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            KernelSemaphore::semWaitH();
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	ab4080e7          	jalr	-1356(ra) # 800025c8 <_ZN15KernelSemaphore8semWaitHEv>
    80002b1c:	f81ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            KernelSemaphore::semSignalH();
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	834080e7          	jalr	-1996(ra) # 80002354 <_ZN15KernelSemaphore10semSignalHEv>
    80002b28:	f75ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            PCB::timeSleepH();
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	d40080e7          	jalr	-704(ra) # 8000186c <_ZN3PCB10timeSleepHEv>
    80002b34:	f69ff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
            KernelConsole::getcH();
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	530080e7          	jalr	1328(ra) # 80003068 <_ZN13KernelConsole5getcHEv>
    80002b40:	f5dff06f          	j	80002a9c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b44:	00200793          	li	a5,2
    80002b48:	1447b073          	csrc	sip,a5
        PCB::timeSliceCounter++;
    80002b4c:	00009717          	auipc	a4,0x9
    80002b50:	c7c73703          	ld	a4,-900(a4) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002b54:	00073783          	ld	a5,0(a4)
    80002b58:	00178793          	addi	a5,a5,1
    80002b5c:	00f73023          	sd	a5,0(a4)
    bool isFinished() const { return state==FINISHED;}
    void start() { Scheduler::put(this);}
    uint64 getTimeSlice() const { return timeSlice;}
    void setSleepingTime(uint64 t) { sleepingTime=t;}
    uint64  getSleepingTime() const {return sleepingTime;}
    static void decreaseSleepingTime() {if(sleepyHead) sleepyHead->sleepingTime--;}
    80002b60:	00009797          	auipc	a5,0x9
    80002b64:	ca87b783          	ld	a5,-856(a5) # 8000b808 <_GLOBAL_OFFSET_TABLE_+0x80>
    80002b68:	0007b783          	ld	a5,0(a5)
    80002b6c:	00078863          	beqz	a5,80002b7c <_ZN5Riscv20handleSupervisorTrapEv+0x258>
    80002b70:	0387b703          	ld	a4,56(a5)
    80002b74:	fff70713          	addi	a4,a4,-1
    80002b78:	02e7bc23          	sd	a4,56(a5)
        PCB::removeSleepy();
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	d5c080e7          	jalr	-676(ra) # 800018d8 <_ZN3PCB12removeSleepyEv>
        if(PCB::timeSliceCounter >= PCB::running->getTimeSlice()) {
    80002b84:	00009797          	auipc	a5,0x9
    80002b88:	c647b783          	ld	a5,-924(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002b8c:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const { return timeSlice;}
    80002b90:	0287b783          	ld	a5,40(a5)
    80002b94:	00009717          	auipc	a4,0x9
    80002b98:	c3473703          	ld	a4,-972(a4) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002b9c:	00073703          	ld	a4,0(a4)
    80002ba0:	f0f766e3          	bltu	a4,a5,80002aac <_ZN5Riscv20handleSupervisorTrapEv+0x188>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ba4:	141027f3          	csrr	a5,sepc
    80002ba8:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80002bac:	fd043783          	ld	a5,-48(s0)
            volatile uint64 sepc = r_sepc();
    80002bb0:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002bb4:	100027f3          	csrr	a5,sstatus
    80002bb8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002bbc:	fc843783          	ld	a5,-56(s0)
            volatile uint64 sstatus = r_sstatus();
    80002bc0:	faf43423          	sd	a5,-88(s0)
            PCB::timeSliceCounter=0;
    80002bc4:	00009797          	auipc	a5,0x9
    80002bc8:	c047b783          	ld	a5,-1020(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002bcc:	0007b023          	sd	zero,0(a5)
            PCB::dispatch();
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	97c080e7          	jalr	-1668(ra) # 8000154c <_ZN3PCB8dispatchEv>
            w_sepc(sepc);
    80002bd8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002bdc:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80002be0:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002be4:	10079073          	csrw	sstatus,a5
}
    80002be8:	ec5ff06f          	j	80002aac <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        int num = plic_claim();
    80002bec:	00004097          	auipc	ra,0x4
    80002bf0:	488080e7          	jalr	1160(ra) # 80007074 <plic_claim>
    80002bf4:	00050493          	mv	s1,a0
        if(num==0x0a && (*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT)){
    80002bf8:	00a00793          	li	a5,10
    80002bfc:	00f50a63          	beq	a0,a5,80002c10 <_ZN5Riscv20handleSupervisorTrapEv+0x2ec>
        plic_complete(num);
    80002c00:	00048513          	mv	a0,s1
    80002c04:	00004097          	auipc	ra,0x4
    80002c08:	4a8080e7          	jalr	1192(ra) # 800070ac <plic_complete>
    80002c0c:	ea1ff06f          	j	80002aac <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        if(num==0x0a && (*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT)){
    80002c10:	00009797          	auipc	a5,0x9
    80002c14:	b887b783          	ld	a5,-1144(a5) # 8000b798 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c18:	0007b783          	ld	a5,0(a5)
    80002c1c:	0007c783          	lbu	a5,0(a5)
    80002c20:	0017f793          	andi	a5,a5,1
    80002c24:	fc078ee3          	beqz	a5,80002c00 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
            char ret = *(char*)CONSOLE_RX_DATA;
    80002c28:	00009797          	auipc	a5,0x9
    80002c2c:	b687b783          	ld	a5,-1176(a5) # 8000b790 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c30:	0007b783          	ld	a5,0(a5)
            KernelConsole::inputBuffer->put(ret);
    80002c34:	0007c583          	lbu	a1,0(a5)
    80002c38:	00009797          	auipc	a5,0x9
    80002c3c:	ba07b783          	ld	a5,-1120(a5) # 8000b7d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002c40:	0007b503          	ld	a0,0(a5)
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	b00080e7          	jalr	-1280(ra) # 80002744 <_ZN13ConsoleBuffer3putEc>
    80002c4c:	fb5ff06f          	j	80002c00 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
        __putc('2');
    80002c50:	03200513          	li	a0,50
    80002c54:	00006097          	auipc	ra,0x6
    80002c58:	c88080e7          	jalr	-888(ra) # 800088dc <__putc>
    80002c5c:	e51ff06f          	j	80002aac <_ZN5Riscv20handleSupervisorTrapEv+0x188>

0000000080002c60 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void *) {
    80002c60:	ff010113          	addi	sp,sp,-16
    80002c64:	00113423          	sd	ra,8(sp)
    80002c68:	00813023          	sd	s0,0(sp)
    80002c6c:	01010413          	addi	s0,sp,16
    userMain();
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	d1c080e7          	jalr	-740(ra) # 8000198c <_Z8userMainv>
}
    80002c78:	00813083          	ld	ra,8(sp)
    80002c7c:	00013403          	ld	s0,0(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <_ZN15MemoryAllocator4initEv>:

MemoryAllocator::MemBlock* MemoryAllocator::freeHead = 0;
MemoryAllocator::MemBlock* MemoryAllocator::usedHead = 0;
bool MemoryAllocator::initialized = 0;

void MemoryAllocator::init() {
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    if(initialized)
    80002c94:	00009797          	auipc	a5,0x9
    80002c98:	bfc7c783          	lbu	a5,-1028(a5) # 8000b890 <_ZN15MemoryAllocator11initializedE>
    80002c9c:	04079463          	bnez	a5,80002ce4 <_ZN15MemoryAllocator4initEv+0x5c>
        return;
    initialized=1;
    80002ca0:	00009717          	auipc	a4,0x9
    80002ca4:	bf070713          	addi	a4,a4,-1040 # 8000b890 <_ZN15MemoryAllocator11initializedE>
    80002ca8:	00100793          	li	a5,1
    80002cac:	00f70023          	sb	a5,0(a4)
    freeHead = (MemBlock*) HEAP_START_ADDR;
    80002cb0:	00009797          	auipc	a5,0x9
    80002cb4:	af07b783          	ld	a5,-1296(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002cb8:	0007b683          	ld	a3,0(a5)
    80002cbc:	00d73423          	sd	a3,8(a4)
    freeHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemBlock));
    80002cc0:	00009797          	auipc	a5,0x9
    80002cc4:	b307b783          	ld	a5,-1232(a5) # 8000b7f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cc8:	0007b783          	ld	a5,0(a5)
    80002ccc:	40d787b3          	sub	a5,a5,a3
    80002cd0:	ff078793          	addi	a5,a5,-16
    80002cd4:	00f6b023          	sd	a5,0(a3)
    freeHead->next = nullptr;
    80002cd8:	00873783          	ld	a5,8(a4)
    80002cdc:	0007b423          	sd	zero,8(a5)
    usedHead=nullptr;
    80002ce0:	00073823          	sd	zero,16(a4)
}
    80002ce4:	00813403          	ld	s0,8(sp)
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN15MemoryAllocator9mem_allocEm>:

void *MemoryAllocator::mem_alloc(size_t size) {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	02010413          	addi	s0,sp,32
    80002d04:	00050493          	mv	s1,a0
    init();
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	f80080e7          	jalr	-128(ra) # 80002c88 <_ZN15MemoryAllocator4initEv>
    MemBlock* cur = freeHead, *prev=nullptr;
    80002d10:	00009517          	auipc	a0,0x9
    80002d14:	b8853503          	ld	a0,-1144(a0) # 8000b898 <_ZN15MemoryAllocator8freeHeadE>
    80002d18:	00000713          	li	a4,0
    for(;cur;prev=cur,cur=cur->next)
    80002d1c:	00050c63          	beqz	a0,80002d34 <_ZN15MemoryAllocator9mem_allocEm+0x44>
        if(cur->size>=size)
    80002d20:	00053783          	ld	a5,0(a0)
    80002d24:	0097f863          	bgeu	a5,s1,80002d34 <_ZN15MemoryAllocator9mem_allocEm+0x44>
    for(;cur;prev=cur,cur=cur->next)
    80002d28:	00050713          	mv	a4,a0
    80002d2c:	00853503          	ld	a0,8(a0)
    80002d30:	fedff06f          	j	80002d1c <_ZN15MemoryAllocator9mem_allocEm+0x2c>
            break;
    if(!cur)
    80002d34:	04050a63          	beqz	a0,80002d88 <_ZN15MemoryAllocator9mem_allocEm+0x98>
        return nullptr;
    size_t rem = cur->size-size;
    80002d38:	00053783          	ld	a5,0(a0)
    80002d3c:	409787b3          	sub	a5,a5,s1
    if(rem>=MEM_BLOCK_SIZE+sizeof(MemBlock)){
    80002d40:	04f00693          	li	a3,79
    80002d44:	06f6f263          	bgeu	a3,a5,80002da8 <_ZN15MemoryAllocator9mem_allocEm+0xb8>
        cur->size=size;
    80002d48:	00953023          	sd	s1,0(a0)
        size_t offs = sizeof(MemBlock) + size;
    80002d4c:	01048493          	addi	s1,s1,16
        MemBlock* newBlock = (MemBlock*)((char*)cur+offs);
    80002d50:	009504b3          	add	s1,a0,s1
        if(prev)
    80002d54:	04070463          	beqz	a4,80002d9c <_ZN15MemoryAllocator9mem_allocEm+0xac>
            prev->next=newBlock;
    80002d58:	00973423          	sd	s1,8(a4)
        else
            freeHead=newBlock;
        newBlock->next=cur->next;
    80002d5c:	00853703          	ld	a4,8(a0)
    80002d60:	00e4b423          	sd	a4,8(s1)
        newBlock->size=rem-sizeof(MemBlock);
    80002d64:	ff078793          	addi	a5,a5,-16
    80002d68:	00f4b023          	sd	a5,0(s1)
        if (prev)
            prev->next = cur->next;
        else
            freeHead = cur->next;
    }
    if(usedHead)
    80002d6c:	00009797          	auipc	a5,0x9
    80002d70:	b347b783          	ld	a5,-1228(a5) # 8000b8a0 <_ZN15MemoryAllocator8usedHeadE>
    80002d74:	00078463          	beqz	a5,80002d7c <_ZN15MemoryAllocator9mem_allocEm+0x8c>
        cur->next=usedHead;
    80002d78:	00f53423          	sd	a5,8(a0)
    usedHead=cur;
    80002d7c:	00009797          	auipc	a5,0x9
    80002d80:	b2a7b223          	sd	a0,-1244(a5) # 8000b8a0 <_ZN15MemoryAllocator8usedHeadE>
    return (char*)cur+sizeof(MemBlock);
    80002d84:	01050513          	addi	a0,a0,16
}
    80002d88:	01813083          	ld	ra,24(sp)
    80002d8c:	01013403          	ld	s0,16(sp)
    80002d90:	00813483          	ld	s1,8(sp)
    80002d94:	02010113          	addi	sp,sp,32
    80002d98:	00008067          	ret
            freeHead=newBlock;
    80002d9c:	00009717          	auipc	a4,0x9
    80002da0:	ae973e23          	sd	s1,-1284(a4) # 8000b898 <_ZN15MemoryAllocator8freeHeadE>
    80002da4:	fb9ff06f          	j	80002d5c <_ZN15MemoryAllocator9mem_allocEm+0x6c>
        if (prev)
    80002da8:	00070863          	beqz	a4,80002db8 <_ZN15MemoryAllocator9mem_allocEm+0xc8>
            prev->next = cur->next;
    80002dac:	00853783          	ld	a5,8(a0)
    80002db0:	00f73423          	sd	a5,8(a4)
    80002db4:	fb9ff06f          	j	80002d6c <_ZN15MemoryAllocator9mem_allocEm+0x7c>
            freeHead = cur->next;
    80002db8:	00853783          	ld	a5,8(a0)
    80002dbc:	00009717          	auipc	a4,0x9
    80002dc0:	acf73e23          	sd	a5,-1316(a4) # 8000b898 <_ZN15MemoryAllocator8freeHeadE>
    80002dc4:	fa9ff06f          	j	80002d6c <_ZN15MemoryAllocator9mem_allocEm+0x7c>

0000000080002dc8 <_ZN15MemoryAllocator11mergeBlocksEPv>:
    //merge if possible
    mergeBlocks(newBlock);
    mergeBlocks(prev);
}

void MemoryAllocator::mergeBlocks(void * block) {
    80002dc8:	ff010113          	addi	sp,sp,-16
    80002dcc:	00813423          	sd	s0,8(sp)
    80002dd0:	01010413          	addi	s0,sp,16
    MemBlock* cur = (MemBlock*) block;
    if(!cur)
    80002dd4:	00050e63          	beqz	a0,80002df0 <_ZN15MemoryAllocator11mergeBlocksEPv+0x28>
        return;
    if(cur->next && (char*)cur+cur->size+sizeof(MemBlock)==(char*)cur->next){
    80002dd8:	00853783          	ld	a5,8(a0)
    80002ddc:	00078a63          	beqz	a5,80002df0 <_ZN15MemoryAllocator11mergeBlocksEPv+0x28>
    80002de0:	00053683          	ld	a3,0(a0)
    80002de4:	01068713          	addi	a4,a3,16
    80002de8:	00e50733          	add	a4,a0,a4
    80002dec:	00e78863          	beq	a5,a4,80002dfc <_ZN15MemoryAllocator11mergeBlocksEPv+0x34>
        cur->size+=cur->next->size+sizeof (MemBlock);
        cur->next=cur->next->next;
    }
}
    80002df0:	00813403          	ld	s0,8(sp)
    80002df4:	01010113          	addi	sp,sp,16
    80002df8:	00008067          	ret
        cur->size+=cur->next->size+sizeof (MemBlock);
    80002dfc:	0007b703          	ld	a4,0(a5)
    80002e00:	00e686b3          	add	a3,a3,a4
    80002e04:	01068693          	addi	a3,a3,16
    80002e08:	00d53023          	sd	a3,0(a0)
        cur->next=cur->next->next;
    80002e0c:	0087b783          	ld	a5,8(a5)
    80002e10:	00f53423          	sd	a5,8(a0)
    80002e14:	fddff06f          	j	80002df0 <_ZN15MemoryAllocator11mergeBlocksEPv+0x28>

0000000080002e18 <_ZN15MemoryAllocator15insertFreeBlockEPv>:
    MemBlock* cur=freeHead, *prev=nullptr;
    80002e18:	00009717          	auipc	a4,0x9
    80002e1c:	a8073703          	ld	a4,-1408(a4) # 8000b898 <_ZN15MemoryAllocator8freeHeadE>
    if(!cur) {
    80002e20:	02070a63          	beqz	a4,80002e54 <_ZN15MemoryAllocator15insertFreeBlockEPv+0x3c>
void MemoryAllocator::insertFreeBlock(void * block) {
    80002e24:	fe010113          	addi	sp,sp,-32
    80002e28:	00113c23          	sd	ra,24(sp)
    80002e2c:	00813823          	sd	s0,16(sp)
    80002e30:	00913423          	sd	s1,8(sp)
    80002e34:	02010413          	addi	s0,sp,32
    MemBlock* cur=freeHead, *prev=nullptr;
    80002e38:	00070793          	mv	a5,a4
    80002e3c:	00000493          	li	s1,0
    for(;cur;prev=cur,cur=cur->next)
    80002e40:	02078063          	beqz	a5,80002e60 <_ZN15MemoryAllocator15insertFreeBlockEPv+0x48>
        if(cur>newBlock)
    80002e44:	00f56e63          	bltu	a0,a5,80002e60 <_ZN15MemoryAllocator15insertFreeBlockEPv+0x48>
    for(;cur;prev=cur,cur=cur->next)
    80002e48:	00078493          	mv	s1,a5
    80002e4c:	0087b783          	ld	a5,8(a5)
    80002e50:	ff1ff06f          	j	80002e40 <_ZN15MemoryAllocator15insertFreeBlockEPv+0x28>
        freeHead = newBlock;
    80002e54:	00009797          	auipc	a5,0x9
    80002e58:	a4a7b223          	sd	a0,-1468(a5) # 8000b898 <_ZN15MemoryAllocator8freeHeadE>
        return;
    80002e5c:	00008067          	ret
    if(!prev) {
    80002e60:	02048a63          	beqz	s1,80002e94 <_ZN15MemoryAllocator15insertFreeBlockEPv+0x7c>
        prev->next = newBlock;
    80002e64:	00a4b423          	sd	a0,8(s1)
        newBlock->next=cur;
    80002e68:	00f53423          	sd	a5,8(a0)
    mergeBlocks(newBlock);
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	f5c080e7          	jalr	-164(ra) # 80002dc8 <_ZN15MemoryAllocator11mergeBlocksEPv>
    mergeBlocks(prev);
    80002e74:	00048513          	mv	a0,s1
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	f50080e7          	jalr	-176(ra) # 80002dc8 <_ZN15MemoryAllocator11mergeBlocksEPv>
}
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	01013403          	ld	s0,16(sp)
    80002e88:	00813483          	ld	s1,8(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret
        newBlock->next=freeHead;
    80002e94:	00e53423          	sd	a4,8(a0)
        freeHead = newBlock;
    80002e98:	00009797          	auipc	a5,0x9
    80002e9c:	a0a7b023          	sd	a0,-1536(a5) # 8000b898 <_ZN15MemoryAllocator8freeHeadE>
    80002ea0:	fcdff06f          	j	80002e6c <_ZN15MemoryAllocator15insertFreeBlockEPv+0x54>

0000000080002ea4 <_ZN15MemoryAllocator8mem_freeEPv>:
int MemoryAllocator::mem_free(void * block) {
    80002ea4:	fe010113          	addi	sp,sp,-32
    80002ea8:	00113c23          	sd	ra,24(sp)
    80002eac:	00813823          	sd	s0,16(sp)
    80002eb0:	00913423          	sd	s1,8(sp)
    80002eb4:	02010413          	addi	s0,sp,32
    80002eb8:	00050493          	mv	s1,a0
    init();
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	dcc080e7          	jalr	-564(ra) # 80002c88 <_ZN15MemoryAllocator4initEv>
    MemBlock* cur = usedHead, *prev=nullptr;
    80002ec4:	00009517          	auipc	a0,0x9
    80002ec8:	9dc53503          	ld	a0,-1572(a0) # 8000b8a0 <_ZN15MemoryAllocator8usedHeadE>
    80002ecc:	00000693          	li	a3,0
    for(;cur;prev=cur,cur=cur->next)
    80002ed0:	00050c63          	beqz	a0,80002ee8 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
        if((char*)cur+2*sizeof(MemBlock) == (char*) block)
    80002ed4:	02050713          	addi	a4,a0,32
    80002ed8:	00970863          	beq	a4,s1,80002ee8 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
    for(;cur;prev=cur,cur=cur->next)
    80002edc:	00050693          	mv	a3,a0
    80002ee0:	00853503          	ld	a0,8(a0)
    80002ee4:	fedff06f          	j	80002ed0 <_ZN15MemoryAllocator8mem_freeEPv+0x2c>
    if(!cur || (char*)cur+2*sizeof(MemBlock) != (char*) block || ((char*)cur - sizeof(MemBlock)<0))
    80002ee8:	04050663          	beqz	a0,80002f34 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    80002eec:	02050713          	addi	a4,a0,32
    80002ef0:	04971663          	bne	a4,s1,80002f3c <_ZN15MemoryAllocator8mem_freeEPv+0x98>
    if(prev)
    80002ef4:	02068863          	beqz	a3,80002f24 <_ZN15MemoryAllocator8mem_freeEPv+0x80>
        prev->next=cur->next;
    80002ef8:	00853703          	ld	a4,8(a0)
    80002efc:	00e6b423          	sd	a4,8(a3)
    insertFreeBlock(cur); // fix
    80002f00:	f0050513          	addi	a0,a0,-256
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	f14080e7          	jalr	-236(ra) # 80002e18 <_ZN15MemoryAllocator15insertFreeBlockEPv>
    return 0;
    80002f0c:	00000513          	li	a0,0
}
    80002f10:	01813083          	ld	ra,24(sp)
    80002f14:	01013403          	ld	s0,16(sp)
    80002f18:	00813483          	ld	s1,8(sp)
    80002f1c:	02010113          	addi	sp,sp,32
    80002f20:	00008067          	ret
        usedHead=cur->next;
    80002f24:	00853703          	ld	a4,8(a0)
    80002f28:	00009797          	auipc	a5,0x9
    80002f2c:	96e7bc23          	sd	a4,-1672(a5) # 8000b8a0 <_ZN15MemoryAllocator8usedHeadE>
    80002f30:	fd1ff06f          	j	80002f00 <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        return -1;
    80002f34:	fff00513          	li	a0,-1
    80002f38:	fd9ff06f          	j	80002f10 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
    80002f3c:	fff00513          	li	a0,-1
    80002f40:	fd1ff06f          	j	80002f10 <_ZN15MemoryAllocator8mem_freeEPv+0x6c>

0000000080002f44 <_ZN15MemoryAllocator7kmallocEm>:

void *MemoryAllocator::kmalloc(size_t size) {
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00113423          	sd	ra,8(sp)
    80002f4c:	00813023          	sd	s0,0(sp)
    80002f50:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	d9c080e7          	jalr	-612(ra) # 80002cf0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002f5c:	00813083          	ld	ra,8(sp)
    80002f60:	00013403          	ld	s0,0(sp)
    80002f64:	01010113          	addi	sp,sp,16
    80002f68:	00008067          	ret

0000000080002f6c <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void * ptr) {
    80002f6c:	ff010113          	addi	sp,sp,-16
    80002f70:	00113423          	sd	ra,8(sp)
    80002f74:	00813023          	sd	s0,0(sp)
    80002f78:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(ptr);
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	f28080e7          	jalr	-216(ra) # 80002ea4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002f84:	00813083          	ld	ra,8(sp)
    80002f88:	00013403          	ld	s0,0(sp)
    80002f8c:	01010113          	addi	sp,sp,16
    80002f90:	00008067          	ret

0000000080002f94 <_ZN15MemoryAllocator9memAllocHEv>:

void MemoryAllocator::memAllocH() {
    80002f94:	ff010113          	addi	sp,sp,-16
    80002f98:	00113423          	sd	ra,8(sp)
    80002f9c:	00813023          	sd	s0,0(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    size_t size;
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80002fa4:	00058513          	mv	a0,a1
    size*=MEM_BLOCK_SIZE;
    void* adr = kmalloc(size);
    80002fa8:	00651513          	slli	a0,a0,0x6
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	f98080e7          	jalr	-104(ra) # 80002f44 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)adr));
    80002fb4:	00050513          	mv	a0,a0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80002fb8:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80002fbc:	00009717          	auipc	a4,0x9
    80002fc0:	82c73703          	ld	a4,-2004(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002fc4:	00073703          	ld	a4,0(a4)
    80002fc8:	05073703          	ld	a4,80(a4)
    80002fcc:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80002fd0:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80002fd4:	00078593          	mv	a1,a5
    Riscv::w_a0_sscratch();
}
    80002fd8:	00813083          	ld	ra,8(sp)
    80002fdc:	00013403          	ld	s0,0(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <_ZN15MemoryAllocator8memFreeHEv>:

void MemoryAllocator::memFreeH() {
    80002fe8:	ff010113          	addi	sp,sp,-16
    80002fec:	00113423          	sd	ra,8(sp)
    80002ff0:	00813023          	sd	s0,0(sp)
    80002ff4:	01010413          	addi	s0,sp,16
    uint64 adr;
    __asm__ volatile("mv %0, a1" : "=r"(adr));
    80002ff8:	00058513          	mv	a0,a1
    uint64 ret = kfree((void*) adr);
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	f70080e7          	jalr	-144(ra) # 80002f6c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" :: "r"(ret));
    80003004:	00050513          	mv	a0,a0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003008:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    8000300c:	00008717          	auipc	a4,0x8
    80003010:	7dc73703          	ld	a4,2012(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003014:	00073703          	ld	a4,0(a4)
    80003018:	05073703          	ld	a4,80(a4)
    8000301c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80003020:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80003024:	00078593          	mv	a1,a5
    Riscv::w_a0_sscratch();
}
    80003028:	00813083          	ld	ra,8(sp)
    8000302c:	00013403          	ld	s0,0(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret

0000000080003038 <_ZN13KernelConsole6__getcEv>:
    char c = __getc();
    __asm__ volatile ("mv a0, %0" :: "r" ((uint64)c));
    Riscv::w_a0_sscratch();
}

char KernelConsole::__getc() {
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00113423          	sd	ra,8(sp)
    80003040:	00813023          	sd	s0,0(sp)
    80003044:	01010413          	addi	s0,sp,16
    char c = inputBuffer->get();
    80003048:	00009517          	auipc	a0,0x9
    8000304c:	86053503          	ld	a0,-1952(a0) # 8000b8a8 <_ZN13KernelConsole11inputBufferE>
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	788080e7          	jalr	1928(ra) # 800027d8 <_ZN13ConsoleBuffer3getEv>
    return c;
}
    80003058:	00813083          	ld	ra,8(sp)
    8000305c:	00013403          	ld	s0,0(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret

0000000080003068 <_ZN13KernelConsole5getcHEv>:
void KernelConsole::getcH() {
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00113423          	sd	ra,8(sp)
    80003070:	00813023          	sd	s0,0(sp)
    80003074:	01010413          	addi	s0,sp,16
    char c = __getc();
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	fc0080e7          	jalr	-64(ra) # 80003038 <_ZN13KernelConsole6__getcEv>
    __asm__ volatile ("mv a0, %0" :: "r" ((uint64)c));
    80003080:	00050513          	mv	a0,a0
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80003084:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80003088:	00008717          	auipc	a4,0x8
    8000308c:	76073703          	ld	a4,1888(a4) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003090:	00073703          	ld	a4,0(a4)
    80003094:	05073703          	ld	a4,80(a4)
    80003098:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    8000309c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    800030a0:	00078593          	mv	a1,a5
}
    800030a4:	00813083          	ld	ra,8(sp)
    800030a8:	00013403          	ld	s0,0(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZN13KernelConsole6__putcEc>:

void KernelConsole::__putc(char c) {
    800030b4:	fe010113          	addi	sp,sp,-32
    800030b8:	00113c23          	sd	ra,24(sp)
    800030bc:	00813823          	sd	s0,16(sp)
    800030c0:	00913423          	sd	s1,8(sp)
    800030c4:	02010413          	addi	s0,sp,32
    800030c8:	00050593          	mv	a1,a0
    outputBuffer->put(c);
    800030cc:	00008497          	auipc	s1,0x8
    800030d0:	7dc48493          	addi	s1,s1,2012 # 8000b8a8 <_ZN13KernelConsole11inputBufferE>
    800030d4:	0084b503          	ld	a0,8(s1)
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	66c080e7          	jalr	1644(ra) # 80002744 <_ZN13ConsoleBuffer3putEc>
    toPrint++;
    800030e0:	0104b783          	ld	a5,16(s1)
    800030e4:	00178793          	addi	a5,a5,1
    800030e8:	00f4b823          	sd	a5,16(s1)
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret

0000000080003100 <_ZN13KernelConsole5putcHEv>:
void KernelConsole::putcH() {
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00113423          	sd	ra,8(sp)
    80003108:	00813023          	sd	s0,0(sp)
    8000310c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(c));
    80003110:	00058513          	mv	a0,a1
    __putc(c);
    80003114:	0ff57513          	andi	a0,a0,255
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	f9c080e7          	jalr	-100(ra) # 800030b4 <_ZN13KernelConsole6__putcEc>
}
    80003120:	00813083          	ld	ra,8(sp)
    80003124:	00013403          	ld	s0,0(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret

0000000080003130 <_ZN13KernelConsole14consoleWrapperEPv>:

void KernelConsole::consoleWrapper(void *p) {
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	00813823          	sd	s0,16(sp)
    8000313c:	00913423          	sd	s1,8(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	0680006f          	j	800031ac <_ZN13KernelConsole14consoleWrapperEPv+0x7c>
    while(true){
        if(toEnd && toPrint==0) {
            PCB::running->changeState(PCB::FINISHED);
    80003148:	00008797          	auipc	a5,0x8
    8000314c:	6a07b783          	ld	a5,1696(a5) # 8000b7e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003150:	0007b783          	ld	a5,0(a5)
    uint64  getSleepingTime() const {return sleepingTime;}
    static void decreaseSleepingTime() {if(sleepyHead) sleepyHead->sleepingTime--;}
    bool isSleeping() const { return state==SLEEPING;}
    bool isSuspended() const {return state==SUSPENDED;}
    void setMainOrConsole(bool mc) { mainOrConsole=mc;}
    void changeState(State s) { state=s;}
    80003154:	00300713          	li	a4,3
    80003158:	00e7a223          	sw	a4,4(a5)
            thread_exit();
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	1d0080e7          	jalr	464(ra) # 8000132c <_Z11thread_exitv>
        }

        if((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
    80003164:	00008797          	auipc	a5,0x8
    80003168:	6347b783          	ld	a5,1588(a5) # 8000b798 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000316c:	0007b783          	ld	a5,0(a5)
    80003170:	0007c783          	lbu	a5,0(a5)
    80003174:	0207f793          	andi	a5,a5,32
    80003178:	04078863          	beqz	a5,800031c8 <_ZN13KernelConsole14consoleWrapperEPv+0x98>
            char c = outputBuffer->get();
    8000317c:	00008497          	auipc	s1,0x8
    80003180:	72c48493          	addi	s1,s1,1836 # 8000b8a8 <_ZN13KernelConsole11inputBufferE>
    80003184:	0084b503          	ld	a0,8(s1)
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	650080e7          	jalr	1616(ra) # 800027d8 <_ZN13ConsoleBuffer3getEv>
            *(char*)CONSOLE_TX_DATA=c;
    80003190:	00008797          	auipc	a5,0x8
    80003194:	6287b783          	ld	a5,1576(a5) # 8000b7b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003198:	0007b783          	ld	a5,0(a5)
    8000319c:	00a78023          	sb	a0,0(a5)
            toPrint--;
    800031a0:	0104b783          	ld	a5,16(s1)
    800031a4:	fff78793          	addi	a5,a5,-1
    800031a8:	00f4b823          	sd	a5,16(s1)
        if(toEnd && toPrint==0) {
    800031ac:	00008797          	auipc	a5,0x8
    800031b0:	7147c783          	lbu	a5,1812(a5) # 8000b8c0 <_ZN13KernelConsole5toEndE>
    800031b4:	fa0788e3          	beqz	a5,80003164 <_ZN13KernelConsole14consoleWrapperEPv+0x34>
    800031b8:	00008797          	auipc	a5,0x8
    800031bc:	7007b783          	ld	a5,1792(a5) # 8000b8b8 <_ZN13KernelConsole7toPrintE>
    800031c0:	fa0792e3          	bnez	a5,80003164 <_ZN13KernelConsole14consoleWrapperEPv+0x34>
    800031c4:	f85ff06f          	j	80003148 <_ZN13KernelConsole14consoleWrapperEPv+0x18>
        }
        else
            thread_dispatch();
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	18c080e7          	jalr	396(ra) # 80001354 <_Z15thread_dispatchv>
    800031d0:	fddff06f          	j	800031ac <_ZN13KernelConsole14consoleWrapperEPv+0x7c>

00000000800031d4 <_ZN13KernelConsole4initEv>:
    }
}

void KernelConsole::init() {
    if(!initialized){
    800031d4:	00008797          	auipc	a5,0x8
    800031d8:	6ed7c783          	lbu	a5,1773(a5) # 8000b8c1 <_ZN13KernelConsole11initializedE>
    800031dc:	00078463          	beqz	a5,800031e4 <_ZN13KernelConsole4initEv+0x10>
    800031e0:	00008067          	ret
void KernelConsole::init() {
    800031e4:	fe010113          	addi	sp,sp,-32
    800031e8:	00113c23          	sd	ra,24(sp)
    800031ec:	00813823          	sd	s0,16(sp)
    800031f0:	00913423          	sd	s1,8(sp)
    800031f4:	01213023          	sd	s2,0(sp)
    800031f8:	02010413          	addi	s0,sp,32
        inputBuffer=new ConsoleBuffer(4096);
    800031fc:	00001537          	lui	a0,0x1
    80003200:	03050513          	addi	a0,a0,48 # 1030 <_entry-0x7fffefd0>
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	b88080e7          	jalr	-1144(ra) # 80001d8c <_Znwm>
    8000320c:	00050493          	mv	s1,a0
    80003210:	000015b7          	lui	a1,0x1
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	420080e7          	jalr	1056(ra) # 80002634 <_ZN13ConsoleBufferC1Ei>
    8000321c:	00008797          	auipc	a5,0x8
    80003220:	6897b623          	sd	s1,1676(a5) # 8000b8a8 <_ZN13KernelConsole11inputBufferE>
        outputBuffer=new ConsoleBuffer(4096);
    80003224:	00001537          	lui	a0,0x1
    80003228:	03050513          	addi	a0,a0,48 # 1030 <_entry-0x7fffefd0>
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	b60080e7          	jalr	-1184(ra) # 80001d8c <_Znwm>
    80003234:	00050493          	mv	s1,a0
    80003238:	000015b7          	lui	a1,0x1
    8000323c:	fffff097          	auipc	ra,0xfffff
    80003240:	3f8080e7          	jalr	1016(ra) # 80002634 <_ZN13ConsoleBufferC1Ei>
    80003244:	00008797          	auipc	a5,0x8
    80003248:	66478793          	addi	a5,a5,1636 # 8000b8a8 <_ZN13KernelConsole11inputBufferE>
    8000324c:	0097b423          	sd	s1,8(a5)
        initialized=1;
    80003250:	00100713          	li	a4,1
    80003254:	00e78ca3          	sb	a4,25(a5)
        toEnd=0;
    80003258:	00078c23          	sb	zero,24(a5)
    }
}
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	00013903          	ld	s2,0(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret
    80003274:	00050913          	mv	s2,a0
        inputBuffer=new ConsoleBuffer(4096);
    80003278:	00048513          	mv	a0,s1
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	b38080e7          	jalr	-1224(ra) # 80001db4 <_ZdlPv>
    80003284:	00090513          	mv	a0,s2
    80003288:	00009097          	auipc	ra,0x9
    8000328c:	760080e7          	jalr	1888(ra) # 8000c9e8 <_Unwind_Resume>
    80003290:	00050913          	mv	s2,a0
        outputBuffer=new ConsoleBuffer(4096);
    80003294:	00048513          	mv	a0,s1
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	b1c080e7          	jalr	-1252(ra) # 80001db4 <_ZdlPv>
    800032a0:	00090513          	mv	a0,s2
    800032a4:	00009097          	auipc	ra,0x9
    800032a8:	744080e7          	jalr	1860(ra) # 8000c9e8 <_Unwind_Resume>

00000000800032ac <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00113c23          	sd	ra,24(sp)
    800032b4:	00813823          	sd	s0,16(sp)
    800032b8:	00913423          	sd	s1,8(sp)
    800032bc:	01213023          	sd	s2,0(sp)
    800032c0:	02010413          	addi	s0,sp,32
    800032c4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800032c8:	00000913          	li	s2,0
    800032cc:	00c0006f          	j	800032d8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	084080e7          	jalr	132(ra) # 80001354 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800032d8:	ffffe097          	auipc	ra,0xffffe
    800032dc:	1cc080e7          	jalr	460(ra) # 800014a4 <_Z4getcv>
    800032e0:	0005059b          	sext.w	a1,a0
    800032e4:	01b00793          	li	a5,27
    800032e8:	02f58a63          	beq	a1,a5,8000331c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800032ec:	0084b503          	ld	a0,8(s1)
    800032f0:	00003097          	auipc	ra,0x3
    800032f4:	2ac080e7          	jalr	684(ra) # 8000659c <_ZN6Buffer3putEi>
        i++;
    800032f8:	0019071b          	addiw	a4,s2,1
    800032fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003300:	0004a683          	lw	a3,0(s1)
    80003304:	0026979b          	slliw	a5,a3,0x2
    80003308:	00d787bb          	addw	a5,a5,a3
    8000330c:	0017979b          	slliw	a5,a5,0x1
    80003310:	02f767bb          	remw	a5,a4,a5
    80003314:	fc0792e3          	bnez	a5,800032d8 <_ZL16producerKeyboardPv+0x2c>
    80003318:	fb9ff06f          	j	800032d0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000331c:	00100793          	li	a5,1
    80003320:	00008717          	auipc	a4,0x8
    80003324:	5af72423          	sw	a5,1448(a4) # 8000b8c8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003328:	02100593          	li	a1,33
    8000332c:	0084b503          	ld	a0,8(s1)
    80003330:	00003097          	auipc	ra,0x3
    80003334:	26c080e7          	jalr	620(ra) # 8000659c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003338:	0104b503          	ld	a0,16(s1)
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	0ec080e7          	jalr	236(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    80003344:	01813083          	ld	ra,24(sp)
    80003348:	01013403          	ld	s0,16(sp)
    8000334c:	00813483          	ld	s1,8(sp)
    80003350:	00013903          	ld	s2,0(sp)
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00008067          	ret

000000008000335c <_ZL8producerPv>:

static void producer(void *arg) {
    8000335c:	fe010113          	addi	sp,sp,-32
    80003360:	00113c23          	sd	ra,24(sp)
    80003364:	00813823          	sd	s0,16(sp)
    80003368:	00913423          	sd	s1,8(sp)
    8000336c:	01213023          	sd	s2,0(sp)
    80003370:	02010413          	addi	s0,sp,32
    80003374:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003378:	00000913          	li	s2,0
    8000337c:	00c0006f          	j	80003388 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003380:	ffffe097          	auipc	ra,0xffffe
    80003384:	fd4080e7          	jalr	-44(ra) # 80001354 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003388:	00008797          	auipc	a5,0x8
    8000338c:	5407a783          	lw	a5,1344(a5) # 8000b8c8 <_ZL9threadEnd>
    80003390:	02079e63          	bnez	a5,800033cc <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003394:	0004a583          	lw	a1,0(s1)
    80003398:	0305859b          	addiw	a1,a1,48
    8000339c:	0084b503          	ld	a0,8(s1)
    800033a0:	00003097          	auipc	ra,0x3
    800033a4:	1fc080e7          	jalr	508(ra) # 8000659c <_ZN6Buffer3putEi>
        i++;
    800033a8:	0019071b          	addiw	a4,s2,1
    800033ac:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033b0:	0004a683          	lw	a3,0(s1)
    800033b4:	0026979b          	slliw	a5,a3,0x2
    800033b8:	00d787bb          	addw	a5,a5,a3
    800033bc:	0017979b          	slliw	a5,a5,0x1
    800033c0:	02f767bb          	remw	a5,a4,a5
    800033c4:	fc0792e3          	bnez	a5,80003388 <_ZL8producerPv+0x2c>
    800033c8:	fb9ff06f          	j	80003380 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800033cc:	0104b503          	ld	a0,16(s1)
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	058080e7          	jalr	88(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    800033d8:	01813083          	ld	ra,24(sp)
    800033dc:	01013403          	ld	s0,16(sp)
    800033e0:	00813483          	ld	s1,8(sp)
    800033e4:	00013903          	ld	s2,0(sp)
    800033e8:	02010113          	addi	sp,sp,32
    800033ec:	00008067          	ret

00000000800033f0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800033f0:	fd010113          	addi	sp,sp,-48
    800033f4:	02113423          	sd	ra,40(sp)
    800033f8:	02813023          	sd	s0,32(sp)
    800033fc:	00913c23          	sd	s1,24(sp)
    80003400:	01213823          	sd	s2,16(sp)
    80003404:	01313423          	sd	s3,8(sp)
    80003408:	03010413          	addi	s0,sp,48
    8000340c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003410:	00000993          	li	s3,0
    80003414:	01c0006f          	j	80003430 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003418:	ffffe097          	auipc	ra,0xffffe
    8000341c:	f3c080e7          	jalr	-196(ra) # 80001354 <_Z15thread_dispatchv>
    80003420:	0500006f          	j	80003470 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003424:	00a00513          	li	a0,10
    80003428:	ffffe097          	auipc	ra,0xffffe
    8000342c:	058080e7          	jalr	88(ra) # 80001480 <_Z4putcc>
    while (!threadEnd) {
    80003430:	00008797          	auipc	a5,0x8
    80003434:	4987a783          	lw	a5,1176(a5) # 8000b8c8 <_ZL9threadEnd>
    80003438:	06079063          	bnez	a5,80003498 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000343c:	00893503          	ld	a0,8(s2)
    80003440:	00003097          	auipc	ra,0x3
    80003444:	1ec080e7          	jalr	492(ra) # 8000662c <_ZN6Buffer3getEv>
        i++;
    80003448:	0019849b          	addiw	s1,s3,1
    8000344c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003450:	0ff57513          	andi	a0,a0,255
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	02c080e7          	jalr	44(ra) # 80001480 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000345c:	00092703          	lw	a4,0(s2)
    80003460:	0027179b          	slliw	a5,a4,0x2
    80003464:	00e787bb          	addw	a5,a5,a4
    80003468:	02f4e7bb          	remw	a5,s1,a5
    8000346c:	fa0786e3          	beqz	a5,80003418 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003470:	05000793          	li	a5,80
    80003474:	02f4e4bb          	remw	s1,s1,a5
    80003478:	fa049ce3          	bnez	s1,80003430 <_ZL8consumerPv+0x40>
    8000347c:	fa9ff06f          	j	80003424 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003480:	00893503          	ld	a0,8(s2)
    80003484:	00003097          	auipc	ra,0x3
    80003488:	1a8080e7          	jalr	424(ra) # 8000662c <_ZN6Buffer3getEv>
        putc(key);
    8000348c:	0ff57513          	andi	a0,a0,255
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	ff0080e7          	jalr	-16(ra) # 80001480 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003498:	00893503          	ld	a0,8(s2)
    8000349c:	00003097          	auipc	ra,0x3
    800034a0:	21c080e7          	jalr	540(ra) # 800066b8 <_ZN6Buffer6getCntEv>
    800034a4:	fca04ee3          	bgtz	a0,80003480 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800034a8:	01093503          	ld	a0,16(s2)
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	f7c080e7          	jalr	-132(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    800034b4:	02813083          	ld	ra,40(sp)
    800034b8:	02013403          	ld	s0,32(sp)
    800034bc:	01813483          	ld	s1,24(sp)
    800034c0:	01013903          	ld	s2,16(sp)
    800034c4:	00813983          	ld	s3,8(sp)
    800034c8:	03010113          	addi	sp,sp,48
    800034cc:	00008067          	ret

00000000800034d0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800034d0:	f9010113          	addi	sp,sp,-112
    800034d4:	06113423          	sd	ra,104(sp)
    800034d8:	06813023          	sd	s0,96(sp)
    800034dc:	04913c23          	sd	s1,88(sp)
    800034e0:	05213823          	sd	s2,80(sp)
    800034e4:	05313423          	sd	s3,72(sp)
    800034e8:	05413023          	sd	s4,64(sp)
    800034ec:	03513c23          	sd	s5,56(sp)
    800034f0:	03613823          	sd	s6,48(sp)
    800034f4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800034f8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800034fc:	00006517          	auipc	a0,0x6
    80003500:	b2450513          	addi	a0,a0,-1244 # 80009020 <CONSOLE_STATUS+0x10>
    80003504:	00002097          	auipc	ra,0x2
    80003508:	220080e7          	jalr	544(ra) # 80005724 <_Z11printStringPKc>
    getString(input, 30);
    8000350c:	01e00593          	li	a1,30
    80003510:	fa040493          	addi	s1,s0,-96
    80003514:	00048513          	mv	a0,s1
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	294080e7          	jalr	660(ra) # 800057ac <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003520:	00048513          	mv	a0,s1
    80003524:	00002097          	auipc	ra,0x2
    80003528:	360080e7          	jalr	864(ra) # 80005884 <_Z11stringToIntPKc>
    8000352c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003530:	00006517          	auipc	a0,0x6
    80003534:	b1050513          	addi	a0,a0,-1264 # 80009040 <CONSOLE_STATUS+0x30>
    80003538:	00002097          	auipc	ra,0x2
    8000353c:	1ec080e7          	jalr	492(ra) # 80005724 <_Z11printStringPKc>
    getString(input, 30);
    80003540:	01e00593          	li	a1,30
    80003544:	00048513          	mv	a0,s1
    80003548:	00002097          	auipc	ra,0x2
    8000354c:	264080e7          	jalr	612(ra) # 800057ac <_Z9getStringPci>
    n = stringToInt(input);
    80003550:	00048513          	mv	a0,s1
    80003554:	00002097          	auipc	ra,0x2
    80003558:	330080e7          	jalr	816(ra) # 80005884 <_Z11stringToIntPKc>
    8000355c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003560:	00006517          	auipc	a0,0x6
    80003564:	b0050513          	addi	a0,a0,-1280 # 80009060 <CONSOLE_STATUS+0x50>
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	1bc080e7          	jalr	444(ra) # 80005724 <_Z11printStringPKc>
    80003570:	00000613          	li	a2,0
    80003574:	00a00593          	li	a1,10
    80003578:	00090513          	mv	a0,s2
    8000357c:	00002097          	auipc	ra,0x2
    80003580:	358080e7          	jalr	856(ra) # 800058d4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003584:	00006517          	auipc	a0,0x6
    80003588:	af450513          	addi	a0,a0,-1292 # 80009078 <CONSOLE_STATUS+0x68>
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	198080e7          	jalr	408(ra) # 80005724 <_Z11printStringPKc>
    80003594:	00000613          	li	a2,0
    80003598:	00a00593          	li	a1,10
    8000359c:	00048513          	mv	a0,s1
    800035a0:	00002097          	auipc	ra,0x2
    800035a4:	334080e7          	jalr	820(ra) # 800058d4 <_Z8printIntiii>
    printString(".\n");
    800035a8:	00006517          	auipc	a0,0x6
    800035ac:	ae850513          	addi	a0,a0,-1304 # 80009090 <CONSOLE_STATUS+0x80>
    800035b0:	00002097          	auipc	ra,0x2
    800035b4:	174080e7          	jalr	372(ra) # 80005724 <_Z11printStringPKc>
    if(threadNum > n) {
    800035b8:	0324c463          	blt	s1,s2,800035e0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800035bc:	03205c63          	blez	s2,800035f4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800035c0:	03800513          	li	a0,56
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	7c8080e7          	jalr	1992(ra) # 80001d8c <_Znwm>
    800035cc:	00050a13          	mv	s4,a0
    800035d0:	00048593          	mv	a1,s1
    800035d4:	00003097          	auipc	ra,0x3
    800035d8:	f2c080e7          	jalr	-212(ra) # 80006500 <_ZN6BufferC1Ei>
    800035dc:	0300006f          	j	8000360c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800035e0:	00006517          	auipc	a0,0x6
    800035e4:	ab850513          	addi	a0,a0,-1352 # 80009098 <CONSOLE_STATUS+0x88>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	13c080e7          	jalr	316(ra) # 80005724 <_Z11printStringPKc>
        return;
    800035f0:	0140006f          	j	80003604 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035f4:	00006517          	auipc	a0,0x6
    800035f8:	ae450513          	addi	a0,a0,-1308 # 800090d8 <CONSOLE_STATUS+0xc8>
    800035fc:	00002097          	auipc	ra,0x2
    80003600:	128080e7          	jalr	296(ra) # 80005724 <_Z11printStringPKc>
        return;
    80003604:	000b0113          	mv	sp,s6
    80003608:	1500006f          	j	80003758 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000360c:	00000593          	li	a1,0
    80003610:	00008517          	auipc	a0,0x8
    80003614:	2c050513          	addi	a0,a0,704 # 8000b8d0 <_ZL10waitForAll>
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	d80080e7          	jalr	-640(ra) # 80001398 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003620:	00391793          	slli	a5,s2,0x3
    80003624:	00f78793          	addi	a5,a5,15
    80003628:	ff07f793          	andi	a5,a5,-16
    8000362c:	40f10133          	sub	sp,sp,a5
    80003630:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003634:	0019071b          	addiw	a4,s2,1
    80003638:	00171793          	slli	a5,a4,0x1
    8000363c:	00e787b3          	add	a5,a5,a4
    80003640:	00379793          	slli	a5,a5,0x3
    80003644:	00f78793          	addi	a5,a5,15
    80003648:	ff07f793          	andi	a5,a5,-16
    8000364c:	40f10133          	sub	sp,sp,a5
    80003650:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003654:	00191613          	slli	a2,s2,0x1
    80003658:	012607b3          	add	a5,a2,s2
    8000365c:	00379793          	slli	a5,a5,0x3
    80003660:	00f987b3          	add	a5,s3,a5
    80003664:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003668:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000366c:	00008717          	auipc	a4,0x8
    80003670:	26473703          	ld	a4,612(a4) # 8000b8d0 <_ZL10waitForAll>
    80003674:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003678:	00078613          	mv	a2,a5
    8000367c:	00000597          	auipc	a1,0x0
    80003680:	d7458593          	addi	a1,a1,-652 # 800033f0 <_ZL8consumerPv>
    80003684:	f9840513          	addi	a0,s0,-104
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	c28080e7          	jalr	-984(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003690:	00000493          	li	s1,0
    80003694:	0280006f          	j	800036bc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003698:	00000597          	auipc	a1,0x0
    8000369c:	c1458593          	addi	a1,a1,-1004 # 800032ac <_ZL16producerKeyboardPv>
                      data + i);
    800036a0:	00179613          	slli	a2,a5,0x1
    800036a4:	00f60633          	add	a2,a2,a5
    800036a8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800036ac:	00c98633          	add	a2,s3,a2
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	c00080e7          	jalr	-1024(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800036b8:	0014849b          	addiw	s1,s1,1
    800036bc:	0524d263          	bge	s1,s2,80003700 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800036c0:	00149793          	slli	a5,s1,0x1
    800036c4:	009787b3          	add	a5,a5,s1
    800036c8:	00379793          	slli	a5,a5,0x3
    800036cc:	00f987b3          	add	a5,s3,a5
    800036d0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800036d4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800036d8:	00008717          	auipc	a4,0x8
    800036dc:	1f873703          	ld	a4,504(a4) # 8000b8d0 <_ZL10waitForAll>
    800036e0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800036e4:	00048793          	mv	a5,s1
    800036e8:	00349513          	slli	a0,s1,0x3
    800036ec:	00aa8533          	add	a0,s5,a0
    800036f0:	fa9054e3          	blez	s1,80003698 <_Z22producerConsumer_C_APIv+0x1c8>
    800036f4:	00000597          	auipc	a1,0x0
    800036f8:	c6858593          	addi	a1,a1,-920 # 8000335c <_ZL8producerPv>
    800036fc:	fa5ff06f          	j	800036a0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	c54080e7          	jalr	-940(ra) # 80001354 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003708:	00000493          	li	s1,0
    8000370c:	00994e63          	blt	s2,s1,80003728 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003710:	00008517          	auipc	a0,0x8
    80003714:	1c053503          	ld	a0,448(a0) # 8000b8d0 <_ZL10waitForAll>
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	ce4080e7          	jalr	-796(ra) # 800013fc <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003720:	0014849b          	addiw	s1,s1,1
    80003724:	fe9ff06f          	j	8000370c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003728:	00008517          	auipc	a0,0x8
    8000372c:	1a853503          	ld	a0,424(a0) # 8000b8d0 <_ZL10waitForAll>
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	ca0080e7          	jalr	-864(ra) # 800013d0 <_Z9sem_closeP4_sem>
    delete buffer;
    80003738:	000a0e63          	beqz	s4,80003754 <_Z22producerConsumer_C_APIv+0x284>
    8000373c:	000a0513          	mv	a0,s4
    80003740:	00003097          	auipc	ra,0x3
    80003744:	000080e7          	jalr	ra # 80006740 <_ZN6BufferD1Ev>
    80003748:	000a0513          	mv	a0,s4
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	668080e7          	jalr	1640(ra) # 80001db4 <_ZdlPv>
    80003754:	000b0113          	mv	sp,s6

}
    80003758:	f9040113          	addi	sp,s0,-112
    8000375c:	06813083          	ld	ra,104(sp)
    80003760:	06013403          	ld	s0,96(sp)
    80003764:	05813483          	ld	s1,88(sp)
    80003768:	05013903          	ld	s2,80(sp)
    8000376c:	04813983          	ld	s3,72(sp)
    80003770:	04013a03          	ld	s4,64(sp)
    80003774:	03813a83          	ld	s5,56(sp)
    80003778:	03013b03          	ld	s6,48(sp)
    8000377c:	07010113          	addi	sp,sp,112
    80003780:	00008067          	ret
    80003784:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003788:	000a0513          	mv	a0,s4
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	628080e7          	jalr	1576(ra) # 80001db4 <_ZdlPv>
    80003794:	00048513          	mv	a0,s1
    80003798:	00009097          	auipc	ra,0x9
    8000379c:	250080e7          	jalr	592(ra) # 8000c9e8 <_Unwind_Resume>

00000000800037a0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00113c23          	sd	ra,24(sp)
    800037a8:	00813823          	sd	s0,16(sp)
    800037ac:	00913423          	sd	s1,8(sp)
    800037b0:	01213023          	sd	s2,0(sp)
    800037b4:	02010413          	addi	s0,sp,32
    800037b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800037bc:	00100793          	li	a5,1
    800037c0:	02a7f863          	bgeu	a5,a0,800037f0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800037c4:	00a00793          	li	a5,10
    800037c8:	02f577b3          	remu	a5,a0,a5
    800037cc:	02078e63          	beqz	a5,80003808 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800037d0:	fff48513          	addi	a0,s1,-1
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	fcc080e7          	jalr	-52(ra) # 800037a0 <_ZL9fibonaccim>
    800037dc:	00050913          	mv	s2,a0
    800037e0:	ffe48513          	addi	a0,s1,-2
    800037e4:	00000097          	auipc	ra,0x0
    800037e8:	fbc080e7          	jalr	-68(ra) # 800037a0 <_ZL9fibonaccim>
    800037ec:	00a90533          	add	a0,s2,a0
}
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	00013903          	ld	s2,0(sp)
    80003800:	02010113          	addi	sp,sp,32
    80003804:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	b4c080e7          	jalr	-1204(ra) # 80001354 <_Z15thread_dispatchv>
    80003810:	fc1ff06f          	j	800037d0 <_ZL9fibonaccim+0x30>

0000000080003814 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003814:	fe010113          	addi	sp,sp,-32
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	00813823          	sd	s0,16(sp)
    80003820:	00913423          	sd	s1,8(sp)
    80003824:	01213023          	sd	s2,0(sp)
    80003828:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000382c:	00000913          	li	s2,0
    80003830:	0380006f          	j	80003868 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	b20080e7          	jalr	-1248(ra) # 80001354 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000383c:	00148493          	addi	s1,s1,1
    80003840:	000027b7          	lui	a5,0x2
    80003844:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003848:	0097ee63          	bltu	a5,s1,80003864 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000384c:	00000713          	li	a4,0
    80003850:	000077b7          	lui	a5,0x7
    80003854:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003858:	fce7eee3          	bltu	a5,a4,80003834 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000385c:	00170713          	addi	a4,a4,1
    80003860:	ff1ff06f          	j	80003850 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003864:	00190913          	addi	s2,s2,1
    80003868:	00900793          	li	a5,9
    8000386c:	0527e063          	bltu	a5,s2,800038ac <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003870:	00006517          	auipc	a0,0x6
    80003874:	89850513          	addi	a0,a0,-1896 # 80009108 <CONSOLE_STATUS+0xf8>
    80003878:	00002097          	auipc	ra,0x2
    8000387c:	eac080e7          	jalr	-340(ra) # 80005724 <_Z11printStringPKc>
    80003880:	00000613          	li	a2,0
    80003884:	00a00593          	li	a1,10
    80003888:	0009051b          	sext.w	a0,s2
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	048080e7          	jalr	72(ra) # 800058d4 <_Z8printIntiii>
    80003894:	00005517          	auipc	a0,0x5
    80003898:	7c450513          	addi	a0,a0,1988 # 80009058 <CONSOLE_STATUS+0x48>
    8000389c:	00002097          	auipc	ra,0x2
    800038a0:	e88080e7          	jalr	-376(ra) # 80005724 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800038a4:	00000493          	li	s1,0
    800038a8:	f99ff06f          	j	80003840 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	86450513          	addi	a0,a0,-1948 # 80009110 <CONSOLE_STATUS+0x100>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	e70080e7          	jalr	-400(ra) # 80005724 <_Z11printStringPKc>
    finishedA = true;
    800038bc:	00100793          	li	a5,1
    800038c0:	00008717          	auipc	a4,0x8
    800038c4:	00f70c23          	sb	a5,24(a4) # 8000b8d8 <_ZL9finishedA>
}
    800038c8:	01813083          	ld	ra,24(sp)
    800038cc:	01013403          	ld	s0,16(sp)
    800038d0:	00813483          	ld	s1,8(sp)
    800038d4:	00013903          	ld	s2,0(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret

00000000800038e0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00113c23          	sd	ra,24(sp)
    800038e8:	00813823          	sd	s0,16(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	01213023          	sd	s2,0(sp)
    800038f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800038f8:	00000913          	li	s2,0
    800038fc:	0380006f          	j	80003934 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	a54080e7          	jalr	-1452(ra) # 80001354 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003908:	00148493          	addi	s1,s1,1
    8000390c:	000027b7          	lui	a5,0x2
    80003910:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003914:	0097ee63          	bltu	a5,s1,80003930 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003918:	00000713          	li	a4,0
    8000391c:	000077b7          	lui	a5,0x7
    80003920:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003924:	fce7eee3          	bltu	a5,a4,80003900 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003928:	00170713          	addi	a4,a4,1
    8000392c:	ff1ff06f          	j	8000391c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003930:	00190913          	addi	s2,s2,1
    80003934:	00f00793          	li	a5,15
    80003938:	0527e063          	bltu	a5,s2,80003978 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000393c:	00005517          	auipc	a0,0x5
    80003940:	7e450513          	addi	a0,a0,2020 # 80009120 <CONSOLE_STATUS+0x110>
    80003944:	00002097          	auipc	ra,0x2
    80003948:	de0080e7          	jalr	-544(ra) # 80005724 <_Z11printStringPKc>
    8000394c:	00000613          	li	a2,0
    80003950:	00a00593          	li	a1,10
    80003954:	0009051b          	sext.w	a0,s2
    80003958:	00002097          	auipc	ra,0x2
    8000395c:	f7c080e7          	jalr	-132(ra) # 800058d4 <_Z8printIntiii>
    80003960:	00005517          	auipc	a0,0x5
    80003964:	6f850513          	addi	a0,a0,1784 # 80009058 <CONSOLE_STATUS+0x48>
    80003968:	00002097          	auipc	ra,0x2
    8000396c:	dbc080e7          	jalr	-580(ra) # 80005724 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003970:	00000493          	li	s1,0
    80003974:	f99ff06f          	j	8000390c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003978:	00005517          	auipc	a0,0x5
    8000397c:	7b050513          	addi	a0,a0,1968 # 80009128 <CONSOLE_STATUS+0x118>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	da4080e7          	jalr	-604(ra) # 80005724 <_Z11printStringPKc>
    finishedB = true;
    80003988:	00100793          	li	a5,1
    8000398c:	00008717          	auipc	a4,0x8
    80003990:	f4f706a3          	sb	a5,-179(a4) # 8000b8d9 <_ZL9finishedB>
    thread_dispatch();
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	9c0080e7          	jalr	-1600(ra) # 80001354 <_Z15thread_dispatchv>
}
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	00013903          	ld	s2,0(sp)
    800039ac:	02010113          	addi	sp,sp,32
    800039b0:	00008067          	ret

00000000800039b4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800039b4:	fe010113          	addi	sp,sp,-32
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00913423          	sd	s1,8(sp)
    800039c4:	01213023          	sd	s2,0(sp)
    800039c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800039cc:	00000493          	li	s1,0
    800039d0:	0400006f          	j	80003a10 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039d4:	00005517          	auipc	a0,0x5
    800039d8:	76450513          	addi	a0,a0,1892 # 80009138 <CONSOLE_STATUS+0x128>
    800039dc:	00002097          	auipc	ra,0x2
    800039e0:	d48080e7          	jalr	-696(ra) # 80005724 <_Z11printStringPKc>
    800039e4:	00000613          	li	a2,0
    800039e8:	00a00593          	li	a1,10
    800039ec:	00048513          	mv	a0,s1
    800039f0:	00002097          	auipc	ra,0x2
    800039f4:	ee4080e7          	jalr	-284(ra) # 800058d4 <_Z8printIntiii>
    800039f8:	00005517          	auipc	a0,0x5
    800039fc:	66050513          	addi	a0,a0,1632 # 80009058 <CONSOLE_STATUS+0x48>
    80003a00:	00002097          	auipc	ra,0x2
    80003a04:	d24080e7          	jalr	-732(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a08:	0014849b          	addiw	s1,s1,1
    80003a0c:	0ff4f493          	andi	s1,s1,255
    80003a10:	00200793          	li	a5,2
    80003a14:	fc97f0e3          	bgeu	a5,s1,800039d4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a18:	00005517          	auipc	a0,0x5
    80003a1c:	72850513          	addi	a0,a0,1832 # 80009140 <CONSOLE_STATUS+0x130>
    80003a20:	00002097          	auipc	ra,0x2
    80003a24:	d04080e7          	jalr	-764(ra) # 80005724 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a28:	00700313          	li	t1,7
    thread_dispatch();
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	928080e7          	jalr	-1752(ra) # 80001354 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003a34:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003a38:	00005517          	auipc	a0,0x5
    80003a3c:	71850513          	addi	a0,a0,1816 # 80009150 <CONSOLE_STATUS+0x140>
    80003a40:	00002097          	auipc	ra,0x2
    80003a44:	ce4080e7          	jalr	-796(ra) # 80005724 <_Z11printStringPKc>
    80003a48:	00000613          	li	a2,0
    80003a4c:	00a00593          	li	a1,10
    80003a50:	0009051b          	sext.w	a0,s2
    80003a54:	00002097          	auipc	ra,0x2
    80003a58:	e80080e7          	jalr	-384(ra) # 800058d4 <_Z8printIntiii>
    80003a5c:	00005517          	auipc	a0,0x5
    80003a60:	5fc50513          	addi	a0,a0,1532 # 80009058 <CONSOLE_STATUS+0x48>
    80003a64:	00002097          	auipc	ra,0x2
    80003a68:	cc0080e7          	jalr	-832(ra) # 80005724 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003a6c:	00c00513          	li	a0,12
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	d30080e7          	jalr	-720(ra) # 800037a0 <_ZL9fibonaccim>
    80003a78:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003a7c:	00005517          	auipc	a0,0x5
    80003a80:	6dc50513          	addi	a0,a0,1756 # 80009158 <CONSOLE_STATUS+0x148>
    80003a84:	00002097          	auipc	ra,0x2
    80003a88:	ca0080e7          	jalr	-864(ra) # 80005724 <_Z11printStringPKc>
    80003a8c:	00000613          	li	a2,0
    80003a90:	00a00593          	li	a1,10
    80003a94:	0009051b          	sext.w	a0,s2
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	e3c080e7          	jalr	-452(ra) # 800058d4 <_Z8printIntiii>
    80003aa0:	00005517          	auipc	a0,0x5
    80003aa4:	5b850513          	addi	a0,a0,1464 # 80009058 <CONSOLE_STATUS+0x48>
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	c7c080e7          	jalr	-900(ra) # 80005724 <_Z11printStringPKc>
    80003ab0:	0400006f          	j	80003af0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ab4:	00005517          	auipc	a0,0x5
    80003ab8:	68450513          	addi	a0,a0,1668 # 80009138 <CONSOLE_STATUS+0x128>
    80003abc:	00002097          	auipc	ra,0x2
    80003ac0:	c68080e7          	jalr	-920(ra) # 80005724 <_Z11printStringPKc>
    80003ac4:	00000613          	li	a2,0
    80003ac8:	00a00593          	li	a1,10
    80003acc:	00048513          	mv	a0,s1
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	e04080e7          	jalr	-508(ra) # 800058d4 <_Z8printIntiii>
    80003ad8:	00005517          	auipc	a0,0x5
    80003adc:	58050513          	addi	a0,a0,1408 # 80009058 <CONSOLE_STATUS+0x48>
    80003ae0:	00002097          	auipc	ra,0x2
    80003ae4:	c44080e7          	jalr	-956(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ae8:	0014849b          	addiw	s1,s1,1
    80003aec:	0ff4f493          	andi	s1,s1,255
    80003af0:	00500793          	li	a5,5
    80003af4:	fc97f0e3          	bgeu	a5,s1,80003ab4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003af8:	00005517          	auipc	a0,0x5
    80003afc:	61850513          	addi	a0,a0,1560 # 80009110 <CONSOLE_STATUS+0x100>
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	c24080e7          	jalr	-988(ra) # 80005724 <_Z11printStringPKc>
    finishedC = true;
    80003b08:	00100793          	li	a5,1
    80003b0c:	00008717          	auipc	a4,0x8
    80003b10:	dcf70723          	sb	a5,-562(a4) # 8000b8da <_ZL9finishedC>
    thread_dispatch();
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	840080e7          	jalr	-1984(ra) # 80001354 <_Z15thread_dispatchv>
}
    80003b1c:	01813083          	ld	ra,24(sp)
    80003b20:	01013403          	ld	s0,16(sp)
    80003b24:	00813483          	ld	s1,8(sp)
    80003b28:	00013903          	ld	s2,0(sp)
    80003b2c:	02010113          	addi	sp,sp,32
    80003b30:	00008067          	ret

0000000080003b34 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003b34:	fe010113          	addi	sp,sp,-32
    80003b38:	00113c23          	sd	ra,24(sp)
    80003b3c:	00813823          	sd	s0,16(sp)
    80003b40:	00913423          	sd	s1,8(sp)
    80003b44:	01213023          	sd	s2,0(sp)
    80003b48:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b4c:	00a00493          	li	s1,10
    80003b50:	0400006f          	j	80003b90 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b54:	00005517          	auipc	a0,0x5
    80003b58:	61450513          	addi	a0,a0,1556 # 80009168 <CONSOLE_STATUS+0x158>
    80003b5c:	00002097          	auipc	ra,0x2
    80003b60:	bc8080e7          	jalr	-1080(ra) # 80005724 <_Z11printStringPKc>
    80003b64:	00000613          	li	a2,0
    80003b68:	00a00593          	li	a1,10
    80003b6c:	00048513          	mv	a0,s1
    80003b70:	00002097          	auipc	ra,0x2
    80003b74:	d64080e7          	jalr	-668(ra) # 800058d4 <_Z8printIntiii>
    80003b78:	00005517          	auipc	a0,0x5
    80003b7c:	4e050513          	addi	a0,a0,1248 # 80009058 <CONSOLE_STATUS+0x48>
    80003b80:	00002097          	auipc	ra,0x2
    80003b84:	ba4080e7          	jalr	-1116(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b88:	0014849b          	addiw	s1,s1,1
    80003b8c:	0ff4f493          	andi	s1,s1,255
    80003b90:	00c00793          	li	a5,12
    80003b94:	fc97f0e3          	bgeu	a5,s1,80003b54 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003b98:	00005517          	auipc	a0,0x5
    80003b9c:	5d850513          	addi	a0,a0,1496 # 80009170 <CONSOLE_STATUS+0x160>
    80003ba0:	00002097          	auipc	ra,0x2
    80003ba4:	b84080e7          	jalr	-1148(ra) # 80005724 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ba8:	00500313          	li	t1,5
    thread_dispatch();
    80003bac:	ffffd097          	auipc	ra,0xffffd
    80003bb0:	7a8080e7          	jalr	1960(ra) # 80001354 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003bb4:	01000513          	li	a0,16
    80003bb8:	00000097          	auipc	ra,0x0
    80003bbc:	be8080e7          	jalr	-1048(ra) # 800037a0 <_ZL9fibonaccim>
    80003bc0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003bc4:	00005517          	auipc	a0,0x5
    80003bc8:	5bc50513          	addi	a0,a0,1468 # 80009180 <CONSOLE_STATUS+0x170>
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	b58080e7          	jalr	-1192(ra) # 80005724 <_Z11printStringPKc>
    80003bd4:	00000613          	li	a2,0
    80003bd8:	00a00593          	li	a1,10
    80003bdc:	0009051b          	sext.w	a0,s2
    80003be0:	00002097          	auipc	ra,0x2
    80003be4:	cf4080e7          	jalr	-780(ra) # 800058d4 <_Z8printIntiii>
    80003be8:	00005517          	auipc	a0,0x5
    80003bec:	47050513          	addi	a0,a0,1136 # 80009058 <CONSOLE_STATUS+0x48>
    80003bf0:	00002097          	auipc	ra,0x2
    80003bf4:	b34080e7          	jalr	-1228(ra) # 80005724 <_Z11printStringPKc>
    80003bf8:	0400006f          	j	80003c38 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bfc:	00005517          	auipc	a0,0x5
    80003c00:	56c50513          	addi	a0,a0,1388 # 80009168 <CONSOLE_STATUS+0x158>
    80003c04:	00002097          	auipc	ra,0x2
    80003c08:	b20080e7          	jalr	-1248(ra) # 80005724 <_Z11printStringPKc>
    80003c0c:	00000613          	li	a2,0
    80003c10:	00a00593          	li	a1,10
    80003c14:	00048513          	mv	a0,s1
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	cbc080e7          	jalr	-836(ra) # 800058d4 <_Z8printIntiii>
    80003c20:	00005517          	auipc	a0,0x5
    80003c24:	43850513          	addi	a0,a0,1080 # 80009058 <CONSOLE_STATUS+0x48>
    80003c28:	00002097          	auipc	ra,0x2
    80003c2c:	afc080e7          	jalr	-1284(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c30:	0014849b          	addiw	s1,s1,1
    80003c34:	0ff4f493          	andi	s1,s1,255
    80003c38:	00f00793          	li	a5,15
    80003c3c:	fc97f0e3          	bgeu	a5,s1,80003bfc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003c40:	00005517          	auipc	a0,0x5
    80003c44:	55050513          	addi	a0,a0,1360 # 80009190 <CONSOLE_STATUS+0x180>
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	adc080e7          	jalr	-1316(ra) # 80005724 <_Z11printStringPKc>
    finishedD = true;
    80003c50:	00100793          	li	a5,1
    80003c54:	00008717          	auipc	a4,0x8
    80003c58:	c8f703a3          	sb	a5,-889(a4) # 8000b8db <_ZL9finishedD>
    thread_dispatch();
    80003c5c:	ffffd097          	auipc	ra,0xffffd
    80003c60:	6f8080e7          	jalr	1784(ra) # 80001354 <_Z15thread_dispatchv>
}
    80003c64:	01813083          	ld	ra,24(sp)
    80003c68:	01013403          	ld	s0,16(sp)
    80003c6c:	00813483          	ld	s1,8(sp)
    80003c70:	00013903          	ld	s2,0(sp)
    80003c74:	02010113          	addi	sp,sp,32
    80003c78:	00008067          	ret

0000000080003c7c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003c7c:	fc010113          	addi	sp,sp,-64
    80003c80:	02113c23          	sd	ra,56(sp)
    80003c84:	02813823          	sd	s0,48(sp)
    80003c88:	02913423          	sd	s1,40(sp)
    80003c8c:	03213023          	sd	s2,32(sp)
    80003c90:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003c94:	02000513          	li	a0,32
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	0f4080e7          	jalr	244(ra) # 80001d8c <_Znwm>
    80003ca0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	1d0080e7          	jalr	464(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80003cac:	00008797          	auipc	a5,0x8
    80003cb0:	94478793          	addi	a5,a5,-1724 # 8000b5f0 <_ZTV7WorkerA+0x10>
    80003cb4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003cb8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	4e450513          	addi	a0,a0,1252 # 800091a0 <CONSOLE_STATUS+0x190>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	a60080e7          	jalr	-1440(ra) # 80005724 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ccc:	02000513          	li	a0,32
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	0bc080e7          	jalr	188(ra) # 80001d8c <_Znwm>
    80003cd8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	198080e7          	jalr	408(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80003ce4:	00008797          	auipc	a5,0x8
    80003ce8:	93478793          	addi	a5,a5,-1740 # 8000b618 <_ZTV7WorkerB+0x10>
    80003cec:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003cf0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	4c450513          	addi	a0,a0,1220 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	a28080e7          	jalr	-1496(ra) # 80005724 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d04:	02000513          	li	a0,32
    80003d08:	ffffe097          	auipc	ra,0xffffe
    80003d0c:	084080e7          	jalr	132(ra) # 80001d8c <_Znwm>
    80003d10:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	160080e7          	jalr	352(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80003d1c:	00008797          	auipc	a5,0x8
    80003d20:	92478793          	addi	a5,a5,-1756 # 8000b640 <_ZTV7WorkerC+0x10>
    80003d24:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d28:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003d2c:	00005517          	auipc	a0,0x5
    80003d30:	4a450513          	addi	a0,a0,1188 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	9f0080e7          	jalr	-1552(ra) # 80005724 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003d3c:	02000513          	li	a0,32
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	04c080e7          	jalr	76(ra) # 80001d8c <_Znwm>
    80003d48:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	128080e7          	jalr	296(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80003d54:	00008797          	auipc	a5,0x8
    80003d58:	91478793          	addi	a5,a5,-1772 # 8000b668 <_ZTV7WorkerD+0x10>
    80003d5c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003d60:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003d64:	00005517          	auipc	a0,0x5
    80003d68:	48450513          	addi	a0,a0,1156 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	9b8080e7          	jalr	-1608(ra) # 80005724 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003d74:	00000493          	li	s1,0
    80003d78:	00300793          	li	a5,3
    80003d7c:	0297c663          	blt	a5,s1,80003da8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003d80:	00349793          	slli	a5,s1,0x3
    80003d84:	fe040713          	addi	a4,s0,-32
    80003d88:	00f707b3          	add	a5,a4,a5
    80003d8c:	fe07b503          	ld	a0,-32(a5)
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	11c080e7          	jalr	284(ra) # 80001eac <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003d98:	0014849b          	addiw	s1,s1,1
    80003d9c:	fddff06f          	j	80003d78 <_Z20Threads_CPP_API_testv+0xfc>
    }


    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //putc('u');
        Thread::dispatch();
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	184080e7          	jalr	388(ra) # 80001f24 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003da8:	00008797          	auipc	a5,0x8
    80003dac:	b307c783          	lbu	a5,-1232(a5) # 8000b8d8 <_ZL9finishedA>
    80003db0:	fe0788e3          	beqz	a5,80003da0 <_Z20Threads_CPP_API_testv+0x124>
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	b257c783          	lbu	a5,-1243(a5) # 8000b8d9 <_ZL9finishedB>
    80003dbc:	fe0782e3          	beqz	a5,80003da0 <_Z20Threads_CPP_API_testv+0x124>
    80003dc0:	00008797          	auipc	a5,0x8
    80003dc4:	b1a7c783          	lbu	a5,-1254(a5) # 8000b8da <_ZL9finishedC>
    80003dc8:	fc078ce3          	beqz	a5,80003da0 <_Z20Threads_CPP_API_testv+0x124>
    80003dcc:	00008797          	auipc	a5,0x8
    80003dd0:	b0f7c783          	lbu	a5,-1265(a5) # 8000b8db <_ZL9finishedD>
    80003dd4:	fc0786e3          	beqz	a5,80003da0 <_Z20Threads_CPP_API_testv+0x124>
    80003dd8:	fc040493          	addi	s1,s0,-64
    80003ddc:	0080006f          	j	80003de4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003de0:	00848493          	addi	s1,s1,8
    80003de4:	fe040793          	addi	a5,s0,-32
    80003de8:	08f48663          	beq	s1,a5,80003e74 <_Z20Threads_CPP_API_testv+0x1f8>
    80003dec:	0004b503          	ld	a0,0(s1)
    80003df0:	fe0508e3          	beqz	a0,80003de0 <_Z20Threads_CPP_API_testv+0x164>
    80003df4:	00053783          	ld	a5,0(a0)
    80003df8:	0087b783          	ld	a5,8(a5)
    80003dfc:	000780e7          	jalr	a5
    80003e00:	fe1ff06f          	j	80003de0 <_Z20Threads_CPP_API_testv+0x164>
    80003e04:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e08:	00048513          	mv	a0,s1
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	fa8080e7          	jalr	-88(ra) # 80001db4 <_ZdlPv>
    80003e14:	00090513          	mv	a0,s2
    80003e18:	00009097          	auipc	ra,0x9
    80003e1c:	bd0080e7          	jalr	-1072(ra) # 8000c9e8 <_Unwind_Resume>
    80003e20:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e24:	00048513          	mv	a0,s1
    80003e28:	ffffe097          	auipc	ra,0xffffe
    80003e2c:	f8c080e7          	jalr	-116(ra) # 80001db4 <_ZdlPv>
    80003e30:	00090513          	mv	a0,s2
    80003e34:	00009097          	auipc	ra,0x9
    80003e38:	bb4080e7          	jalr	-1100(ra) # 8000c9e8 <_Unwind_Resume>
    80003e3c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003e40:	00048513          	mv	a0,s1
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	f70080e7          	jalr	-144(ra) # 80001db4 <_ZdlPv>
    80003e4c:	00090513          	mv	a0,s2
    80003e50:	00009097          	auipc	ra,0x9
    80003e54:	b98080e7          	jalr	-1128(ra) # 8000c9e8 <_Unwind_Resume>
    80003e58:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003e5c:	00048513          	mv	a0,s1
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	f54080e7          	jalr	-172(ra) # 80001db4 <_ZdlPv>
    80003e68:	00090513          	mv	a0,s2
    80003e6c:	00009097          	auipc	ra,0x9
    80003e70:	b7c080e7          	jalr	-1156(ra) # 8000c9e8 <_Unwind_Resume>
}
    80003e74:	03813083          	ld	ra,56(sp)
    80003e78:	03013403          	ld	s0,48(sp)
    80003e7c:	02813483          	ld	s1,40(sp)
    80003e80:	02013903          	ld	s2,32(sp)
    80003e84:	04010113          	addi	sp,sp,64
    80003e88:	00008067          	ret

0000000080003e8c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003e8c:	ff010113          	addi	sp,sp,-16
    80003e90:	00113423          	sd	ra,8(sp)
    80003e94:	00813023          	sd	s0,0(sp)
    80003e98:	01010413          	addi	s0,sp,16
    80003e9c:	00007797          	auipc	a5,0x7
    80003ea0:	75478793          	addi	a5,a5,1876 # 8000b5f0 <_ZTV7WorkerA+0x10>
    80003ea4:	00f53023          	sd	a5,0(a0)
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	eac080e7          	jalr	-340(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80003eb0:	00813083          	ld	ra,8(sp)
    80003eb4:	00013403          	ld	s0,0(sp)
    80003eb8:	01010113          	addi	sp,sp,16
    80003ebc:	00008067          	ret

0000000080003ec0 <_ZN7WorkerAD0Ev>:
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00813823          	sd	s0,16(sp)
    80003ecc:	00913423          	sd	s1,8(sp)
    80003ed0:	02010413          	addi	s0,sp,32
    80003ed4:	00050493          	mv	s1,a0
    80003ed8:	00007797          	auipc	a5,0x7
    80003edc:	71878793          	addi	a5,a5,1816 # 8000b5f0 <_ZTV7WorkerA+0x10>
    80003ee0:	00f53023          	sd	a5,0(a0)
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	e70080e7          	jalr	-400(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80003eec:	00048513          	mv	a0,s1
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	ec4080e7          	jalr	-316(ra) # 80001db4 <_ZdlPv>
    80003ef8:	01813083          	ld	ra,24(sp)
    80003efc:	01013403          	ld	s0,16(sp)
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	02010113          	addi	sp,sp,32
    80003f08:	00008067          	ret

0000000080003f0c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00113423          	sd	ra,8(sp)
    80003f14:	00813023          	sd	s0,0(sp)
    80003f18:	01010413          	addi	s0,sp,16
    80003f1c:	00007797          	auipc	a5,0x7
    80003f20:	6fc78793          	addi	a5,a5,1788 # 8000b618 <_ZTV7WorkerB+0x10>
    80003f24:	00f53023          	sd	a5,0(a0)
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	e2c080e7          	jalr	-468(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80003f30:	00813083          	ld	ra,8(sp)
    80003f34:	00013403          	ld	s0,0(sp)
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00008067          	ret

0000000080003f40 <_ZN7WorkerBD0Ev>:
    80003f40:	fe010113          	addi	sp,sp,-32
    80003f44:	00113c23          	sd	ra,24(sp)
    80003f48:	00813823          	sd	s0,16(sp)
    80003f4c:	00913423          	sd	s1,8(sp)
    80003f50:	02010413          	addi	s0,sp,32
    80003f54:	00050493          	mv	s1,a0
    80003f58:	00007797          	auipc	a5,0x7
    80003f5c:	6c078793          	addi	a5,a5,1728 # 8000b618 <_ZTV7WorkerB+0x10>
    80003f60:	00f53023          	sd	a5,0(a0)
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	df0080e7          	jalr	-528(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80003f6c:	00048513          	mv	a0,s1
    80003f70:	ffffe097          	auipc	ra,0xffffe
    80003f74:	e44080e7          	jalr	-444(ra) # 80001db4 <_ZdlPv>
    80003f78:	01813083          	ld	ra,24(sp)
    80003f7c:	01013403          	ld	s0,16(sp)
    80003f80:	00813483          	ld	s1,8(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret

0000000080003f8c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003f8c:	ff010113          	addi	sp,sp,-16
    80003f90:	00113423          	sd	ra,8(sp)
    80003f94:	00813023          	sd	s0,0(sp)
    80003f98:	01010413          	addi	s0,sp,16
    80003f9c:	00007797          	auipc	a5,0x7
    80003fa0:	6a478793          	addi	a5,a5,1700 # 8000b640 <_ZTV7WorkerC+0x10>
    80003fa4:	00f53023          	sd	a5,0(a0)
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	dac080e7          	jalr	-596(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80003fb0:	00813083          	ld	ra,8(sp)
    80003fb4:	00013403          	ld	s0,0(sp)
    80003fb8:	01010113          	addi	sp,sp,16
    80003fbc:	00008067          	ret

0000000080003fc0 <_ZN7WorkerCD0Ev>:
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00113c23          	sd	ra,24(sp)
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	00050493          	mv	s1,a0
    80003fd8:	00007797          	auipc	a5,0x7
    80003fdc:	66878793          	addi	a5,a5,1640 # 8000b640 <_ZTV7WorkerC+0x10>
    80003fe0:	00f53023          	sd	a5,0(a0)
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	d70080e7          	jalr	-656(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80003fec:	00048513          	mv	a0,s1
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	dc4080e7          	jalr	-572(ra) # 80001db4 <_ZdlPv>
    80003ff8:	01813083          	ld	ra,24(sp)
    80003ffc:	01013403          	ld	s0,16(sp)
    80004000:	00813483          	ld	s1,8(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret

000000008000400c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000400c:	ff010113          	addi	sp,sp,-16
    80004010:	00113423          	sd	ra,8(sp)
    80004014:	00813023          	sd	s0,0(sp)
    80004018:	01010413          	addi	s0,sp,16
    8000401c:	00007797          	auipc	a5,0x7
    80004020:	64c78793          	addi	a5,a5,1612 # 8000b668 <_ZTV7WorkerD+0x10>
    80004024:	00f53023          	sd	a5,0(a0)
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	d2c080e7          	jalr	-724(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80004030:	00813083          	ld	ra,8(sp)
    80004034:	00013403          	ld	s0,0(sp)
    80004038:	01010113          	addi	sp,sp,16
    8000403c:	00008067          	ret

0000000080004040 <_ZN7WorkerDD0Ev>:
    80004040:	fe010113          	addi	sp,sp,-32
    80004044:	00113c23          	sd	ra,24(sp)
    80004048:	00813823          	sd	s0,16(sp)
    8000404c:	00913423          	sd	s1,8(sp)
    80004050:	02010413          	addi	s0,sp,32
    80004054:	00050493          	mv	s1,a0
    80004058:	00007797          	auipc	a5,0x7
    8000405c:	61078793          	addi	a5,a5,1552 # 8000b668 <_ZTV7WorkerD+0x10>
    80004060:	00f53023          	sd	a5,0(a0)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	cf0080e7          	jalr	-784(ra) # 80001d54 <_ZN6ThreadD1Ev>
    8000406c:	00048513          	mv	a0,s1
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	d44080e7          	jalr	-700(ra) # 80001db4 <_ZdlPv>
    80004078:	01813083          	ld	ra,24(sp)
    8000407c:	01013403          	ld	s0,16(sp)
    80004080:	00813483          	ld	s1,8(sp)
    80004084:	02010113          	addi	sp,sp,32
    80004088:	00008067          	ret

000000008000408c <_ZN7WorkerA3runEv>:
    void run() override {
    8000408c:	ff010113          	addi	sp,sp,-16
    80004090:	00113423          	sd	ra,8(sp)
    80004094:	00813023          	sd	s0,0(sp)
    80004098:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000409c:	00000593          	li	a1,0
    800040a0:	fffff097          	auipc	ra,0xfffff
    800040a4:	774080e7          	jalr	1908(ra) # 80003814 <_ZN7WorkerA11workerBodyAEPv>
    }
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <_ZN7WorkerB3runEv>:
    void run() override {
    800040b8:	ff010113          	addi	sp,sp,-16
    800040bc:	00113423          	sd	ra,8(sp)
    800040c0:	00813023          	sd	s0,0(sp)
    800040c4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800040c8:	00000593          	li	a1,0
    800040cc:	00000097          	auipc	ra,0x0
    800040d0:	814080e7          	jalr	-2028(ra) # 800038e0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800040d4:	00813083          	ld	ra,8(sp)
    800040d8:	00013403          	ld	s0,0(sp)
    800040dc:	01010113          	addi	sp,sp,16
    800040e0:	00008067          	ret

00000000800040e4 <_ZN7WorkerC3runEv>:
    void run() override {
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00113423          	sd	ra,8(sp)
    800040ec:	00813023          	sd	s0,0(sp)
    800040f0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800040f4:	00000593          	li	a1,0
    800040f8:	00000097          	auipc	ra,0x0
    800040fc:	8bc080e7          	jalr	-1860(ra) # 800039b4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004100:	00813083          	ld	ra,8(sp)
    80004104:	00013403          	ld	s0,0(sp)
    80004108:	01010113          	addi	sp,sp,16
    8000410c:	00008067          	ret

0000000080004110 <_ZN7WorkerD3runEv>:
    void run() override {
    80004110:	ff010113          	addi	sp,sp,-16
    80004114:	00113423          	sd	ra,8(sp)
    80004118:	00813023          	sd	s0,0(sp)
    8000411c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004120:	00000593          	li	a1,0
    80004124:	00000097          	auipc	ra,0x0
    80004128:	a10080e7          	jalr	-1520(ra) # 80003b34 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000412c:	00813083          	ld	ra,8(sp)
    80004130:	00013403          	ld	s0,0(sp)
    80004134:	01010113          	addi	sp,sp,16
    80004138:	00008067          	ret

000000008000413c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000413c:	f8010113          	addi	sp,sp,-128
    80004140:	06113c23          	sd	ra,120(sp)
    80004144:	06813823          	sd	s0,112(sp)
    80004148:	06913423          	sd	s1,104(sp)
    8000414c:	07213023          	sd	s2,96(sp)
    80004150:	05313c23          	sd	s3,88(sp)
    80004154:	05413823          	sd	s4,80(sp)
    80004158:	05513423          	sd	s5,72(sp)
    8000415c:	05613023          	sd	s6,64(sp)
    80004160:	03713c23          	sd	s7,56(sp)
    80004164:	03813823          	sd	s8,48(sp)
    80004168:	03913423          	sd	s9,40(sp)
    8000416c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004170:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004174:	00005517          	auipc	a0,0x5
    80004178:	eac50513          	addi	a0,a0,-340 # 80009020 <CONSOLE_STATUS+0x10>
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	5a8080e7          	jalr	1448(ra) # 80005724 <_Z11printStringPKc>
    getString(input, 30);
    80004184:	01e00593          	li	a1,30
    80004188:	f8040493          	addi	s1,s0,-128
    8000418c:	00048513          	mv	a0,s1
    80004190:	00001097          	auipc	ra,0x1
    80004194:	61c080e7          	jalr	1564(ra) # 800057ac <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004198:	00048513          	mv	a0,s1
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	6e8080e7          	jalr	1768(ra) # 80005884 <_Z11stringToIntPKc>
    800041a4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800041a8:	00005517          	auipc	a0,0x5
    800041ac:	e9850513          	addi	a0,a0,-360 # 80009040 <CONSOLE_STATUS+0x30>
    800041b0:	00001097          	auipc	ra,0x1
    800041b4:	574080e7          	jalr	1396(ra) # 80005724 <_Z11printStringPKc>
    getString(input, 30);
    800041b8:	01e00593          	li	a1,30
    800041bc:	00048513          	mv	a0,s1
    800041c0:	00001097          	auipc	ra,0x1
    800041c4:	5ec080e7          	jalr	1516(ra) # 800057ac <_Z9getStringPci>
    n = stringToInt(input);
    800041c8:	00048513          	mv	a0,s1
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	6b8080e7          	jalr	1720(ra) # 80005884 <_Z11stringToIntPKc>
    800041d4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800041d8:	00005517          	auipc	a0,0x5
    800041dc:	e8850513          	addi	a0,a0,-376 # 80009060 <CONSOLE_STATUS+0x50>
    800041e0:	00001097          	auipc	ra,0x1
    800041e4:	544080e7          	jalr	1348(ra) # 80005724 <_Z11printStringPKc>
    printInt(threadNum);
    800041e8:	00000613          	li	a2,0
    800041ec:	00a00593          	li	a1,10
    800041f0:	00098513          	mv	a0,s3
    800041f4:	00001097          	auipc	ra,0x1
    800041f8:	6e0080e7          	jalr	1760(ra) # 800058d4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800041fc:	00005517          	auipc	a0,0x5
    80004200:	e7c50513          	addi	a0,a0,-388 # 80009078 <CONSOLE_STATUS+0x68>
    80004204:	00001097          	auipc	ra,0x1
    80004208:	520080e7          	jalr	1312(ra) # 80005724 <_Z11printStringPKc>
    printInt(n);
    8000420c:	00000613          	li	a2,0
    80004210:	00a00593          	li	a1,10
    80004214:	00048513          	mv	a0,s1
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	6bc080e7          	jalr	1724(ra) # 800058d4 <_Z8printIntiii>
    printString(".\n");
    80004220:	00005517          	auipc	a0,0x5
    80004224:	e7050513          	addi	a0,a0,-400 # 80009090 <CONSOLE_STATUS+0x80>
    80004228:	00001097          	auipc	ra,0x1
    8000422c:	4fc080e7          	jalr	1276(ra) # 80005724 <_Z11printStringPKc>
    if (threadNum > n) {
    80004230:	0334c463          	blt	s1,s3,80004258 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004234:	03305c63          	blez	s3,8000426c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004238:	03800513          	li	a0,56
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	b50080e7          	jalr	-1200(ra) # 80001d8c <_Znwm>
    80004244:	00050a93          	mv	s5,a0
    80004248:	00048593          	mv	a1,s1
    8000424c:	00001097          	auipc	ra,0x1
    80004250:	7a8080e7          	jalr	1960(ra) # 800059f4 <_ZN9BufferCPPC1Ei>
    80004254:	0300006f          	j	80004284 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004258:	00005517          	auipc	a0,0x5
    8000425c:	e4050513          	addi	a0,a0,-448 # 80009098 <CONSOLE_STATUS+0x88>
    80004260:	00001097          	auipc	ra,0x1
    80004264:	4c4080e7          	jalr	1220(ra) # 80005724 <_Z11printStringPKc>
        return;
    80004268:	0140006f          	j	8000427c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000426c:	00005517          	auipc	a0,0x5
    80004270:	e6c50513          	addi	a0,a0,-404 # 800090d8 <CONSOLE_STATUS+0xc8>
    80004274:	00001097          	auipc	ra,0x1
    80004278:	4b0080e7          	jalr	1200(ra) # 80005724 <_Z11printStringPKc>
        return;
    8000427c:	000c0113          	mv	sp,s8
    80004280:	2140006f          	j	80004494 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004284:	01000513          	li	a0,16
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	b04080e7          	jalr	-1276(ra) # 80001d8c <_Znwm>
    80004290:	00050913          	mv	s2,a0
    80004294:	00000593          	li	a1,0
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	dc8080e7          	jalr	-568(ra) # 80002060 <_ZN9SemaphoreC1Ej>
    800042a0:	00007797          	auipc	a5,0x7
    800042a4:	6527b423          	sd	s2,1608(a5) # 8000b8e8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800042a8:	00399793          	slli	a5,s3,0x3
    800042ac:	00f78793          	addi	a5,a5,15
    800042b0:	ff07f793          	andi	a5,a5,-16
    800042b4:	40f10133          	sub	sp,sp,a5
    800042b8:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800042bc:	0019871b          	addiw	a4,s3,1
    800042c0:	00171793          	slli	a5,a4,0x1
    800042c4:	00e787b3          	add	a5,a5,a4
    800042c8:	00379793          	slli	a5,a5,0x3
    800042cc:	00f78793          	addi	a5,a5,15
    800042d0:	ff07f793          	andi	a5,a5,-16
    800042d4:	40f10133          	sub	sp,sp,a5
    800042d8:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800042dc:	00199493          	slli	s1,s3,0x1
    800042e0:	013484b3          	add	s1,s1,s3
    800042e4:	00349493          	slli	s1,s1,0x3
    800042e8:	009b04b3          	add	s1,s6,s1
    800042ec:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800042f0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800042f4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042f8:	02800513          	li	a0,40
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	a90080e7          	jalr	-1392(ra) # 80001d8c <_Znwm>
    80004304:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	b6c080e7          	jalr	-1172(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80004310:	00007797          	auipc	a5,0x7
    80004314:	3d078793          	addi	a5,a5,976 # 8000b6e0 <_ZTV8Consumer+0x10>
    80004318:	00fbb023          	sd	a5,0(s7)
    8000431c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004320:	000b8513          	mv	a0,s7
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	b88080e7          	jalr	-1144(ra) # 80001eac <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000432c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004330:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004334:	00007797          	auipc	a5,0x7
    80004338:	5b47b783          	ld	a5,1460(a5) # 8000b8e8 <_ZL10waitForAll>
    8000433c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004340:	02800513          	li	a0,40
    80004344:	ffffe097          	auipc	ra,0xffffe
    80004348:	a48080e7          	jalr	-1464(ra) # 80001d8c <_Znwm>
    8000434c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	b24080e7          	jalr	-1244(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80004358:	00007797          	auipc	a5,0x7
    8000435c:	33878793          	addi	a5,a5,824 # 8000b690 <_ZTV16ProducerKeyborad+0x10>
    80004360:	00f4b023          	sd	a5,0(s1)
    80004364:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004368:	009a3023          	sd	s1,0(s4) # 1000 <_entry-0x7ffff000>
    producers[0]->start();
    8000436c:	00048513          	mv	a0,s1
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	b3c080e7          	jalr	-1220(ra) # 80001eac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004378:	00100913          	li	s2,1
    8000437c:	0300006f          	j	800043ac <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004380:	00007797          	auipc	a5,0x7
    80004384:	33878793          	addi	a5,a5,824 # 8000b6b8 <_ZTV8Producer+0x10>
    80004388:	00fcb023          	sd	a5,0(s9)
    8000438c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004390:	00391793          	slli	a5,s2,0x3
    80004394:	00fa07b3          	add	a5,s4,a5
    80004398:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000439c:	000c8513          	mv	a0,s9
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	b0c080e7          	jalr	-1268(ra) # 80001eac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043a8:	0019091b          	addiw	s2,s2,1
    800043ac:	05395263          	bge	s2,s3,800043f0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800043b0:	00191493          	slli	s1,s2,0x1
    800043b4:	012484b3          	add	s1,s1,s2
    800043b8:	00349493          	slli	s1,s1,0x3
    800043bc:	009b04b3          	add	s1,s6,s1
    800043c0:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800043c4:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800043c8:	00007797          	auipc	a5,0x7
    800043cc:	5207b783          	ld	a5,1312(a5) # 8000b8e8 <_ZL10waitForAll>
    800043d0:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800043d4:	02800513          	li	a0,40
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	9b4080e7          	jalr	-1612(ra) # 80001d8c <_Znwm>
    800043e0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043e4:	ffffe097          	auipc	ra,0xffffe
    800043e8:	a90080e7          	jalr	-1392(ra) # 80001e74 <_ZN6ThreadC1Ev>
    800043ec:	f95ff06f          	j	80004380 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	b34080e7          	jalr	-1228(ra) # 80001f24 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800043f8:	00000493          	li	s1,0
    800043fc:	0099ce63          	blt	s3,s1,80004418 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004400:	00007517          	auipc	a0,0x7
    80004404:	4e853503          	ld	a0,1256(a0) # 8000b8e8 <_ZL10waitForAll>
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	ca4080e7          	jalr	-860(ra) # 800020ac <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004410:	0014849b          	addiw	s1,s1,1
    80004414:	fe9ff06f          	j	800043fc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004418:	00007517          	auipc	a0,0x7
    8000441c:	4d053503          	ld	a0,1232(a0) # 8000b8e8 <_ZL10waitForAll>
    80004420:	00050863          	beqz	a0,80004430 <_Z20testConsumerProducerv+0x2f4>
    80004424:	00053783          	ld	a5,0(a0)
    80004428:	0087b783          	ld	a5,8(a5)
    8000442c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004430:	00000493          	li	s1,0
    80004434:	0080006f          	j	8000443c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004438:	0014849b          	addiw	s1,s1,1
    8000443c:	0334d263          	bge	s1,s3,80004460 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004440:	00349793          	slli	a5,s1,0x3
    80004444:	00fa07b3          	add	a5,s4,a5
    80004448:	0007b503          	ld	a0,0(a5)
    8000444c:	fe0506e3          	beqz	a0,80004438 <_Z20testConsumerProducerv+0x2fc>
    80004450:	00053783          	ld	a5,0(a0)
    80004454:	0087b783          	ld	a5,8(a5)
    80004458:	000780e7          	jalr	a5
    8000445c:	fddff06f          	j	80004438 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004460:	000b8a63          	beqz	s7,80004474 <_Z20testConsumerProducerv+0x338>
    80004464:	000bb783          	ld	a5,0(s7)
    80004468:	0087b783          	ld	a5,8(a5)
    8000446c:	000b8513          	mv	a0,s7
    80004470:	000780e7          	jalr	a5
    delete buffer;
    80004474:	000a8e63          	beqz	s5,80004490 <_Z20testConsumerProducerv+0x354>
    80004478:	000a8513          	mv	a0,s5
    8000447c:	00002097          	auipc	ra,0x2
    80004480:	870080e7          	jalr	-1936(ra) # 80005cec <_ZN9BufferCPPD1Ev>
    80004484:	000a8513          	mv	a0,s5
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	92c080e7          	jalr	-1748(ra) # 80001db4 <_ZdlPv>
    80004490:	000c0113          	mv	sp,s8
}
    80004494:	f8040113          	addi	sp,s0,-128
    80004498:	07813083          	ld	ra,120(sp)
    8000449c:	07013403          	ld	s0,112(sp)
    800044a0:	06813483          	ld	s1,104(sp)
    800044a4:	06013903          	ld	s2,96(sp)
    800044a8:	05813983          	ld	s3,88(sp)
    800044ac:	05013a03          	ld	s4,80(sp)
    800044b0:	04813a83          	ld	s5,72(sp)
    800044b4:	04013b03          	ld	s6,64(sp)
    800044b8:	03813b83          	ld	s7,56(sp)
    800044bc:	03013c03          	ld	s8,48(sp)
    800044c0:	02813c83          	ld	s9,40(sp)
    800044c4:	08010113          	addi	sp,sp,128
    800044c8:	00008067          	ret
    800044cc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800044d0:	000a8513          	mv	a0,s5
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	8e0080e7          	jalr	-1824(ra) # 80001db4 <_ZdlPv>
    800044dc:	00048513          	mv	a0,s1
    800044e0:	00008097          	auipc	ra,0x8
    800044e4:	508080e7          	jalr	1288(ra) # 8000c9e8 <_Unwind_Resume>
    800044e8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800044ec:	00090513          	mv	a0,s2
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	8c4080e7          	jalr	-1852(ra) # 80001db4 <_ZdlPv>
    800044f8:	00048513          	mv	a0,s1
    800044fc:	00008097          	auipc	ra,0x8
    80004500:	4ec080e7          	jalr	1260(ra) # 8000c9e8 <_Unwind_Resume>
    80004504:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004508:	000b8513          	mv	a0,s7
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	8a8080e7          	jalr	-1880(ra) # 80001db4 <_ZdlPv>
    80004514:	00048513          	mv	a0,s1
    80004518:	00008097          	auipc	ra,0x8
    8000451c:	4d0080e7          	jalr	1232(ra) # 8000c9e8 <_Unwind_Resume>
    80004520:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004524:	00048513          	mv	a0,s1
    80004528:	ffffe097          	auipc	ra,0xffffe
    8000452c:	88c080e7          	jalr	-1908(ra) # 80001db4 <_ZdlPv>
    80004530:	00090513          	mv	a0,s2
    80004534:	00008097          	auipc	ra,0x8
    80004538:	4b4080e7          	jalr	1204(ra) # 8000c9e8 <_Unwind_Resume>
    8000453c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004540:	000c8513          	mv	a0,s9
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	870080e7          	jalr	-1936(ra) # 80001db4 <_ZdlPv>
    8000454c:	00048513          	mv	a0,s1
    80004550:	00008097          	auipc	ra,0x8
    80004554:	498080e7          	jalr	1176(ra) # 8000c9e8 <_Unwind_Resume>

0000000080004558 <_ZN8Consumer3runEv>:
    void run() override {
    80004558:	fd010113          	addi	sp,sp,-48
    8000455c:	02113423          	sd	ra,40(sp)
    80004560:	02813023          	sd	s0,32(sp)
    80004564:	00913c23          	sd	s1,24(sp)
    80004568:	01213823          	sd	s2,16(sp)
    8000456c:	01313423          	sd	s3,8(sp)
    80004570:	03010413          	addi	s0,sp,48
    80004574:	00050913          	mv	s2,a0
        int i = 0;
    80004578:	00000993          	li	s3,0
    8000457c:	0100006f          	j	8000458c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004580:	00a00513          	li	a0,10
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	ab4080e7          	jalr	-1356(ra) # 80002038 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000458c:	00007797          	auipc	a5,0x7
    80004590:	3547a783          	lw	a5,852(a5) # 8000b8e0 <_ZL9threadEnd>
    80004594:	04079a63          	bnez	a5,800045e8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004598:	02093783          	ld	a5,32(s2)
    8000459c:	0087b503          	ld	a0,8(a5)
    800045a0:	00001097          	auipc	ra,0x1
    800045a4:	638080e7          	jalr	1592(ra) # 80005bd8 <_ZN9BufferCPP3getEv>
            i++;
    800045a8:	0019849b          	addiw	s1,s3,1
    800045ac:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800045b0:	0ff57513          	andi	a0,a0,255
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	a84080e7          	jalr	-1404(ra) # 80002038 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800045bc:	05000793          	li	a5,80
    800045c0:	02f4e4bb          	remw	s1,s1,a5
    800045c4:	fc0494e3          	bnez	s1,8000458c <_ZN8Consumer3runEv+0x34>
    800045c8:	fb9ff06f          	j	80004580 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800045cc:	02093783          	ld	a5,32(s2)
    800045d0:	0087b503          	ld	a0,8(a5)
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	604080e7          	jalr	1540(ra) # 80005bd8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800045dc:	0ff57513          	andi	a0,a0,255
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	a58080e7          	jalr	-1448(ra) # 80002038 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800045e8:	02093783          	ld	a5,32(s2)
    800045ec:	0087b503          	ld	a0,8(a5)
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	674080e7          	jalr	1652(ra) # 80005c64 <_ZN9BufferCPP6getCntEv>
    800045f8:	fca04ae3          	bgtz	a0,800045cc <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800045fc:	02093783          	ld	a5,32(s2)
    80004600:	0107b503          	ld	a0,16(a5)
    80004604:	ffffe097          	auipc	ra,0xffffe
    80004608:	ae0080e7          	jalr	-1312(ra) # 800020e4 <_ZN9Semaphore6signalEv>
    }
    8000460c:	02813083          	ld	ra,40(sp)
    80004610:	02013403          	ld	s0,32(sp)
    80004614:	01813483          	ld	s1,24(sp)
    80004618:	01013903          	ld	s2,16(sp)
    8000461c:	00813983          	ld	s3,8(sp)
    80004620:	03010113          	addi	sp,sp,48
    80004624:	00008067          	ret

0000000080004628 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004628:	ff010113          	addi	sp,sp,-16
    8000462c:	00113423          	sd	ra,8(sp)
    80004630:	00813023          	sd	s0,0(sp)
    80004634:	01010413          	addi	s0,sp,16
    80004638:	00007797          	auipc	a5,0x7
    8000463c:	0a878793          	addi	a5,a5,168 # 8000b6e0 <_ZTV8Consumer+0x10>
    80004640:	00f53023          	sd	a5,0(a0)
    80004644:	ffffd097          	auipc	ra,0xffffd
    80004648:	710080e7          	jalr	1808(ra) # 80001d54 <_ZN6ThreadD1Ev>
    8000464c:	00813083          	ld	ra,8(sp)
    80004650:	00013403          	ld	s0,0(sp)
    80004654:	01010113          	addi	sp,sp,16
    80004658:	00008067          	ret

000000008000465c <_ZN8ConsumerD0Ev>:
    8000465c:	fe010113          	addi	sp,sp,-32
    80004660:	00113c23          	sd	ra,24(sp)
    80004664:	00813823          	sd	s0,16(sp)
    80004668:	00913423          	sd	s1,8(sp)
    8000466c:	02010413          	addi	s0,sp,32
    80004670:	00050493          	mv	s1,a0
    80004674:	00007797          	auipc	a5,0x7
    80004678:	06c78793          	addi	a5,a5,108 # 8000b6e0 <_ZTV8Consumer+0x10>
    8000467c:	00f53023          	sd	a5,0(a0)
    80004680:	ffffd097          	auipc	ra,0xffffd
    80004684:	6d4080e7          	jalr	1748(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80004688:	00048513          	mv	a0,s1
    8000468c:	ffffd097          	auipc	ra,0xffffd
    80004690:	728080e7          	jalr	1832(ra) # 80001db4 <_ZdlPv>
    80004694:	01813083          	ld	ra,24(sp)
    80004698:	01013403          	ld	s0,16(sp)
    8000469c:	00813483          	ld	s1,8(sp)
    800046a0:	02010113          	addi	sp,sp,32
    800046a4:	00008067          	ret

00000000800046a8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800046a8:	ff010113          	addi	sp,sp,-16
    800046ac:	00113423          	sd	ra,8(sp)
    800046b0:	00813023          	sd	s0,0(sp)
    800046b4:	01010413          	addi	s0,sp,16
    800046b8:	00007797          	auipc	a5,0x7
    800046bc:	fd878793          	addi	a5,a5,-40 # 8000b690 <_ZTV16ProducerKeyborad+0x10>
    800046c0:	00f53023          	sd	a5,0(a0)
    800046c4:	ffffd097          	auipc	ra,0xffffd
    800046c8:	690080e7          	jalr	1680(ra) # 80001d54 <_ZN6ThreadD1Ev>
    800046cc:	00813083          	ld	ra,8(sp)
    800046d0:	00013403          	ld	s0,0(sp)
    800046d4:	01010113          	addi	sp,sp,16
    800046d8:	00008067          	ret

00000000800046dc <_ZN16ProducerKeyboradD0Ev>:
    800046dc:	fe010113          	addi	sp,sp,-32
    800046e0:	00113c23          	sd	ra,24(sp)
    800046e4:	00813823          	sd	s0,16(sp)
    800046e8:	00913423          	sd	s1,8(sp)
    800046ec:	02010413          	addi	s0,sp,32
    800046f0:	00050493          	mv	s1,a0
    800046f4:	00007797          	auipc	a5,0x7
    800046f8:	f9c78793          	addi	a5,a5,-100 # 8000b690 <_ZTV16ProducerKeyborad+0x10>
    800046fc:	00f53023          	sd	a5,0(a0)
    80004700:	ffffd097          	auipc	ra,0xffffd
    80004704:	654080e7          	jalr	1620(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80004708:	00048513          	mv	a0,s1
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	6a8080e7          	jalr	1704(ra) # 80001db4 <_ZdlPv>
    80004714:	01813083          	ld	ra,24(sp)
    80004718:	01013403          	ld	s0,16(sp)
    8000471c:	00813483          	ld	s1,8(sp)
    80004720:	02010113          	addi	sp,sp,32
    80004724:	00008067          	ret

0000000080004728 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004728:	ff010113          	addi	sp,sp,-16
    8000472c:	00113423          	sd	ra,8(sp)
    80004730:	00813023          	sd	s0,0(sp)
    80004734:	01010413          	addi	s0,sp,16
    80004738:	00007797          	auipc	a5,0x7
    8000473c:	f8078793          	addi	a5,a5,-128 # 8000b6b8 <_ZTV8Producer+0x10>
    80004740:	00f53023          	sd	a5,0(a0)
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	610080e7          	jalr	1552(ra) # 80001d54 <_ZN6ThreadD1Ev>
    8000474c:	00813083          	ld	ra,8(sp)
    80004750:	00013403          	ld	s0,0(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret

000000008000475c <_ZN8ProducerD0Ev>:
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00113c23          	sd	ra,24(sp)
    80004764:	00813823          	sd	s0,16(sp)
    80004768:	00913423          	sd	s1,8(sp)
    8000476c:	02010413          	addi	s0,sp,32
    80004770:	00050493          	mv	s1,a0
    80004774:	00007797          	auipc	a5,0x7
    80004778:	f4478793          	addi	a5,a5,-188 # 8000b6b8 <_ZTV8Producer+0x10>
    8000477c:	00f53023          	sd	a5,0(a0)
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	5d4080e7          	jalr	1492(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80004788:	00048513          	mv	a0,s1
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	628080e7          	jalr	1576(ra) # 80001db4 <_ZdlPv>
    80004794:	01813083          	ld	ra,24(sp)
    80004798:	01013403          	ld	s0,16(sp)
    8000479c:	00813483          	ld	s1,8(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret

00000000800047a8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800047a8:	fe010113          	addi	sp,sp,-32
    800047ac:	00113c23          	sd	ra,24(sp)
    800047b0:	00813823          	sd	s0,16(sp)
    800047b4:	00913423          	sd	s1,8(sp)
    800047b8:	02010413          	addi	s0,sp,32
    800047bc:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800047c0:	ffffd097          	auipc	ra,0xffffd
    800047c4:	ce4080e7          	jalr	-796(ra) # 800014a4 <_Z4getcv>
    800047c8:	0005059b          	sext.w	a1,a0
    800047cc:	01b00793          	li	a5,27
    800047d0:	00f58c63          	beq	a1,a5,800047e8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800047d4:	0204b783          	ld	a5,32(s1)
    800047d8:	0087b503          	ld	a0,8(a5)
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	36c080e7          	jalr	876(ra) # 80005b48 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800047e4:	fddff06f          	j	800047c0 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800047e8:	00100793          	li	a5,1
    800047ec:	00007717          	auipc	a4,0x7
    800047f0:	0ef72a23          	sw	a5,244(a4) # 8000b8e0 <_ZL9threadEnd>
        td->buffer->put('!');
    800047f4:	0204b783          	ld	a5,32(s1)
    800047f8:	02100593          	li	a1,33
    800047fc:	0087b503          	ld	a0,8(a5)
    80004800:	00001097          	auipc	ra,0x1
    80004804:	348080e7          	jalr	840(ra) # 80005b48 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004808:	0204b783          	ld	a5,32(s1)
    8000480c:	0107b503          	ld	a0,16(a5)
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	8d4080e7          	jalr	-1836(ra) # 800020e4 <_ZN9Semaphore6signalEv>
    }
    80004818:	01813083          	ld	ra,24(sp)
    8000481c:	01013403          	ld	s0,16(sp)
    80004820:	00813483          	ld	s1,8(sp)
    80004824:	02010113          	addi	sp,sp,32
    80004828:	00008067          	ret

000000008000482c <_ZN8Producer3runEv>:
    void run() override {
    8000482c:	fe010113          	addi	sp,sp,-32
    80004830:	00113c23          	sd	ra,24(sp)
    80004834:	00813823          	sd	s0,16(sp)
    80004838:	00913423          	sd	s1,8(sp)
    8000483c:	01213023          	sd	s2,0(sp)
    80004840:	02010413          	addi	s0,sp,32
    80004844:	00050493          	mv	s1,a0
        int i = 0;
    80004848:	00000913          	li	s2,0
        while (!threadEnd) {
    8000484c:	00007797          	auipc	a5,0x7
    80004850:	0947a783          	lw	a5,148(a5) # 8000b8e0 <_ZL9threadEnd>
    80004854:	04079263          	bnez	a5,80004898 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004858:	0204b783          	ld	a5,32(s1)
    8000485c:	0007a583          	lw	a1,0(a5)
    80004860:	0305859b          	addiw	a1,a1,48
    80004864:	0087b503          	ld	a0,8(a5)
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	2e0080e7          	jalr	736(ra) # 80005b48 <_ZN9BufferCPP3putEi>
            i++;
    80004870:	0019071b          	addiw	a4,s2,1
    80004874:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004878:	0204b783          	ld	a5,32(s1)
    8000487c:	0007a783          	lw	a5,0(a5)
    80004880:	00e787bb          	addw	a5,a5,a4
    80004884:	00500513          	li	a0,5
    80004888:	02a7e53b          	remw	a0,a5,a0
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	6c0080e7          	jalr	1728(ra) # 80001f4c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004894:	fb9ff06f          	j	8000484c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004898:	0204b783          	ld	a5,32(s1)
    8000489c:	0107b503          	ld	a0,16(a5)
    800048a0:	ffffe097          	auipc	ra,0xffffe
    800048a4:	844080e7          	jalr	-1980(ra) # 800020e4 <_ZN9Semaphore6signalEv>
    }
    800048a8:	01813083          	ld	ra,24(sp)
    800048ac:	01013403          	ld	s0,16(sp)
    800048b0:	00813483          	ld	s1,8(sp)
    800048b4:	00013903          	ld	s2,0(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	01213023          	sd	s2,0(sp)
    800048d4:	02010413          	addi	s0,sp,32
    800048d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048dc:	00100793          	li	a5,1
    800048e0:	02a7f863          	bgeu	a5,a0,80004910 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048e4:	00a00793          	li	a5,10
    800048e8:	02f577b3          	remu	a5,a0,a5
    800048ec:	02078e63          	beqz	a5,80004928 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800048f0:	fff48513          	addi	a0,s1,-1
    800048f4:	00000097          	auipc	ra,0x0
    800048f8:	fcc080e7          	jalr	-52(ra) # 800048c0 <_ZL9fibonaccim>
    800048fc:	00050913          	mv	s2,a0
    80004900:	ffe48513          	addi	a0,s1,-2
    80004904:	00000097          	auipc	ra,0x0
    80004908:	fbc080e7          	jalr	-68(ra) # 800048c0 <_ZL9fibonaccim>
    8000490c:	00a90533          	add	a0,s2,a0
}
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	00813483          	ld	s1,8(sp)
    8000491c:	00013903          	ld	s2,0(sp)
    80004920:	02010113          	addi	sp,sp,32
    80004924:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	a2c080e7          	jalr	-1492(ra) # 80001354 <_Z15thread_dispatchv>
    80004930:	fc1ff06f          	j	800048f0 <_ZL9fibonaccim+0x30>

0000000080004934 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004934:	fe010113          	addi	sp,sp,-32
    80004938:	00113c23          	sd	ra,24(sp)
    8000493c:	00813823          	sd	s0,16(sp)
    80004940:	00913423          	sd	s1,8(sp)
    80004944:	01213023          	sd	s2,0(sp)
    80004948:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000494c:	00a00493          	li	s1,10
    80004950:	0400006f          	j	80004990 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004954:	00005517          	auipc	a0,0x5
    80004958:	81450513          	addi	a0,a0,-2028 # 80009168 <CONSOLE_STATUS+0x158>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	dc8080e7          	jalr	-568(ra) # 80005724 <_Z11printStringPKc>
    80004964:	00000613          	li	a2,0
    80004968:	00a00593          	li	a1,10
    8000496c:	00048513          	mv	a0,s1
    80004970:	00001097          	auipc	ra,0x1
    80004974:	f64080e7          	jalr	-156(ra) # 800058d4 <_Z8printIntiii>
    80004978:	00004517          	auipc	a0,0x4
    8000497c:	6e050513          	addi	a0,a0,1760 # 80009058 <CONSOLE_STATUS+0x48>
    80004980:	00001097          	auipc	ra,0x1
    80004984:	da4080e7          	jalr	-604(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004988:	0014849b          	addiw	s1,s1,1
    8000498c:	0ff4f493          	andi	s1,s1,255
    80004990:	00c00793          	li	a5,12
    80004994:	fc97f0e3          	bgeu	a5,s1,80004954 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004998:	00004517          	auipc	a0,0x4
    8000499c:	7d850513          	addi	a0,a0,2008 # 80009170 <CONSOLE_STATUS+0x160>
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	d84080e7          	jalr	-636(ra) # 80005724 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800049a8:	00500313          	li	t1,5
    thread_dispatch();
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	9a8080e7          	jalr	-1624(ra) # 80001354 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800049b4:	01000513          	li	a0,16
    800049b8:	00000097          	auipc	ra,0x0
    800049bc:	f08080e7          	jalr	-248(ra) # 800048c0 <_ZL9fibonaccim>
    800049c0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800049c4:	00004517          	auipc	a0,0x4
    800049c8:	7bc50513          	addi	a0,a0,1980 # 80009180 <CONSOLE_STATUS+0x170>
    800049cc:	00001097          	auipc	ra,0x1
    800049d0:	d58080e7          	jalr	-680(ra) # 80005724 <_Z11printStringPKc>
    800049d4:	00000613          	li	a2,0
    800049d8:	00a00593          	li	a1,10
    800049dc:	0009051b          	sext.w	a0,s2
    800049e0:	00001097          	auipc	ra,0x1
    800049e4:	ef4080e7          	jalr	-268(ra) # 800058d4 <_Z8printIntiii>
    800049e8:	00004517          	auipc	a0,0x4
    800049ec:	67050513          	addi	a0,a0,1648 # 80009058 <CONSOLE_STATUS+0x48>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	d34080e7          	jalr	-716(ra) # 80005724 <_Z11printStringPKc>
    800049f8:	0400006f          	j	80004a38 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049fc:	00004517          	auipc	a0,0x4
    80004a00:	76c50513          	addi	a0,a0,1900 # 80009168 <CONSOLE_STATUS+0x158>
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	d20080e7          	jalr	-736(ra) # 80005724 <_Z11printStringPKc>
    80004a0c:	00000613          	li	a2,0
    80004a10:	00a00593          	li	a1,10
    80004a14:	00048513          	mv	a0,s1
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	ebc080e7          	jalr	-324(ra) # 800058d4 <_Z8printIntiii>
    80004a20:	00004517          	auipc	a0,0x4
    80004a24:	63850513          	addi	a0,a0,1592 # 80009058 <CONSOLE_STATUS+0x48>
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	cfc080e7          	jalr	-772(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a30:	0014849b          	addiw	s1,s1,1
    80004a34:	0ff4f493          	andi	s1,s1,255
    80004a38:	00f00793          	li	a5,15
    80004a3c:	fc97f0e3          	bgeu	a5,s1,800049fc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a40:	00004517          	auipc	a0,0x4
    80004a44:	75050513          	addi	a0,a0,1872 # 80009190 <CONSOLE_STATUS+0x180>
    80004a48:	00001097          	auipc	ra,0x1
    80004a4c:	cdc080e7          	jalr	-804(ra) # 80005724 <_Z11printStringPKc>
    finishedD = true;
    80004a50:	00100793          	li	a5,1
    80004a54:	00007717          	auipc	a4,0x7
    80004a58:	e8f70e23          	sb	a5,-356(a4) # 8000b8f0 <_ZL9finishedD>
    thread_dispatch();
    80004a5c:	ffffd097          	auipc	ra,0xffffd
    80004a60:	8f8080e7          	jalr	-1800(ra) # 80001354 <_Z15thread_dispatchv>
}
    80004a64:	01813083          	ld	ra,24(sp)
    80004a68:	01013403          	ld	s0,16(sp)
    80004a6c:	00813483          	ld	s1,8(sp)
    80004a70:	00013903          	ld	s2,0(sp)
    80004a74:	02010113          	addi	sp,sp,32
    80004a78:	00008067          	ret

0000000080004a7c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a7c:	fe010113          	addi	sp,sp,-32
    80004a80:	00113c23          	sd	ra,24(sp)
    80004a84:	00813823          	sd	s0,16(sp)
    80004a88:	00913423          	sd	s1,8(sp)
    80004a8c:	01213023          	sd	s2,0(sp)
    80004a90:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004a94:	00000493          	li	s1,0
    80004a98:	0400006f          	j	80004ad8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004a9c:	00004517          	auipc	a0,0x4
    80004aa0:	69c50513          	addi	a0,a0,1692 # 80009138 <CONSOLE_STATUS+0x128>
    80004aa4:	00001097          	auipc	ra,0x1
    80004aa8:	c80080e7          	jalr	-896(ra) # 80005724 <_Z11printStringPKc>
    80004aac:	00000613          	li	a2,0
    80004ab0:	00a00593          	li	a1,10
    80004ab4:	00048513          	mv	a0,s1
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	e1c080e7          	jalr	-484(ra) # 800058d4 <_Z8printIntiii>
    80004ac0:	00004517          	auipc	a0,0x4
    80004ac4:	59850513          	addi	a0,a0,1432 # 80009058 <CONSOLE_STATUS+0x48>
    80004ac8:	00001097          	auipc	ra,0x1
    80004acc:	c5c080e7          	jalr	-932(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ad0:	0014849b          	addiw	s1,s1,1
    80004ad4:	0ff4f493          	andi	s1,s1,255
    80004ad8:	00200793          	li	a5,2
    80004adc:	fc97f0e3          	bgeu	a5,s1,80004a9c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004ae0:	00004517          	auipc	a0,0x4
    80004ae4:	66050513          	addi	a0,a0,1632 # 80009140 <CONSOLE_STATUS+0x130>
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	c3c080e7          	jalr	-964(ra) # 80005724 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004af0:	00700313          	li	t1,7
    thread_dispatch();
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	860080e7          	jalr	-1952(ra) # 80001354 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004afc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b00:	00004517          	auipc	a0,0x4
    80004b04:	65050513          	addi	a0,a0,1616 # 80009150 <CONSOLE_STATUS+0x140>
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	c1c080e7          	jalr	-996(ra) # 80005724 <_Z11printStringPKc>
    80004b10:	00000613          	li	a2,0
    80004b14:	00a00593          	li	a1,10
    80004b18:	0009051b          	sext.w	a0,s2
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	db8080e7          	jalr	-584(ra) # 800058d4 <_Z8printIntiii>
    80004b24:	00004517          	auipc	a0,0x4
    80004b28:	53450513          	addi	a0,a0,1332 # 80009058 <CONSOLE_STATUS+0x48>
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	bf8080e7          	jalr	-1032(ra) # 80005724 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b34:	00c00513          	li	a0,12
    80004b38:	00000097          	auipc	ra,0x0
    80004b3c:	d88080e7          	jalr	-632(ra) # 800048c0 <_ZL9fibonaccim>
    80004b40:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b44:	00004517          	auipc	a0,0x4
    80004b48:	61450513          	addi	a0,a0,1556 # 80009158 <CONSOLE_STATUS+0x148>
    80004b4c:	00001097          	auipc	ra,0x1
    80004b50:	bd8080e7          	jalr	-1064(ra) # 80005724 <_Z11printStringPKc>
    80004b54:	00000613          	li	a2,0
    80004b58:	00a00593          	li	a1,10
    80004b5c:	0009051b          	sext.w	a0,s2
    80004b60:	00001097          	auipc	ra,0x1
    80004b64:	d74080e7          	jalr	-652(ra) # 800058d4 <_Z8printIntiii>
    80004b68:	00004517          	auipc	a0,0x4
    80004b6c:	4f050513          	addi	a0,a0,1264 # 80009058 <CONSOLE_STATUS+0x48>
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	bb4080e7          	jalr	-1100(ra) # 80005724 <_Z11printStringPKc>
    80004b78:	0400006f          	j	80004bb8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004b7c:	00004517          	auipc	a0,0x4
    80004b80:	5bc50513          	addi	a0,a0,1468 # 80009138 <CONSOLE_STATUS+0x128>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	ba0080e7          	jalr	-1120(ra) # 80005724 <_Z11printStringPKc>
    80004b8c:	00000613          	li	a2,0
    80004b90:	00a00593          	li	a1,10
    80004b94:	00048513          	mv	a0,s1
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	d3c080e7          	jalr	-708(ra) # 800058d4 <_Z8printIntiii>
    80004ba0:	00004517          	auipc	a0,0x4
    80004ba4:	4b850513          	addi	a0,a0,1208 # 80009058 <CONSOLE_STATUS+0x48>
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	b7c080e7          	jalr	-1156(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bb0:	0014849b          	addiw	s1,s1,1
    80004bb4:	0ff4f493          	andi	s1,s1,255
    80004bb8:	00500793          	li	a5,5
    80004bbc:	fc97f0e3          	bgeu	a5,s1,80004b7c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004bc0:	00004517          	auipc	a0,0x4
    80004bc4:	55050513          	addi	a0,a0,1360 # 80009110 <CONSOLE_STATUS+0x100>
    80004bc8:	00001097          	auipc	ra,0x1
    80004bcc:	b5c080e7          	jalr	-1188(ra) # 80005724 <_Z11printStringPKc>
    finishedC = true;
    80004bd0:	00100793          	li	a5,1
    80004bd4:	00007717          	auipc	a4,0x7
    80004bd8:	d0f70ea3          	sb	a5,-739(a4) # 8000b8f1 <_ZL9finishedC>
    thread_dispatch();
    80004bdc:	ffffc097          	auipc	ra,0xffffc
    80004be0:	778080e7          	jalr	1912(ra) # 80001354 <_Z15thread_dispatchv>
}
    80004be4:	01813083          	ld	ra,24(sp)
    80004be8:	01013403          	ld	s0,16(sp)
    80004bec:	00813483          	ld	s1,8(sp)
    80004bf0:	00013903          	ld	s2,0(sp)
    80004bf4:	02010113          	addi	sp,sp,32
    80004bf8:	00008067          	ret

0000000080004bfc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004bfc:	fe010113          	addi	sp,sp,-32
    80004c00:	00113c23          	sd	ra,24(sp)
    80004c04:	00813823          	sd	s0,16(sp)
    80004c08:	00913423          	sd	s1,8(sp)
    80004c0c:	01213023          	sd	s2,0(sp)
    80004c10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c14:	00000913          	li	s2,0
    80004c18:	0380006f          	j	80004c50 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c1c:	ffffc097          	auipc	ra,0xffffc
    80004c20:	738080e7          	jalr	1848(ra) # 80001354 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c24:	00148493          	addi	s1,s1,1
    80004c28:	000027b7          	lui	a5,0x2
    80004c2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c30:	0097ee63          	bltu	a5,s1,80004c4c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c34:	00000713          	li	a4,0
    80004c38:	000077b7          	lui	a5,0x7
    80004c3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c40:	fce7eee3          	bltu	a5,a4,80004c1c <_ZL11workerBodyBPv+0x20>
    80004c44:	00170713          	addi	a4,a4,1
    80004c48:	ff1ff06f          	j	80004c38 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004c4c:	00190913          	addi	s2,s2,1
    80004c50:	00f00793          	li	a5,15
    80004c54:	0527e063          	bltu	a5,s2,80004c94 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004c58:	00004517          	auipc	a0,0x4
    80004c5c:	4c850513          	addi	a0,a0,1224 # 80009120 <CONSOLE_STATUS+0x110>
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	ac4080e7          	jalr	-1340(ra) # 80005724 <_Z11printStringPKc>
    80004c68:	00000613          	li	a2,0
    80004c6c:	00a00593          	li	a1,10
    80004c70:	0009051b          	sext.w	a0,s2
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	c60080e7          	jalr	-928(ra) # 800058d4 <_Z8printIntiii>
    80004c7c:	00004517          	auipc	a0,0x4
    80004c80:	3dc50513          	addi	a0,a0,988 # 80009058 <CONSOLE_STATUS+0x48>
    80004c84:	00001097          	auipc	ra,0x1
    80004c88:	aa0080e7          	jalr	-1376(ra) # 80005724 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c8c:	00000493          	li	s1,0
    80004c90:	f99ff06f          	j	80004c28 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	49450513          	addi	a0,a0,1172 # 80009128 <CONSOLE_STATUS+0x118>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	a88080e7          	jalr	-1400(ra) # 80005724 <_Z11printStringPKc>
    finishedB = true;
    80004ca4:	00100793          	li	a5,1
    80004ca8:	00007717          	auipc	a4,0x7
    80004cac:	c4f70523          	sb	a5,-950(a4) # 8000b8f2 <_ZL9finishedB>
    thread_dispatch();
    80004cb0:	ffffc097          	auipc	ra,0xffffc
    80004cb4:	6a4080e7          	jalr	1700(ra) # 80001354 <_Z15thread_dispatchv>
}
    80004cb8:	01813083          	ld	ra,24(sp)
    80004cbc:	01013403          	ld	s0,16(sp)
    80004cc0:	00813483          	ld	s1,8(sp)
    80004cc4:	00013903          	ld	s2,0(sp)
    80004cc8:	02010113          	addi	sp,sp,32
    80004ccc:	00008067          	ret

0000000080004cd0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	01213023          	sd	s2,0(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ce8:	00000913          	li	s2,0
    80004cec:	0380006f          	j	80004d24 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	664080e7          	jalr	1636(ra) # 80001354 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cf8:	00148493          	addi	s1,s1,1
    80004cfc:	000027b7          	lui	a5,0x2
    80004d00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d04:	0097ee63          	bltu	a5,s1,80004d20 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d08:	00000713          	li	a4,0
    80004d0c:	000077b7          	lui	a5,0x7
    80004d10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d14:	fce7eee3          	bltu	a5,a4,80004cf0 <_ZL11workerBodyAPv+0x20>
    80004d18:	00170713          	addi	a4,a4,1
    80004d1c:	ff1ff06f          	j	80004d0c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d20:	00190913          	addi	s2,s2,1
    80004d24:	00900793          	li	a5,9
    80004d28:	0527e063          	bltu	a5,s2,80004d68 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	3dc50513          	addi	a0,a0,988 # 80009108 <CONSOLE_STATUS+0xf8>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	9f0080e7          	jalr	-1552(ra) # 80005724 <_Z11printStringPKc>
    80004d3c:	00000613          	li	a2,0
    80004d40:	00a00593          	li	a1,10
    80004d44:	0009051b          	sext.w	a0,s2
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	b8c080e7          	jalr	-1140(ra) # 800058d4 <_Z8printIntiii>
    80004d50:	00004517          	auipc	a0,0x4
    80004d54:	30850513          	addi	a0,a0,776 # 80009058 <CONSOLE_STATUS+0x48>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	9cc080e7          	jalr	-1588(ra) # 80005724 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d60:	00000493          	li	s1,0
    80004d64:	f99ff06f          	j	80004cfc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	3a850513          	addi	a0,a0,936 # 80009110 <CONSOLE_STATUS+0x100>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	9b4080e7          	jalr	-1612(ra) # 80005724 <_Z11printStringPKc>
    finishedA = true;
    80004d78:	00100793          	li	a5,1
    80004d7c:	00007717          	auipc	a4,0x7
    80004d80:	b6f70ba3          	sb	a5,-1161(a4) # 8000b8f3 <_ZL9finishedA>
}
    80004d84:	01813083          	ld	ra,24(sp)
    80004d88:	01013403          	ld	s0,16(sp)
    80004d8c:	00813483          	ld	s1,8(sp)
    80004d90:	00013903          	ld	s2,0(sp)
    80004d94:	02010113          	addi	sp,sp,32
    80004d98:	00008067          	ret

0000000080004d9c <_Z18Threads_C_API_testv>:

void Threads_C_API_test() {
    80004d9c:	fd010113          	addi	sp,sp,-48
    80004da0:	02113423          	sd	ra,40(sp)
    80004da4:	02813023          	sd	s0,32(sp)
    80004da8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004dac:	00000613          	li	a2,0
    80004db0:	00000597          	auipc	a1,0x0
    80004db4:	f2058593          	addi	a1,a1,-224 # 80004cd0 <_ZL11workerBodyAPv>
    80004db8:	fd040513          	addi	a0,s0,-48
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	4f4080e7          	jalr	1268(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	3dc50513          	addi	a0,a0,988 # 800091a0 <CONSOLE_STATUS+0x190>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	958080e7          	jalr	-1704(ra) # 80005724 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004dd4:	00000613          	li	a2,0
    80004dd8:	00000597          	auipc	a1,0x0
    80004ddc:	e2458593          	addi	a1,a1,-476 # 80004bfc <_ZL11workerBodyBPv>
    80004de0:	fd840513          	addi	a0,s0,-40
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	4cc080e7          	jalr	1228(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004dec:	00004517          	auipc	a0,0x4
    80004df0:	3cc50513          	addi	a0,a0,972 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	930080e7          	jalr	-1744(ra) # 80005724 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004dfc:	00000613          	li	a2,0
    80004e00:	00000597          	auipc	a1,0x0
    80004e04:	c7c58593          	addi	a1,a1,-900 # 80004a7c <_ZL11workerBodyCPv>
    80004e08:	fe040513          	addi	a0,s0,-32
    80004e0c:	ffffc097          	auipc	ra,0xffffc
    80004e10:	4a4080e7          	jalr	1188(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004e14:	00004517          	auipc	a0,0x4
    80004e18:	3bc50513          	addi	a0,a0,956 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	908080e7          	jalr	-1784(ra) # 80005724 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e24:	00000613          	li	a2,0
    80004e28:	00000597          	auipc	a1,0x0
    80004e2c:	b0c58593          	addi	a1,a1,-1268 # 80004934 <_ZL11workerBodyDPv>
    80004e30:	fe840513          	addi	a0,s0,-24
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	47c080e7          	jalr	1148(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	3ac50513          	addi	a0,a0,940 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	8e0080e7          	jalr	-1824(ra) # 80005724 <_Z11printStringPKc>
    80004e4c:	00c0006f          	j	80004e58 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	504080e7          	jalr	1284(ra) # 80001354 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e58:	00007797          	auipc	a5,0x7
    80004e5c:	a9b7c783          	lbu	a5,-1381(a5) # 8000b8f3 <_ZL9finishedA>
    80004e60:	fe0788e3          	beqz	a5,80004e50 <_Z18Threads_C_API_testv+0xb4>
    80004e64:	00007797          	auipc	a5,0x7
    80004e68:	a8e7c783          	lbu	a5,-1394(a5) # 8000b8f2 <_ZL9finishedB>
    80004e6c:	fe0782e3          	beqz	a5,80004e50 <_Z18Threads_C_API_testv+0xb4>
    80004e70:	00007797          	auipc	a5,0x7
    80004e74:	a817c783          	lbu	a5,-1407(a5) # 8000b8f1 <_ZL9finishedC>
    80004e78:	fc078ce3          	beqz	a5,80004e50 <_Z18Threads_C_API_testv+0xb4>
    80004e7c:	00007797          	auipc	a5,0x7
    80004e80:	a747c783          	lbu	a5,-1420(a5) # 8000b8f0 <_ZL9finishedD>
    80004e84:	fc0786e3          	beqz	a5,80004e50 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004e88:	02813083          	ld	ra,40(sp)
    80004e8c:	02013403          	ld	s0,32(sp)
    80004e90:	03010113          	addi	sp,sp,48
    80004e94:	00008067          	ret

0000000080004e98 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004e98:	fd010113          	addi	sp,sp,-48
    80004e9c:	02113423          	sd	ra,40(sp)
    80004ea0:	02813023          	sd	s0,32(sp)
    80004ea4:	00913c23          	sd	s1,24(sp)
    80004ea8:	01213823          	sd	s2,16(sp)
    80004eac:	01313423          	sd	s3,8(sp)
    80004eb0:	03010413          	addi	s0,sp,48
    80004eb4:	00050993          	mv	s3,a0
    80004eb8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004ebc:	00000913          	li	s2,0
    80004ec0:	00c0006f          	j	80004ecc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ec4:	ffffd097          	auipc	ra,0xffffd
    80004ec8:	060080e7          	jalr	96(ra) # 80001f24 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	5d8080e7          	jalr	1496(ra) # 800014a4 <_Z4getcv>
    80004ed4:	0005059b          	sext.w	a1,a0
    80004ed8:	01b00793          	li	a5,27
    80004edc:	02f58a63          	beq	a1,a5,80004f10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ee0:	0084b503          	ld	a0,8(s1)
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	c64080e7          	jalr	-924(ra) # 80005b48 <_ZN9BufferCPP3putEi>
        i++;
    80004eec:	0019071b          	addiw	a4,s2,1
    80004ef0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ef4:	0004a683          	lw	a3,0(s1)
    80004ef8:	0026979b          	slliw	a5,a3,0x2
    80004efc:	00d787bb          	addw	a5,a5,a3
    80004f00:	0017979b          	slliw	a5,a5,0x1
    80004f04:	02f767bb          	remw	a5,a4,a5
    80004f08:	fc0792e3          	bnez	a5,80004ecc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004f0c:	fb9ff06f          	j	80004ec4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004f10:	00100793          	li	a5,1
    80004f14:	00007717          	auipc	a4,0x7
    80004f18:	9ef72223          	sw	a5,-1564(a4) # 8000b8f8 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f1c:	0209b783          	ld	a5,32(s3)
    80004f20:	02100593          	li	a1,33
    80004f24:	0087b503          	ld	a0,8(a5)
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	c20080e7          	jalr	-992(ra) # 80005b48 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004f30:	0104b503          	ld	a0,16(s1)
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	1b0080e7          	jalr	432(ra) # 800020e4 <_ZN9Semaphore6signalEv>
}
    80004f3c:	02813083          	ld	ra,40(sp)
    80004f40:	02013403          	ld	s0,32(sp)
    80004f44:	01813483          	ld	s1,24(sp)
    80004f48:	01013903          	ld	s2,16(sp)
    80004f4c:	00813983          	ld	s3,8(sp)
    80004f50:	03010113          	addi	sp,sp,48
    80004f54:	00008067          	ret

0000000080004f58 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004f58:	fe010113          	addi	sp,sp,-32
    80004f5c:	00113c23          	sd	ra,24(sp)
    80004f60:	00813823          	sd	s0,16(sp)
    80004f64:	00913423          	sd	s1,8(sp)
    80004f68:	01213023          	sd	s2,0(sp)
    80004f6c:	02010413          	addi	s0,sp,32
    80004f70:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f74:	00000913          	li	s2,0
    80004f78:	00c0006f          	j	80004f84 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f7c:	ffffd097          	auipc	ra,0xffffd
    80004f80:	fa8080e7          	jalr	-88(ra) # 80001f24 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004f84:	00007797          	auipc	a5,0x7
    80004f88:	9747a783          	lw	a5,-1676(a5) # 8000b8f8 <_ZL9threadEnd>
    80004f8c:	02079e63          	bnez	a5,80004fc8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004f90:	0004a583          	lw	a1,0(s1)
    80004f94:	0305859b          	addiw	a1,a1,48
    80004f98:	0084b503          	ld	a0,8(s1)
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	bac080e7          	jalr	-1108(ra) # 80005b48 <_ZN9BufferCPP3putEi>
        i++;
    80004fa4:	0019071b          	addiw	a4,s2,1
    80004fa8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fac:	0004a683          	lw	a3,0(s1)
    80004fb0:	0026979b          	slliw	a5,a3,0x2
    80004fb4:	00d787bb          	addw	a5,a5,a3
    80004fb8:	0017979b          	slliw	a5,a5,0x1
    80004fbc:	02f767bb          	remw	a5,a4,a5
    80004fc0:	fc0792e3          	bnez	a5,80004f84 <_ZN12ProducerSync8producerEPv+0x2c>
    80004fc4:	fb9ff06f          	j	80004f7c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004fc8:	0104b503          	ld	a0,16(s1)
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	118080e7          	jalr	280(ra) # 800020e4 <_ZN9Semaphore6signalEv>
}
    80004fd4:	01813083          	ld	ra,24(sp)
    80004fd8:	01013403          	ld	s0,16(sp)
    80004fdc:	00813483          	ld	s1,8(sp)
    80004fe0:	00013903          	ld	s2,0(sp)
    80004fe4:	02010113          	addi	sp,sp,32
    80004fe8:	00008067          	ret

0000000080004fec <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004fec:	fd010113          	addi	sp,sp,-48
    80004ff0:	02113423          	sd	ra,40(sp)
    80004ff4:	02813023          	sd	s0,32(sp)
    80004ff8:	00913c23          	sd	s1,24(sp)
    80004ffc:	01213823          	sd	s2,16(sp)
    80005000:	01313423          	sd	s3,8(sp)
    80005004:	01413023          	sd	s4,0(sp)
    80005008:	03010413          	addi	s0,sp,48
    8000500c:	00050993          	mv	s3,a0
    80005010:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005014:	00000a13          	li	s4,0
    80005018:	01c0006f          	j	80005034 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	f08080e7          	jalr	-248(ra) # 80001f24 <_ZN6Thread8dispatchEv>
    80005024:	0500006f          	j	80005074 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005028:	00a00513          	li	a0,10
    8000502c:	ffffc097          	auipc	ra,0xffffc
    80005030:	454080e7          	jalr	1108(ra) # 80001480 <_Z4putcc>
    while (!threadEnd) {
    80005034:	00007797          	auipc	a5,0x7
    80005038:	8c47a783          	lw	a5,-1852(a5) # 8000b8f8 <_ZL9threadEnd>
    8000503c:	06079263          	bnez	a5,800050a0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005040:	00893503          	ld	a0,8(s2)
    80005044:	00001097          	auipc	ra,0x1
    80005048:	b94080e7          	jalr	-1132(ra) # 80005bd8 <_ZN9BufferCPP3getEv>
        i++;
    8000504c:	001a049b          	addiw	s1,s4,1
    80005050:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005054:	0ff57513          	andi	a0,a0,255
    80005058:	ffffc097          	auipc	ra,0xffffc
    8000505c:	428080e7          	jalr	1064(ra) # 80001480 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005060:	00092703          	lw	a4,0(s2)
    80005064:	0027179b          	slliw	a5,a4,0x2
    80005068:	00e787bb          	addw	a5,a5,a4
    8000506c:	02f4e7bb          	remw	a5,s1,a5
    80005070:	fa0786e3          	beqz	a5,8000501c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005074:	05000793          	li	a5,80
    80005078:	02f4e4bb          	remw	s1,s1,a5
    8000507c:	fa049ce3          	bnez	s1,80005034 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005080:	fa9ff06f          	j	80005028 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005084:	0209b783          	ld	a5,32(s3)
    80005088:	0087b503          	ld	a0,8(a5)
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	b4c080e7          	jalr	-1204(ra) # 80005bd8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005094:	0ff57513          	andi	a0,a0,255
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	fa0080e7          	jalr	-96(ra) # 80002038 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800050a0:	0209b783          	ld	a5,32(s3)
    800050a4:	0087b503          	ld	a0,8(a5)
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	bbc080e7          	jalr	-1092(ra) # 80005c64 <_ZN9BufferCPP6getCntEv>
    800050b0:	fca04ae3          	bgtz	a0,80005084 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800050b4:	01093503          	ld	a0,16(s2)
    800050b8:	ffffd097          	auipc	ra,0xffffd
    800050bc:	02c080e7          	jalr	44(ra) # 800020e4 <_ZN9Semaphore6signalEv>
}
    800050c0:	02813083          	ld	ra,40(sp)
    800050c4:	02013403          	ld	s0,32(sp)
    800050c8:	01813483          	ld	s1,24(sp)
    800050cc:	01013903          	ld	s2,16(sp)
    800050d0:	00813983          	ld	s3,8(sp)
    800050d4:	00013a03          	ld	s4,0(sp)
    800050d8:	03010113          	addi	sp,sp,48
    800050dc:	00008067          	ret

00000000800050e0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800050e0:	f8010113          	addi	sp,sp,-128
    800050e4:	06113c23          	sd	ra,120(sp)
    800050e8:	06813823          	sd	s0,112(sp)
    800050ec:	06913423          	sd	s1,104(sp)
    800050f0:	07213023          	sd	s2,96(sp)
    800050f4:	05313c23          	sd	s3,88(sp)
    800050f8:	05413823          	sd	s4,80(sp)
    800050fc:	05513423          	sd	s5,72(sp)
    80005100:	05613023          	sd	s6,64(sp)
    80005104:	03713c23          	sd	s7,56(sp)
    80005108:	03813823          	sd	s8,48(sp)
    8000510c:	03913423          	sd	s9,40(sp)
    80005110:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005114:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005118:	00004517          	auipc	a0,0x4
    8000511c:	f0850513          	addi	a0,a0,-248 # 80009020 <CONSOLE_STATUS+0x10>
    80005120:	00000097          	auipc	ra,0x0
    80005124:	604080e7          	jalr	1540(ra) # 80005724 <_Z11printStringPKc>
    getString(input, 30);
    80005128:	01e00593          	li	a1,30
    8000512c:	f8040493          	addi	s1,s0,-128
    80005130:	00048513          	mv	a0,s1
    80005134:	00000097          	auipc	ra,0x0
    80005138:	678080e7          	jalr	1656(ra) # 800057ac <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000513c:	00048513          	mv	a0,s1
    80005140:	00000097          	auipc	ra,0x0
    80005144:	744080e7          	jalr	1860(ra) # 80005884 <_Z11stringToIntPKc>
    80005148:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000514c:	00004517          	auipc	a0,0x4
    80005150:	ef450513          	addi	a0,a0,-268 # 80009040 <CONSOLE_STATUS+0x30>
    80005154:	00000097          	auipc	ra,0x0
    80005158:	5d0080e7          	jalr	1488(ra) # 80005724 <_Z11printStringPKc>
    getString(input, 30);
    8000515c:	01e00593          	li	a1,30
    80005160:	00048513          	mv	a0,s1
    80005164:	00000097          	auipc	ra,0x0
    80005168:	648080e7          	jalr	1608(ra) # 800057ac <_Z9getStringPci>
    n = stringToInt(input);
    8000516c:	00048513          	mv	a0,s1
    80005170:	00000097          	auipc	ra,0x0
    80005174:	714080e7          	jalr	1812(ra) # 80005884 <_Z11stringToIntPKc>
    80005178:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000517c:	00004517          	auipc	a0,0x4
    80005180:	ee450513          	addi	a0,a0,-284 # 80009060 <CONSOLE_STATUS+0x50>
    80005184:	00000097          	auipc	ra,0x0
    80005188:	5a0080e7          	jalr	1440(ra) # 80005724 <_Z11printStringPKc>
    8000518c:	00000613          	li	a2,0
    80005190:	00a00593          	li	a1,10
    80005194:	00090513          	mv	a0,s2
    80005198:	00000097          	auipc	ra,0x0
    8000519c:	73c080e7          	jalr	1852(ra) # 800058d4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800051a0:	00004517          	auipc	a0,0x4
    800051a4:	ed850513          	addi	a0,a0,-296 # 80009078 <CONSOLE_STATUS+0x68>
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	57c080e7          	jalr	1404(ra) # 80005724 <_Z11printStringPKc>
    800051b0:	00000613          	li	a2,0
    800051b4:	00a00593          	li	a1,10
    800051b8:	00048513          	mv	a0,s1
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	718080e7          	jalr	1816(ra) # 800058d4 <_Z8printIntiii>
    printString(".\n");
    800051c4:	00004517          	auipc	a0,0x4
    800051c8:	ecc50513          	addi	a0,a0,-308 # 80009090 <CONSOLE_STATUS+0x80>
    800051cc:	00000097          	auipc	ra,0x0
    800051d0:	558080e7          	jalr	1368(ra) # 80005724 <_Z11printStringPKc>
    if(threadNum > n) {
    800051d4:	0324c463          	blt	s1,s2,800051fc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800051d8:	03205c63          	blez	s2,80005210 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800051dc:	03800513          	li	a0,56
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	bac080e7          	jalr	-1108(ra) # 80001d8c <_Znwm>
    800051e8:	00050a93          	mv	s5,a0
    800051ec:	00048593          	mv	a1,s1
    800051f0:	00001097          	auipc	ra,0x1
    800051f4:	804080e7          	jalr	-2044(ra) # 800059f4 <_ZN9BufferCPPC1Ei>
    800051f8:	0300006f          	j	80005228 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800051fc:	00004517          	auipc	a0,0x4
    80005200:	e9c50513          	addi	a0,a0,-356 # 80009098 <CONSOLE_STATUS+0x88>
    80005204:	00000097          	auipc	ra,0x0
    80005208:	520080e7          	jalr	1312(ra) # 80005724 <_Z11printStringPKc>
        return;
    8000520c:	0140006f          	j	80005220 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005210:	00004517          	auipc	a0,0x4
    80005214:	ec850513          	addi	a0,a0,-312 # 800090d8 <CONSOLE_STATUS+0xc8>
    80005218:	00000097          	auipc	ra,0x0
    8000521c:	50c080e7          	jalr	1292(ra) # 80005724 <_Z11printStringPKc>
        return;
    80005220:	000b8113          	mv	sp,s7
    80005224:	2380006f          	j	8000545c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005228:	01000513          	li	a0,16
    8000522c:	ffffd097          	auipc	ra,0xffffd
    80005230:	b60080e7          	jalr	-1184(ra) # 80001d8c <_Znwm>
    80005234:	00050493          	mv	s1,a0
    80005238:	00000593          	li	a1,0
    8000523c:	ffffd097          	auipc	ra,0xffffd
    80005240:	e24080e7          	jalr	-476(ra) # 80002060 <_ZN9SemaphoreC1Ej>
    80005244:	00006797          	auipc	a5,0x6
    80005248:	6a97be23          	sd	s1,1724(a5) # 8000b900 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000524c:	00391793          	slli	a5,s2,0x3
    80005250:	00f78793          	addi	a5,a5,15
    80005254:	ff07f793          	andi	a5,a5,-16
    80005258:	40f10133          	sub	sp,sp,a5
    8000525c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005260:	0019071b          	addiw	a4,s2,1
    80005264:	00171793          	slli	a5,a4,0x1
    80005268:	00e787b3          	add	a5,a5,a4
    8000526c:	00379793          	slli	a5,a5,0x3
    80005270:	00f78793          	addi	a5,a5,15
    80005274:	ff07f793          	andi	a5,a5,-16
    80005278:	40f10133          	sub	sp,sp,a5
    8000527c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005280:	00191c13          	slli	s8,s2,0x1
    80005284:	012c07b3          	add	a5,s8,s2
    80005288:	00379793          	slli	a5,a5,0x3
    8000528c:	00fa07b3          	add	a5,s4,a5
    80005290:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005294:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005298:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000529c:	02800513          	li	a0,40
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	aec080e7          	jalr	-1300(ra) # 80001d8c <_Znwm>
    800052a8:	00050b13          	mv	s6,a0
    800052ac:	012c0c33          	add	s8,s8,s2
    800052b0:	003c1c13          	slli	s8,s8,0x3
    800052b4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800052b8:	ffffd097          	auipc	ra,0xffffd
    800052bc:	bbc080e7          	jalr	-1092(ra) # 80001e74 <_ZN6ThreadC1Ev>
    800052c0:	00006797          	auipc	a5,0x6
    800052c4:	49878793          	addi	a5,a5,1176 # 8000b758 <_ZTV12ConsumerSync+0x10>
    800052c8:	00fb3023          	sd	a5,0(s6)
    800052cc:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800052d0:	000b0513          	mv	a0,s6
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	bd8080e7          	jalr	-1064(ra) # 80001eac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800052dc:	00000493          	li	s1,0
    800052e0:	0380006f          	j	80005318 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800052e4:	00006797          	auipc	a5,0x6
    800052e8:	44c78793          	addi	a5,a5,1100 # 8000b730 <_ZTV12ProducerSync+0x10>
    800052ec:	00fcb023          	sd	a5,0(s9)
    800052f0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800052f4:	00349793          	slli	a5,s1,0x3
    800052f8:	00f987b3          	add	a5,s3,a5
    800052fc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005300:	00349793          	slli	a5,s1,0x3
    80005304:	00f987b3          	add	a5,s3,a5
    80005308:	0007b503          	ld	a0,0(a5)
    8000530c:	ffffd097          	auipc	ra,0xffffd
    80005310:	ba0080e7          	jalr	-1120(ra) # 80001eac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005314:	0014849b          	addiw	s1,s1,1
    80005318:	0b24d063          	bge	s1,s2,800053b8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000531c:	00149793          	slli	a5,s1,0x1
    80005320:	009787b3          	add	a5,a5,s1
    80005324:	00379793          	slli	a5,a5,0x3
    80005328:	00fa07b3          	add	a5,s4,a5
    8000532c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005330:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005334:	00006717          	auipc	a4,0x6
    80005338:	5cc73703          	ld	a4,1484(a4) # 8000b900 <_ZL10waitForAll>
    8000533c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005340:	02905863          	blez	s1,80005370 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005344:	02800513          	li	a0,40
    80005348:	ffffd097          	auipc	ra,0xffffd
    8000534c:	a44080e7          	jalr	-1468(ra) # 80001d8c <_Znwm>
    80005350:	00050c93          	mv	s9,a0
    80005354:	00149c13          	slli	s8,s1,0x1
    80005358:	009c0c33          	add	s8,s8,s1
    8000535c:	003c1c13          	slli	s8,s8,0x3
    80005360:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005364:	ffffd097          	auipc	ra,0xffffd
    80005368:	b10080e7          	jalr	-1264(ra) # 80001e74 <_ZN6ThreadC1Ev>
    8000536c:	f79ff06f          	j	800052e4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005370:	02800513          	li	a0,40
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	a18080e7          	jalr	-1512(ra) # 80001d8c <_Znwm>
    8000537c:	00050c93          	mv	s9,a0
    80005380:	00149c13          	slli	s8,s1,0x1
    80005384:	009c0c33          	add	s8,s8,s1
    80005388:	003c1c13          	slli	s8,s8,0x3
    8000538c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	ae4080e7          	jalr	-1308(ra) # 80001e74 <_ZN6ThreadC1Ev>
    80005398:	00006797          	auipc	a5,0x6
    8000539c:	37078793          	addi	a5,a5,880 # 8000b708 <_ZTV16ProducerKeyboard+0x10>
    800053a0:	00fcb023          	sd	a5,0(s9)
    800053a4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800053a8:	00349793          	slli	a5,s1,0x3
    800053ac:	00f987b3          	add	a5,s3,a5
    800053b0:	0197b023          	sd	s9,0(a5)
    800053b4:	f4dff06f          	j	80005300 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	b6c080e7          	jalr	-1172(ra) # 80001f24 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800053c0:	00000493          	li	s1,0
    800053c4:	00994e63          	blt	s2,s1,800053e0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800053c8:	00006517          	auipc	a0,0x6
    800053cc:	53853503          	ld	a0,1336(a0) # 8000b900 <_ZL10waitForAll>
    800053d0:	ffffd097          	auipc	ra,0xffffd
    800053d4:	cdc080e7          	jalr	-804(ra) # 800020ac <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800053d8:	0014849b          	addiw	s1,s1,1
    800053dc:	fe9ff06f          	j	800053c4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800053e0:	00000493          	li	s1,0
    800053e4:	0080006f          	j	800053ec <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800053e8:	0014849b          	addiw	s1,s1,1
    800053ec:	0324d263          	bge	s1,s2,80005410 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800053f0:	00349793          	slli	a5,s1,0x3
    800053f4:	00f987b3          	add	a5,s3,a5
    800053f8:	0007b503          	ld	a0,0(a5)
    800053fc:	fe0506e3          	beqz	a0,800053e8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005400:	00053783          	ld	a5,0(a0)
    80005404:	0087b783          	ld	a5,8(a5)
    80005408:	000780e7          	jalr	a5
    8000540c:	fddff06f          	j	800053e8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005410:	000b0a63          	beqz	s6,80005424 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005414:	000b3783          	ld	a5,0(s6)
    80005418:	0087b783          	ld	a5,8(a5)
    8000541c:	000b0513          	mv	a0,s6
    80005420:	000780e7          	jalr	a5
    delete waitForAll;
    80005424:	00006517          	auipc	a0,0x6
    80005428:	4dc53503          	ld	a0,1244(a0) # 8000b900 <_ZL10waitForAll>
    8000542c:	00050863          	beqz	a0,8000543c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005430:	00053783          	ld	a5,0(a0)
    80005434:	0087b783          	ld	a5,8(a5)
    80005438:	000780e7          	jalr	a5
    delete buffer;
    8000543c:	000a8e63          	beqz	s5,80005458 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005440:	000a8513          	mv	a0,s5
    80005444:	00001097          	auipc	ra,0x1
    80005448:	8a8080e7          	jalr	-1880(ra) # 80005cec <_ZN9BufferCPPD1Ev>
    8000544c:	000a8513          	mv	a0,s5
    80005450:	ffffd097          	auipc	ra,0xffffd
    80005454:	964080e7          	jalr	-1692(ra) # 80001db4 <_ZdlPv>
    80005458:	000b8113          	mv	sp,s7

}
    8000545c:	f8040113          	addi	sp,s0,-128
    80005460:	07813083          	ld	ra,120(sp)
    80005464:	07013403          	ld	s0,112(sp)
    80005468:	06813483          	ld	s1,104(sp)
    8000546c:	06013903          	ld	s2,96(sp)
    80005470:	05813983          	ld	s3,88(sp)
    80005474:	05013a03          	ld	s4,80(sp)
    80005478:	04813a83          	ld	s5,72(sp)
    8000547c:	04013b03          	ld	s6,64(sp)
    80005480:	03813b83          	ld	s7,56(sp)
    80005484:	03013c03          	ld	s8,48(sp)
    80005488:	02813c83          	ld	s9,40(sp)
    8000548c:	08010113          	addi	sp,sp,128
    80005490:	00008067          	ret
    80005494:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005498:	000a8513          	mv	a0,s5
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	918080e7          	jalr	-1768(ra) # 80001db4 <_ZdlPv>
    800054a4:	00048513          	mv	a0,s1
    800054a8:	00007097          	auipc	ra,0x7
    800054ac:	540080e7          	jalr	1344(ra) # 8000c9e8 <_Unwind_Resume>
    800054b0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800054b4:	00048513          	mv	a0,s1
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	8fc080e7          	jalr	-1796(ra) # 80001db4 <_ZdlPv>
    800054c0:	00090513          	mv	a0,s2
    800054c4:	00007097          	auipc	ra,0x7
    800054c8:	524080e7          	jalr	1316(ra) # 8000c9e8 <_Unwind_Resume>
    800054cc:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800054d0:	000b0513          	mv	a0,s6
    800054d4:	ffffd097          	auipc	ra,0xffffd
    800054d8:	8e0080e7          	jalr	-1824(ra) # 80001db4 <_ZdlPv>
    800054dc:	00048513          	mv	a0,s1
    800054e0:	00007097          	auipc	ra,0x7
    800054e4:	508080e7          	jalr	1288(ra) # 8000c9e8 <_Unwind_Resume>
    800054e8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800054ec:	000c8513          	mv	a0,s9
    800054f0:	ffffd097          	auipc	ra,0xffffd
    800054f4:	8c4080e7          	jalr	-1852(ra) # 80001db4 <_ZdlPv>
    800054f8:	00048513          	mv	a0,s1
    800054fc:	00007097          	auipc	ra,0x7
    80005500:	4ec080e7          	jalr	1260(ra) # 8000c9e8 <_Unwind_Resume>
    80005504:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005508:	000c8513          	mv	a0,s9
    8000550c:	ffffd097          	auipc	ra,0xffffd
    80005510:	8a8080e7          	jalr	-1880(ra) # 80001db4 <_ZdlPv>
    80005514:	00048513          	mv	a0,s1
    80005518:	00007097          	auipc	ra,0x7
    8000551c:	4d0080e7          	jalr	1232(ra) # 8000c9e8 <_Unwind_Resume>

0000000080005520 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005520:	ff010113          	addi	sp,sp,-16
    80005524:	00113423          	sd	ra,8(sp)
    80005528:	00813023          	sd	s0,0(sp)
    8000552c:	01010413          	addi	s0,sp,16
    80005530:	00006797          	auipc	a5,0x6
    80005534:	22878793          	addi	a5,a5,552 # 8000b758 <_ZTV12ConsumerSync+0x10>
    80005538:	00f53023          	sd	a5,0(a0)
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	818080e7          	jalr	-2024(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80005544:	00813083          	ld	ra,8(sp)
    80005548:	00013403          	ld	s0,0(sp)
    8000554c:	01010113          	addi	sp,sp,16
    80005550:	00008067          	ret

0000000080005554 <_ZN12ConsumerSyncD0Ev>:
    80005554:	fe010113          	addi	sp,sp,-32
    80005558:	00113c23          	sd	ra,24(sp)
    8000555c:	00813823          	sd	s0,16(sp)
    80005560:	00913423          	sd	s1,8(sp)
    80005564:	02010413          	addi	s0,sp,32
    80005568:	00050493          	mv	s1,a0
    8000556c:	00006797          	auipc	a5,0x6
    80005570:	1ec78793          	addi	a5,a5,492 # 8000b758 <_ZTV12ConsumerSync+0x10>
    80005574:	00f53023          	sd	a5,0(a0)
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	7dc080e7          	jalr	2012(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80005580:	00048513          	mv	a0,s1
    80005584:	ffffd097          	auipc	ra,0xffffd
    80005588:	830080e7          	jalr	-2000(ra) # 80001db4 <_ZdlPv>
    8000558c:	01813083          	ld	ra,24(sp)
    80005590:	01013403          	ld	s0,16(sp)
    80005594:	00813483          	ld	s1,8(sp)
    80005598:	02010113          	addi	sp,sp,32
    8000559c:	00008067          	ret

00000000800055a0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800055a0:	ff010113          	addi	sp,sp,-16
    800055a4:	00113423          	sd	ra,8(sp)
    800055a8:	00813023          	sd	s0,0(sp)
    800055ac:	01010413          	addi	s0,sp,16
    800055b0:	00006797          	auipc	a5,0x6
    800055b4:	18078793          	addi	a5,a5,384 # 8000b730 <_ZTV12ProducerSync+0x10>
    800055b8:	00f53023          	sd	a5,0(a0)
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	798080e7          	jalr	1944(ra) # 80001d54 <_ZN6ThreadD1Ev>
    800055c4:	00813083          	ld	ra,8(sp)
    800055c8:	00013403          	ld	s0,0(sp)
    800055cc:	01010113          	addi	sp,sp,16
    800055d0:	00008067          	ret

00000000800055d4 <_ZN12ProducerSyncD0Ev>:
    800055d4:	fe010113          	addi	sp,sp,-32
    800055d8:	00113c23          	sd	ra,24(sp)
    800055dc:	00813823          	sd	s0,16(sp)
    800055e0:	00913423          	sd	s1,8(sp)
    800055e4:	02010413          	addi	s0,sp,32
    800055e8:	00050493          	mv	s1,a0
    800055ec:	00006797          	auipc	a5,0x6
    800055f0:	14478793          	addi	a5,a5,324 # 8000b730 <_ZTV12ProducerSync+0x10>
    800055f4:	00f53023          	sd	a5,0(a0)
    800055f8:	ffffc097          	auipc	ra,0xffffc
    800055fc:	75c080e7          	jalr	1884(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80005600:	00048513          	mv	a0,s1
    80005604:	ffffc097          	auipc	ra,0xffffc
    80005608:	7b0080e7          	jalr	1968(ra) # 80001db4 <_ZdlPv>
    8000560c:	01813083          	ld	ra,24(sp)
    80005610:	01013403          	ld	s0,16(sp)
    80005614:	00813483          	ld	s1,8(sp)
    80005618:	02010113          	addi	sp,sp,32
    8000561c:	00008067          	ret

0000000080005620 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005620:	ff010113          	addi	sp,sp,-16
    80005624:	00113423          	sd	ra,8(sp)
    80005628:	00813023          	sd	s0,0(sp)
    8000562c:	01010413          	addi	s0,sp,16
    80005630:	00006797          	auipc	a5,0x6
    80005634:	0d878793          	addi	a5,a5,216 # 8000b708 <_ZTV16ProducerKeyboard+0x10>
    80005638:	00f53023          	sd	a5,0(a0)
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	718080e7          	jalr	1816(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80005644:	00813083          	ld	ra,8(sp)
    80005648:	00013403          	ld	s0,0(sp)
    8000564c:	01010113          	addi	sp,sp,16
    80005650:	00008067          	ret

0000000080005654 <_ZN16ProducerKeyboardD0Ev>:
    80005654:	fe010113          	addi	sp,sp,-32
    80005658:	00113c23          	sd	ra,24(sp)
    8000565c:	00813823          	sd	s0,16(sp)
    80005660:	00913423          	sd	s1,8(sp)
    80005664:	02010413          	addi	s0,sp,32
    80005668:	00050493          	mv	s1,a0
    8000566c:	00006797          	auipc	a5,0x6
    80005670:	09c78793          	addi	a5,a5,156 # 8000b708 <_ZTV16ProducerKeyboard+0x10>
    80005674:	00f53023          	sd	a5,0(a0)
    80005678:	ffffc097          	auipc	ra,0xffffc
    8000567c:	6dc080e7          	jalr	1756(ra) # 80001d54 <_ZN6ThreadD1Ev>
    80005680:	00048513          	mv	a0,s1
    80005684:	ffffc097          	auipc	ra,0xffffc
    80005688:	730080e7          	jalr	1840(ra) # 80001db4 <_ZdlPv>
    8000568c:	01813083          	ld	ra,24(sp)
    80005690:	01013403          	ld	s0,16(sp)
    80005694:	00813483          	ld	s1,8(sp)
    80005698:	02010113          	addi	sp,sp,32
    8000569c:	00008067          	ret

00000000800056a0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800056a0:	ff010113          	addi	sp,sp,-16
    800056a4:	00113423          	sd	ra,8(sp)
    800056a8:	00813023          	sd	s0,0(sp)
    800056ac:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800056b0:	02053583          	ld	a1,32(a0)
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	7e4080e7          	jalr	2020(ra) # 80004e98 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800056bc:	00813083          	ld	ra,8(sp)
    800056c0:	00013403          	ld	s0,0(sp)
    800056c4:	01010113          	addi	sp,sp,16
    800056c8:	00008067          	ret

00000000800056cc <_ZN12ProducerSync3runEv>:
    void run() override {
    800056cc:	ff010113          	addi	sp,sp,-16
    800056d0:	00113423          	sd	ra,8(sp)
    800056d4:	00813023          	sd	s0,0(sp)
    800056d8:	01010413          	addi	s0,sp,16
        producer(td);
    800056dc:	02053583          	ld	a1,32(a0)
    800056e0:	00000097          	auipc	ra,0x0
    800056e4:	878080e7          	jalr	-1928(ra) # 80004f58 <_ZN12ProducerSync8producerEPv>
    }
    800056e8:	00813083          	ld	ra,8(sp)
    800056ec:	00013403          	ld	s0,0(sp)
    800056f0:	01010113          	addi	sp,sp,16
    800056f4:	00008067          	ret

00000000800056f8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800056f8:	ff010113          	addi	sp,sp,-16
    800056fc:	00113423          	sd	ra,8(sp)
    80005700:	00813023          	sd	s0,0(sp)
    80005704:	01010413          	addi	s0,sp,16
        consumer(td);
    80005708:	02053583          	ld	a1,32(a0)
    8000570c:	00000097          	auipc	ra,0x0
    80005710:	8e0080e7          	jalr	-1824(ra) # 80004fec <_ZN12ConsumerSync8consumerEPv>
    }
    80005714:	00813083          	ld	ra,8(sp)
    80005718:	00013403          	ld	s0,0(sp)
    8000571c:	01010113          	addi	sp,sp,16
    80005720:	00008067          	ret

0000000080005724 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005724:	fe010113          	addi	sp,sp,-32
    80005728:	00113c23          	sd	ra,24(sp)
    8000572c:	00813823          	sd	s0,16(sp)
    80005730:	00913423          	sd	s1,8(sp)
    80005734:	02010413          	addi	s0,sp,32
    80005738:	00050493          	mv	s1,a0
    LOCK();
    8000573c:	00100613          	li	a2,1
    80005740:	00000593          	li	a1,0
    80005744:	00006517          	auipc	a0,0x6
    80005748:	1c450513          	addi	a0,a0,452 # 8000b908 <lockPrint>
    8000574c:	ffffc097          	auipc	ra,0xffffc
    80005750:	ae8080e7          	jalr	-1304(ra) # 80001234 <copy_and_swap>
    80005754:	00050863          	beqz	a0,80005764 <_Z11printStringPKc+0x40>
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	bfc080e7          	jalr	-1028(ra) # 80001354 <_Z15thread_dispatchv>
    80005760:	fddff06f          	j	8000573c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005764:	0004c503          	lbu	a0,0(s1)
    80005768:	00050a63          	beqz	a0,8000577c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	d14080e7          	jalr	-748(ra) # 80001480 <_Z4putcc>
        string++;
    80005774:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005778:	fedff06f          	j	80005764 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000577c:	00000613          	li	a2,0
    80005780:	00100593          	li	a1,1
    80005784:	00006517          	auipc	a0,0x6
    80005788:	18450513          	addi	a0,a0,388 # 8000b908 <lockPrint>
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	aa8080e7          	jalr	-1368(ra) # 80001234 <copy_and_swap>
    80005794:	fe0514e3          	bnez	a0,8000577c <_Z11printStringPKc+0x58>
}
    80005798:	01813083          	ld	ra,24(sp)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	00813483          	ld	s1,8(sp)
    800057a4:	02010113          	addi	sp,sp,32
    800057a8:	00008067          	ret

00000000800057ac <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800057ac:	fd010113          	addi	sp,sp,-48
    800057b0:	02113423          	sd	ra,40(sp)
    800057b4:	02813023          	sd	s0,32(sp)
    800057b8:	00913c23          	sd	s1,24(sp)
    800057bc:	01213823          	sd	s2,16(sp)
    800057c0:	01313423          	sd	s3,8(sp)
    800057c4:	01413023          	sd	s4,0(sp)
    800057c8:	03010413          	addi	s0,sp,48
    800057cc:	00050993          	mv	s3,a0
    800057d0:	00058a13          	mv	s4,a1
    LOCK();
    800057d4:	00100613          	li	a2,1
    800057d8:	00000593          	li	a1,0
    800057dc:	00006517          	auipc	a0,0x6
    800057e0:	12c50513          	addi	a0,a0,300 # 8000b908 <lockPrint>
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	a50080e7          	jalr	-1456(ra) # 80001234 <copy_and_swap>
    800057ec:	00050863          	beqz	a0,800057fc <_Z9getStringPci+0x50>
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	b64080e7          	jalr	-1180(ra) # 80001354 <_Z15thread_dispatchv>
    800057f8:	fddff06f          	j	800057d4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800057fc:	00000913          	li	s2,0
    80005800:	00090493          	mv	s1,s2
    80005804:	0019091b          	addiw	s2,s2,1
    80005808:	03495a63          	bge	s2,s4,8000583c <_Z9getStringPci+0x90>
        cc = getc();
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	c98080e7          	jalr	-872(ra) # 800014a4 <_Z4getcv>
        if(cc < 1)
    80005814:	02050463          	beqz	a0,8000583c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005818:	009984b3          	add	s1,s3,s1
    8000581c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005820:	00a00793          	li	a5,10
    80005824:	00f50a63          	beq	a0,a5,80005838 <_Z9getStringPci+0x8c>
    80005828:	00d00793          	li	a5,13
    8000582c:	fcf51ae3          	bne	a0,a5,80005800 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005830:	00090493          	mv	s1,s2
    80005834:	0080006f          	j	8000583c <_Z9getStringPci+0x90>
    80005838:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000583c:	009984b3          	add	s1,s3,s1
    80005840:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005844:	00000613          	li	a2,0
    80005848:	00100593          	li	a1,1
    8000584c:	00006517          	auipc	a0,0x6
    80005850:	0bc50513          	addi	a0,a0,188 # 8000b908 <lockPrint>
    80005854:	ffffc097          	auipc	ra,0xffffc
    80005858:	9e0080e7          	jalr	-1568(ra) # 80001234 <copy_and_swap>
    8000585c:	fe0514e3          	bnez	a0,80005844 <_Z9getStringPci+0x98>
    return buf;
}
    80005860:	00098513          	mv	a0,s3
    80005864:	02813083          	ld	ra,40(sp)
    80005868:	02013403          	ld	s0,32(sp)
    8000586c:	01813483          	ld	s1,24(sp)
    80005870:	01013903          	ld	s2,16(sp)
    80005874:	00813983          	ld	s3,8(sp)
    80005878:	00013a03          	ld	s4,0(sp)
    8000587c:	03010113          	addi	sp,sp,48
    80005880:	00008067          	ret

0000000080005884 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005884:	ff010113          	addi	sp,sp,-16
    80005888:	00813423          	sd	s0,8(sp)
    8000588c:	01010413          	addi	s0,sp,16
    80005890:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005894:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005898:	0006c603          	lbu	a2,0(a3)
    8000589c:	fd06071b          	addiw	a4,a2,-48
    800058a0:	0ff77713          	andi	a4,a4,255
    800058a4:	00900793          	li	a5,9
    800058a8:	02e7e063          	bltu	a5,a4,800058c8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800058ac:	0025179b          	slliw	a5,a0,0x2
    800058b0:	00a787bb          	addw	a5,a5,a0
    800058b4:	0017979b          	slliw	a5,a5,0x1
    800058b8:	00168693          	addi	a3,a3,1
    800058bc:	00c787bb          	addw	a5,a5,a2
    800058c0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800058c4:	fd5ff06f          	j	80005898 <_Z11stringToIntPKc+0x14>
    return n;
}
    800058c8:	00813403          	ld	s0,8(sp)
    800058cc:	01010113          	addi	sp,sp,16
    800058d0:	00008067          	ret

00000000800058d4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800058d4:	fc010113          	addi	sp,sp,-64
    800058d8:	02113c23          	sd	ra,56(sp)
    800058dc:	02813823          	sd	s0,48(sp)
    800058e0:	02913423          	sd	s1,40(sp)
    800058e4:	03213023          	sd	s2,32(sp)
    800058e8:	01313c23          	sd	s3,24(sp)
    800058ec:	04010413          	addi	s0,sp,64
    800058f0:	00050493          	mv	s1,a0
    800058f4:	00058913          	mv	s2,a1
    800058f8:	00060993          	mv	s3,a2
    LOCK();
    800058fc:	00100613          	li	a2,1
    80005900:	00000593          	li	a1,0
    80005904:	00006517          	auipc	a0,0x6
    80005908:	00450513          	addi	a0,a0,4 # 8000b908 <lockPrint>
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	928080e7          	jalr	-1752(ra) # 80001234 <copy_and_swap>
    80005914:	00050863          	beqz	a0,80005924 <_Z8printIntiii+0x50>
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	a3c080e7          	jalr	-1476(ra) # 80001354 <_Z15thread_dispatchv>
    80005920:	fddff06f          	j	800058fc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005924:	00098463          	beqz	s3,8000592c <_Z8printIntiii+0x58>
    80005928:	0804c463          	bltz	s1,800059b0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000592c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005930:	00000593          	li	a1,0
    }

    i = 0;
    80005934:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005938:	0009079b          	sext.w	a5,s2
    8000593c:	0325773b          	remuw	a4,a0,s2
    80005940:	00048613          	mv	a2,s1
    80005944:	0014849b          	addiw	s1,s1,1
    80005948:	02071693          	slli	a3,a4,0x20
    8000594c:	0206d693          	srli	a3,a3,0x20
    80005950:	00006717          	auipc	a4,0x6
    80005954:	e2070713          	addi	a4,a4,-480 # 8000b770 <digits>
    80005958:	00d70733          	add	a4,a4,a3
    8000595c:	00074683          	lbu	a3,0(a4)
    80005960:	fd040713          	addi	a4,s0,-48
    80005964:	00c70733          	add	a4,a4,a2
    80005968:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000596c:	0005071b          	sext.w	a4,a0
    80005970:	0325553b          	divuw	a0,a0,s2
    80005974:	fcf772e3          	bgeu	a4,a5,80005938 <_Z8printIntiii+0x64>
    if(neg)
    80005978:	00058c63          	beqz	a1,80005990 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000597c:	fd040793          	addi	a5,s0,-48
    80005980:	009784b3          	add	s1,a5,s1
    80005984:	02d00793          	li	a5,45
    80005988:	fef48823          	sb	a5,-16(s1)
    8000598c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005990:	fff4849b          	addiw	s1,s1,-1
    80005994:	0204c463          	bltz	s1,800059bc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005998:	fd040793          	addi	a5,s0,-48
    8000599c:	009787b3          	add	a5,a5,s1
    800059a0:	ff07c503          	lbu	a0,-16(a5)
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	adc080e7          	jalr	-1316(ra) # 80001480 <_Z4putcc>
    800059ac:	fe5ff06f          	j	80005990 <_Z8printIntiii+0xbc>
        x = -xx;
    800059b0:	4090053b          	negw	a0,s1
        neg = 1;
    800059b4:	00100593          	li	a1,1
        x = -xx;
    800059b8:	f7dff06f          	j	80005934 <_Z8printIntiii+0x60>

    UNLOCK();
    800059bc:	00000613          	li	a2,0
    800059c0:	00100593          	li	a1,1
    800059c4:	00006517          	auipc	a0,0x6
    800059c8:	f4450513          	addi	a0,a0,-188 # 8000b908 <lockPrint>
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	868080e7          	jalr	-1944(ra) # 80001234 <copy_and_swap>
    800059d4:	fe0514e3          	bnez	a0,800059bc <_Z8printIntiii+0xe8>
    800059d8:	03813083          	ld	ra,56(sp)
    800059dc:	03013403          	ld	s0,48(sp)
    800059e0:	02813483          	ld	s1,40(sp)
    800059e4:	02013903          	ld	s2,32(sp)
    800059e8:	01813983          	ld	s3,24(sp)
    800059ec:	04010113          	addi	sp,sp,64
    800059f0:	00008067          	ret

00000000800059f4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800059f4:	fd010113          	addi	sp,sp,-48
    800059f8:	02113423          	sd	ra,40(sp)
    800059fc:	02813023          	sd	s0,32(sp)
    80005a00:	00913c23          	sd	s1,24(sp)
    80005a04:	01213823          	sd	s2,16(sp)
    80005a08:	01313423          	sd	s3,8(sp)
    80005a0c:	03010413          	addi	s0,sp,48
    80005a10:	00050493          	mv	s1,a0
    80005a14:	00058913          	mv	s2,a1
    80005a18:	0015879b          	addiw	a5,a1,1
    80005a1c:	0007851b          	sext.w	a0,a5
    80005a20:	00f4a023          	sw	a5,0(s1)
    80005a24:	0004a823          	sw	zero,16(s1)
    80005a28:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005a2c:	00251513          	slli	a0,a0,0x2
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	824080e7          	jalr	-2012(ra) # 80001254 <_Z9mem_allocm>
    80005a38:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005a3c:	01000513          	li	a0,16
    80005a40:	ffffc097          	auipc	ra,0xffffc
    80005a44:	34c080e7          	jalr	844(ra) # 80001d8c <_Znwm>
    80005a48:	00050993          	mv	s3,a0
    80005a4c:	00000593          	li	a1,0
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	610080e7          	jalr	1552(ra) # 80002060 <_ZN9SemaphoreC1Ej>
    80005a58:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005a5c:	01000513          	li	a0,16
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	32c080e7          	jalr	812(ra) # 80001d8c <_Znwm>
    80005a68:	00050993          	mv	s3,a0
    80005a6c:	00090593          	mv	a1,s2
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	5f0080e7          	jalr	1520(ra) # 80002060 <_ZN9SemaphoreC1Ej>
    80005a78:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005a7c:	01000513          	li	a0,16
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	30c080e7          	jalr	780(ra) # 80001d8c <_Znwm>
    80005a88:	00050913          	mv	s2,a0
    80005a8c:	00100593          	li	a1,1
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	5d0080e7          	jalr	1488(ra) # 80002060 <_ZN9SemaphoreC1Ej>
    80005a98:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005a9c:	01000513          	li	a0,16
    80005aa0:	ffffc097          	auipc	ra,0xffffc
    80005aa4:	2ec080e7          	jalr	748(ra) # 80001d8c <_Znwm>
    80005aa8:	00050913          	mv	s2,a0
    80005aac:	00100593          	li	a1,1
    80005ab0:	ffffc097          	auipc	ra,0xffffc
    80005ab4:	5b0080e7          	jalr	1456(ra) # 80002060 <_ZN9SemaphoreC1Ej>
    80005ab8:	0324b823          	sd	s2,48(s1)
}
    80005abc:	02813083          	ld	ra,40(sp)
    80005ac0:	02013403          	ld	s0,32(sp)
    80005ac4:	01813483          	ld	s1,24(sp)
    80005ac8:	01013903          	ld	s2,16(sp)
    80005acc:	00813983          	ld	s3,8(sp)
    80005ad0:	03010113          	addi	sp,sp,48
    80005ad4:	00008067          	ret
    80005ad8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005adc:	00098513          	mv	a0,s3
    80005ae0:	ffffc097          	auipc	ra,0xffffc
    80005ae4:	2d4080e7          	jalr	724(ra) # 80001db4 <_ZdlPv>
    80005ae8:	00048513          	mv	a0,s1
    80005aec:	00007097          	auipc	ra,0x7
    80005af0:	efc080e7          	jalr	-260(ra) # 8000c9e8 <_Unwind_Resume>
    80005af4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005af8:	00098513          	mv	a0,s3
    80005afc:	ffffc097          	auipc	ra,0xffffc
    80005b00:	2b8080e7          	jalr	696(ra) # 80001db4 <_ZdlPv>
    80005b04:	00048513          	mv	a0,s1
    80005b08:	00007097          	auipc	ra,0x7
    80005b0c:	ee0080e7          	jalr	-288(ra) # 8000c9e8 <_Unwind_Resume>
    80005b10:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b14:	00090513          	mv	a0,s2
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	29c080e7          	jalr	668(ra) # 80001db4 <_ZdlPv>
    80005b20:	00048513          	mv	a0,s1
    80005b24:	00007097          	auipc	ra,0x7
    80005b28:	ec4080e7          	jalr	-316(ra) # 8000c9e8 <_Unwind_Resume>
    80005b2c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005b30:	00090513          	mv	a0,s2
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	280080e7          	jalr	640(ra) # 80001db4 <_ZdlPv>
    80005b3c:	00048513          	mv	a0,s1
    80005b40:	00007097          	auipc	ra,0x7
    80005b44:	ea8080e7          	jalr	-344(ra) # 8000c9e8 <_Unwind_Resume>

0000000080005b48 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005b48:	fe010113          	addi	sp,sp,-32
    80005b4c:	00113c23          	sd	ra,24(sp)
    80005b50:	00813823          	sd	s0,16(sp)
    80005b54:	00913423          	sd	s1,8(sp)
    80005b58:	01213023          	sd	s2,0(sp)
    80005b5c:	02010413          	addi	s0,sp,32
    80005b60:	00050493          	mv	s1,a0
    80005b64:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005b68:	01853503          	ld	a0,24(a0)
    80005b6c:	ffffc097          	auipc	ra,0xffffc
    80005b70:	540080e7          	jalr	1344(ra) # 800020ac <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005b74:	0304b503          	ld	a0,48(s1)
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	534080e7          	jalr	1332(ra) # 800020ac <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005b80:	0084b783          	ld	a5,8(s1)
    80005b84:	0144a703          	lw	a4,20(s1)
    80005b88:	00271713          	slli	a4,a4,0x2
    80005b8c:	00e787b3          	add	a5,a5,a4
    80005b90:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005b94:	0144a783          	lw	a5,20(s1)
    80005b98:	0017879b          	addiw	a5,a5,1
    80005b9c:	0004a703          	lw	a4,0(s1)
    80005ba0:	02e7e7bb          	remw	a5,a5,a4
    80005ba4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ba8:	0304b503          	ld	a0,48(s1)
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	538080e7          	jalr	1336(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005bb4:	0204b503          	ld	a0,32(s1)
    80005bb8:	ffffc097          	auipc	ra,0xffffc
    80005bbc:	52c080e7          	jalr	1324(ra) # 800020e4 <_ZN9Semaphore6signalEv>

}
    80005bc0:	01813083          	ld	ra,24(sp)
    80005bc4:	01013403          	ld	s0,16(sp)
    80005bc8:	00813483          	ld	s1,8(sp)
    80005bcc:	00013903          	ld	s2,0(sp)
    80005bd0:	02010113          	addi	sp,sp,32
    80005bd4:	00008067          	ret

0000000080005bd8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005bd8:	fe010113          	addi	sp,sp,-32
    80005bdc:	00113c23          	sd	ra,24(sp)
    80005be0:	00813823          	sd	s0,16(sp)
    80005be4:	00913423          	sd	s1,8(sp)
    80005be8:	01213023          	sd	s2,0(sp)
    80005bec:	02010413          	addi	s0,sp,32
    80005bf0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005bf4:	02053503          	ld	a0,32(a0)
    80005bf8:	ffffc097          	auipc	ra,0xffffc
    80005bfc:	4b4080e7          	jalr	1204(ra) # 800020ac <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c00:	0284b503          	ld	a0,40(s1)
    80005c04:	ffffc097          	auipc	ra,0xffffc
    80005c08:	4a8080e7          	jalr	1192(ra) # 800020ac <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c0c:	0084b703          	ld	a4,8(s1)
    80005c10:	0104a783          	lw	a5,16(s1)
    80005c14:	00279693          	slli	a3,a5,0x2
    80005c18:	00d70733          	add	a4,a4,a3
    80005c1c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c20:	0017879b          	addiw	a5,a5,1
    80005c24:	0004a703          	lw	a4,0(s1)
    80005c28:	02e7e7bb          	remw	a5,a5,a4
    80005c2c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005c30:	0284b503          	ld	a0,40(s1)
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	4b0080e7          	jalr	1200(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005c3c:	0184b503          	ld	a0,24(s1)
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	4a4080e7          	jalr	1188(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005c48:	00090513          	mv	a0,s2
    80005c4c:	01813083          	ld	ra,24(sp)
    80005c50:	01013403          	ld	s0,16(sp)
    80005c54:	00813483          	ld	s1,8(sp)
    80005c58:	00013903          	ld	s2,0(sp)
    80005c5c:	02010113          	addi	sp,sp,32
    80005c60:	00008067          	ret

0000000080005c64 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005c64:	fe010113          	addi	sp,sp,-32
    80005c68:	00113c23          	sd	ra,24(sp)
    80005c6c:	00813823          	sd	s0,16(sp)
    80005c70:	00913423          	sd	s1,8(sp)
    80005c74:	01213023          	sd	s2,0(sp)
    80005c78:	02010413          	addi	s0,sp,32
    80005c7c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005c80:	02853503          	ld	a0,40(a0)
    80005c84:	ffffc097          	auipc	ra,0xffffc
    80005c88:	428080e7          	jalr	1064(ra) # 800020ac <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005c8c:	0304b503          	ld	a0,48(s1)
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	41c080e7          	jalr	1052(ra) # 800020ac <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005c98:	0144a783          	lw	a5,20(s1)
    80005c9c:	0104a903          	lw	s2,16(s1)
    80005ca0:	0327ce63          	blt	a5,s2,80005cdc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005ca4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005ca8:	0304b503          	ld	a0,48(s1)
    80005cac:	ffffc097          	auipc	ra,0xffffc
    80005cb0:	438080e7          	jalr	1080(ra) # 800020e4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005cb4:	0284b503          	ld	a0,40(s1)
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	42c080e7          	jalr	1068(ra) # 800020e4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cc0:	00090513          	mv	a0,s2
    80005cc4:	01813083          	ld	ra,24(sp)
    80005cc8:	01013403          	ld	s0,16(sp)
    80005ccc:	00813483          	ld	s1,8(sp)
    80005cd0:	00013903          	ld	s2,0(sp)
    80005cd4:	02010113          	addi	sp,sp,32
    80005cd8:	00008067          	ret
        ret = cap - head + tail;
    80005cdc:	0004a703          	lw	a4,0(s1)
    80005ce0:	4127093b          	subw	s2,a4,s2
    80005ce4:	00f9093b          	addw	s2,s2,a5
    80005ce8:	fc1ff06f          	j	80005ca8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005cec <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005cec:	fe010113          	addi	sp,sp,-32
    80005cf0:	00113c23          	sd	ra,24(sp)
    80005cf4:	00813823          	sd	s0,16(sp)
    80005cf8:	00913423          	sd	s1,8(sp)
    80005cfc:	02010413          	addi	s0,sp,32
    80005d00:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d04:	00a00513          	li	a0,10
    80005d08:	ffffc097          	auipc	ra,0xffffc
    80005d0c:	330080e7          	jalr	816(ra) # 80002038 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d10:	00003517          	auipc	a0,0x3
    80005d14:	4f050513          	addi	a0,a0,1264 # 80009200 <CONSOLE_STATUS+0x1f0>
    80005d18:	00000097          	auipc	ra,0x0
    80005d1c:	a0c080e7          	jalr	-1524(ra) # 80005724 <_Z11printStringPKc>
    while (getCnt()) {
    80005d20:	00048513          	mv	a0,s1
    80005d24:	00000097          	auipc	ra,0x0
    80005d28:	f40080e7          	jalr	-192(ra) # 80005c64 <_ZN9BufferCPP6getCntEv>
    80005d2c:	02050c63          	beqz	a0,80005d64 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005d30:	0084b783          	ld	a5,8(s1)
    80005d34:	0104a703          	lw	a4,16(s1)
    80005d38:	00271713          	slli	a4,a4,0x2
    80005d3c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005d40:	0007c503          	lbu	a0,0(a5)
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	2f4080e7          	jalr	756(ra) # 80002038 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005d4c:	0104a783          	lw	a5,16(s1)
    80005d50:	0017879b          	addiw	a5,a5,1
    80005d54:	0004a703          	lw	a4,0(s1)
    80005d58:	02e7e7bb          	remw	a5,a5,a4
    80005d5c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005d60:	fc1ff06f          	j	80005d20 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005d64:	02100513          	li	a0,33
    80005d68:	ffffc097          	auipc	ra,0xffffc
    80005d6c:	2d0080e7          	jalr	720(ra) # 80002038 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005d70:	00a00513          	li	a0,10
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	2c4080e7          	jalr	708(ra) # 80002038 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005d7c:	0084b503          	ld	a0,8(s1)
    80005d80:	ffffb097          	auipc	ra,0xffffb
    80005d84:	504080e7          	jalr	1284(ra) # 80001284 <_Z8mem_freePv>
    delete itemAvailable;
    80005d88:	0204b503          	ld	a0,32(s1)
    80005d8c:	00050863          	beqz	a0,80005d9c <_ZN9BufferCPPD1Ev+0xb0>
    80005d90:	00053783          	ld	a5,0(a0)
    80005d94:	0087b783          	ld	a5,8(a5)
    80005d98:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005d9c:	0184b503          	ld	a0,24(s1)
    80005da0:	00050863          	beqz	a0,80005db0 <_ZN9BufferCPPD1Ev+0xc4>
    80005da4:	00053783          	ld	a5,0(a0)
    80005da8:	0087b783          	ld	a5,8(a5)
    80005dac:	000780e7          	jalr	a5
    delete mutexTail;
    80005db0:	0304b503          	ld	a0,48(s1)
    80005db4:	00050863          	beqz	a0,80005dc4 <_ZN9BufferCPPD1Ev+0xd8>
    80005db8:	00053783          	ld	a5,0(a0)
    80005dbc:	0087b783          	ld	a5,8(a5)
    80005dc0:	000780e7          	jalr	a5
    delete mutexHead;
    80005dc4:	0284b503          	ld	a0,40(s1)
    80005dc8:	00050863          	beqz	a0,80005dd8 <_ZN9BufferCPPD1Ev+0xec>
    80005dcc:	00053783          	ld	a5,0(a0)
    80005dd0:	0087b783          	ld	a5,8(a5)
    80005dd4:	000780e7          	jalr	a5
}
    80005dd8:	01813083          	ld	ra,24(sp)
    80005ddc:	01013403          	ld	s0,16(sp)
    80005de0:	00813483          	ld	s1,8(sp)
    80005de4:	02010113          	addi	sp,sp,32
    80005de8:	00008067          	ret

0000000080005dec <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005dec:	fe010113          	addi	sp,sp,-32
    80005df0:	00113c23          	sd	ra,24(sp)
    80005df4:	00813823          	sd	s0,16(sp)
    80005df8:	00913423          	sd	s1,8(sp)
    80005dfc:	01213023          	sd	s2,0(sp)
    80005e00:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e04:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e08:	00600493          	li	s1,6
    while (--i > 0) {
    80005e0c:	fff4849b          	addiw	s1,s1,-1
    80005e10:	04905463          	blez	s1,80005e58 <_ZL9sleepyRunPv+0x6c>
        printString("Hello ");
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	40450513          	addi	a0,a0,1028 # 80009218 <CONSOLE_STATUS+0x208>
    80005e1c:	00000097          	auipc	ra,0x0
    80005e20:	908080e7          	jalr	-1784(ra) # 80005724 <_Z11printStringPKc>
        printInt(sleep_time);
    80005e24:	00000613          	li	a2,0
    80005e28:	00a00593          	li	a1,10
    80005e2c:	0009051b          	sext.w	a0,s2
    80005e30:	00000097          	auipc	ra,0x0
    80005e34:	aa4080e7          	jalr	-1372(ra) # 800058d4 <_Z8printIntiii>
        printString(" !\n");
    80005e38:	00003517          	auipc	a0,0x3
    80005e3c:	3e850513          	addi	a0,a0,1000 # 80009220 <CONSOLE_STATUS+0x210>
    80005e40:	00000097          	auipc	ra,0x0
    80005e44:	8e4080e7          	jalr	-1820(ra) # 80005724 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005e48:	00090513          	mv	a0,s2
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	608080e7          	jalr	1544(ra) # 80001454 <_Z10time_sleepm>
    while (--i > 0) {
    80005e54:	fb9ff06f          	j	80005e0c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005e58:	00a00793          	li	a5,10
    80005e5c:	02f95933          	divu	s2,s2,a5
    80005e60:	fff90913          	addi	s2,s2,-1
    80005e64:	00006797          	auipc	a5,0x6
    80005e68:	aac78793          	addi	a5,a5,-1364 # 8000b910 <_ZL8finished>
    80005e6c:	01278933          	add	s2,a5,s2
    80005e70:	00100793          	li	a5,1
    80005e74:	00f90023          	sb	a5,0(s2)
}
    80005e78:	01813083          	ld	ra,24(sp)
    80005e7c:	01013403          	ld	s0,16(sp)
    80005e80:	00813483          	ld	s1,8(sp)
    80005e84:	00013903          	ld	s2,0(sp)
    80005e88:	02010113          	addi	sp,sp,32
    80005e8c:	00008067          	ret

0000000080005e90 <_Z12testSleepingv>:

void testSleeping() {
    80005e90:	fc010113          	addi	sp,sp,-64
    80005e94:	02113c23          	sd	ra,56(sp)
    80005e98:	02813823          	sd	s0,48(sp)
    80005e9c:	02913423          	sd	s1,40(sp)
    80005ea0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ea4:	00a00793          	li	a5,10
    80005ea8:	fcf43823          	sd	a5,-48(s0)
    80005eac:	01400793          	li	a5,20
    80005eb0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005eb4:	00000493          	li	s1,0
    80005eb8:	02c0006f          	j	80005ee4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ebc:	00349793          	slli	a5,s1,0x3
    80005ec0:	fd040613          	addi	a2,s0,-48
    80005ec4:	00f60633          	add	a2,a2,a5
    80005ec8:	00000597          	auipc	a1,0x0
    80005ecc:	f2458593          	addi	a1,a1,-220 # 80005dec <_ZL9sleepyRunPv>
    80005ed0:	fc040513          	addi	a0,s0,-64
    80005ed4:	00f50533          	add	a0,a0,a5
    80005ed8:	ffffb097          	auipc	ra,0xffffb
    80005edc:	3d8080e7          	jalr	984(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ee0:	0014849b          	addiw	s1,s1,1
    80005ee4:	00100793          	li	a5,1
    80005ee8:	fc97dae3          	bge	a5,s1,80005ebc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005eec:	00006797          	auipc	a5,0x6
    80005ef0:	a247c783          	lbu	a5,-1500(a5) # 8000b910 <_ZL8finished>
    80005ef4:	fe078ce3          	beqz	a5,80005eec <_Z12testSleepingv+0x5c>
    80005ef8:	00006797          	auipc	a5,0x6
    80005efc:	a197c783          	lbu	a5,-1511(a5) # 8000b911 <_ZL8finished+0x1>
    80005f00:	fe0786e3          	beqz	a5,80005eec <_Z12testSleepingv+0x5c>
}
    80005f04:	03813083          	ld	ra,56(sp)
    80005f08:	03013403          	ld	s0,48(sp)
    80005f0c:	02813483          	ld	s1,40(sp)
    80005f10:	04010113          	addi	sp,sp,64
    80005f14:	00008067          	ret

0000000080005f18 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005f18:	fe010113          	addi	sp,sp,-32
    80005f1c:	00113c23          	sd	ra,24(sp)
    80005f20:	00813823          	sd	s0,16(sp)
    80005f24:	00913423          	sd	s1,8(sp)
    80005f28:	01213023          	sd	s2,0(sp)
    80005f2c:	02010413          	addi	s0,sp,32
    80005f30:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005f34:	00100793          	li	a5,1
    80005f38:	02a7f863          	bgeu	a5,a0,80005f68 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005f3c:	00a00793          	li	a5,10
    80005f40:	02f577b3          	remu	a5,a0,a5
    80005f44:	02078e63          	beqz	a5,80005f80 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005f48:	fff48513          	addi	a0,s1,-1
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	fcc080e7          	jalr	-52(ra) # 80005f18 <_ZL9fibonaccim>
    80005f54:	00050913          	mv	s2,a0
    80005f58:	ffe48513          	addi	a0,s1,-2
    80005f5c:	00000097          	auipc	ra,0x0
    80005f60:	fbc080e7          	jalr	-68(ra) # 80005f18 <_ZL9fibonaccim>
    80005f64:	00a90533          	add	a0,s2,a0
}
    80005f68:	01813083          	ld	ra,24(sp)
    80005f6c:	01013403          	ld	s0,16(sp)
    80005f70:	00813483          	ld	s1,8(sp)
    80005f74:	00013903          	ld	s2,0(sp)
    80005f78:	02010113          	addi	sp,sp,32
    80005f7c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005f80:	ffffb097          	auipc	ra,0xffffb
    80005f84:	3d4080e7          	jalr	980(ra) # 80001354 <_Z15thread_dispatchv>
    80005f88:	fc1ff06f          	j	80005f48 <_ZL9fibonaccim+0x30>

0000000080005f8c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005f8c:	fe010113          	addi	sp,sp,-32
    80005f90:	00113c23          	sd	ra,24(sp)
    80005f94:	00813823          	sd	s0,16(sp)
    80005f98:	00913423          	sd	s1,8(sp)
    80005f9c:	01213023          	sd	s2,0(sp)
    80005fa0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005fa4:	00a00493          	li	s1,10
    80005fa8:	0400006f          	j	80005fe8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005fac:	00003517          	auipc	a0,0x3
    80005fb0:	1bc50513          	addi	a0,a0,444 # 80009168 <CONSOLE_STATUS+0x158>
    80005fb4:	fffff097          	auipc	ra,0xfffff
    80005fb8:	770080e7          	jalr	1904(ra) # 80005724 <_Z11printStringPKc>
    80005fbc:	00000613          	li	a2,0
    80005fc0:	00a00593          	li	a1,10
    80005fc4:	00048513          	mv	a0,s1
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	90c080e7          	jalr	-1780(ra) # 800058d4 <_Z8printIntiii>
    80005fd0:	00003517          	auipc	a0,0x3
    80005fd4:	08850513          	addi	a0,a0,136 # 80009058 <CONSOLE_STATUS+0x48>
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	74c080e7          	jalr	1868(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005fe0:	0014849b          	addiw	s1,s1,1
    80005fe4:	0ff4f493          	andi	s1,s1,255
    80005fe8:	00c00793          	li	a5,12
    80005fec:	fc97f0e3          	bgeu	a5,s1,80005fac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005ff0:	00003517          	auipc	a0,0x3
    80005ff4:	18050513          	addi	a0,a0,384 # 80009170 <CONSOLE_STATUS+0x160>
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	72c080e7          	jalr	1836(ra) # 80005724 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006000:	00500313          	li	t1,5
    thread_dispatch();
    80006004:	ffffb097          	auipc	ra,0xffffb
    80006008:	350080e7          	jalr	848(ra) # 80001354 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000600c:	01000513          	li	a0,16
    80006010:	00000097          	auipc	ra,0x0
    80006014:	f08080e7          	jalr	-248(ra) # 80005f18 <_ZL9fibonaccim>
    80006018:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000601c:	00003517          	auipc	a0,0x3
    80006020:	16450513          	addi	a0,a0,356 # 80009180 <CONSOLE_STATUS+0x170>
    80006024:	fffff097          	auipc	ra,0xfffff
    80006028:	700080e7          	jalr	1792(ra) # 80005724 <_Z11printStringPKc>
    8000602c:	00000613          	li	a2,0
    80006030:	00a00593          	li	a1,10
    80006034:	0009051b          	sext.w	a0,s2
    80006038:	00000097          	auipc	ra,0x0
    8000603c:	89c080e7          	jalr	-1892(ra) # 800058d4 <_Z8printIntiii>
    80006040:	00003517          	auipc	a0,0x3
    80006044:	01850513          	addi	a0,a0,24 # 80009058 <CONSOLE_STATUS+0x48>
    80006048:	fffff097          	auipc	ra,0xfffff
    8000604c:	6dc080e7          	jalr	1756(ra) # 80005724 <_Z11printStringPKc>
    80006050:	0400006f          	j	80006090 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006054:	00003517          	auipc	a0,0x3
    80006058:	11450513          	addi	a0,a0,276 # 80009168 <CONSOLE_STATUS+0x158>
    8000605c:	fffff097          	auipc	ra,0xfffff
    80006060:	6c8080e7          	jalr	1736(ra) # 80005724 <_Z11printStringPKc>
    80006064:	00000613          	li	a2,0
    80006068:	00a00593          	li	a1,10
    8000606c:	00048513          	mv	a0,s1
    80006070:	00000097          	auipc	ra,0x0
    80006074:	864080e7          	jalr	-1948(ra) # 800058d4 <_Z8printIntiii>
    80006078:	00003517          	auipc	a0,0x3
    8000607c:	fe050513          	addi	a0,a0,-32 # 80009058 <CONSOLE_STATUS+0x48>
    80006080:	fffff097          	auipc	ra,0xfffff
    80006084:	6a4080e7          	jalr	1700(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006088:	0014849b          	addiw	s1,s1,1
    8000608c:	0ff4f493          	andi	s1,s1,255
    80006090:	00f00793          	li	a5,15
    80006094:	fc97f0e3          	bgeu	a5,s1,80006054 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006098:	00003517          	auipc	a0,0x3
    8000609c:	0f850513          	addi	a0,a0,248 # 80009190 <CONSOLE_STATUS+0x180>
    800060a0:	fffff097          	auipc	ra,0xfffff
    800060a4:	684080e7          	jalr	1668(ra) # 80005724 <_Z11printStringPKc>
    finishedD = true;
    800060a8:	00100793          	li	a5,1
    800060ac:	00006717          	auipc	a4,0x6
    800060b0:	86f70323          	sb	a5,-1946(a4) # 8000b912 <_ZL9finishedD>
    thread_dispatch();
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	2a0080e7          	jalr	672(ra) # 80001354 <_Z15thread_dispatchv>
}
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	01013403          	ld	s0,16(sp)
    800060c4:	00813483          	ld	s1,8(sp)
    800060c8:	00013903          	ld	s2,0(sp)
    800060cc:	02010113          	addi	sp,sp,32
    800060d0:	00008067          	ret

00000000800060d4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800060d4:	fe010113          	addi	sp,sp,-32
    800060d8:	00113c23          	sd	ra,24(sp)
    800060dc:	00813823          	sd	s0,16(sp)
    800060e0:	00913423          	sd	s1,8(sp)
    800060e4:	01213023          	sd	s2,0(sp)
    800060e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800060ec:	00000493          	li	s1,0
    800060f0:	0400006f          	j	80006130 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	04450513          	addi	a0,a0,68 # 80009138 <CONSOLE_STATUS+0x128>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	628080e7          	jalr	1576(ra) # 80005724 <_Z11printStringPKc>
    80006104:	00000613          	li	a2,0
    80006108:	00a00593          	li	a1,10
    8000610c:	00048513          	mv	a0,s1
    80006110:	fffff097          	auipc	ra,0xfffff
    80006114:	7c4080e7          	jalr	1988(ra) # 800058d4 <_Z8printIntiii>
    80006118:	00003517          	auipc	a0,0x3
    8000611c:	f4050513          	addi	a0,a0,-192 # 80009058 <CONSOLE_STATUS+0x48>
    80006120:	fffff097          	auipc	ra,0xfffff
    80006124:	604080e7          	jalr	1540(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006128:	0014849b          	addiw	s1,s1,1
    8000612c:	0ff4f493          	andi	s1,s1,255
    80006130:	00200793          	li	a5,2
    80006134:	fc97f0e3          	bgeu	a5,s1,800060f4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006138:	00003517          	auipc	a0,0x3
    8000613c:	00850513          	addi	a0,a0,8 # 80009140 <CONSOLE_STATUS+0x130>
    80006140:	fffff097          	auipc	ra,0xfffff
    80006144:	5e4080e7          	jalr	1508(ra) # 80005724 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006148:	00700313          	li	t1,7
    thread_dispatch();
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	208080e7          	jalr	520(ra) # 80001354 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006154:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006158:	00003517          	auipc	a0,0x3
    8000615c:	ff850513          	addi	a0,a0,-8 # 80009150 <CONSOLE_STATUS+0x140>
    80006160:	fffff097          	auipc	ra,0xfffff
    80006164:	5c4080e7          	jalr	1476(ra) # 80005724 <_Z11printStringPKc>
    80006168:	00000613          	li	a2,0
    8000616c:	00a00593          	li	a1,10
    80006170:	0009051b          	sext.w	a0,s2
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	760080e7          	jalr	1888(ra) # 800058d4 <_Z8printIntiii>
    8000617c:	00003517          	auipc	a0,0x3
    80006180:	edc50513          	addi	a0,a0,-292 # 80009058 <CONSOLE_STATUS+0x48>
    80006184:	fffff097          	auipc	ra,0xfffff
    80006188:	5a0080e7          	jalr	1440(ra) # 80005724 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000618c:	00c00513          	li	a0,12
    80006190:	00000097          	auipc	ra,0x0
    80006194:	d88080e7          	jalr	-632(ra) # 80005f18 <_ZL9fibonaccim>
    80006198:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000619c:	00003517          	auipc	a0,0x3
    800061a0:	fbc50513          	addi	a0,a0,-68 # 80009158 <CONSOLE_STATUS+0x148>
    800061a4:	fffff097          	auipc	ra,0xfffff
    800061a8:	580080e7          	jalr	1408(ra) # 80005724 <_Z11printStringPKc>
    800061ac:	00000613          	li	a2,0
    800061b0:	00a00593          	li	a1,10
    800061b4:	0009051b          	sext.w	a0,s2
    800061b8:	fffff097          	auipc	ra,0xfffff
    800061bc:	71c080e7          	jalr	1820(ra) # 800058d4 <_Z8printIntiii>
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	e9850513          	addi	a0,a0,-360 # 80009058 <CONSOLE_STATUS+0x48>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	55c080e7          	jalr	1372(ra) # 80005724 <_Z11printStringPKc>
    800061d0:	0400006f          	j	80006210 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	f6450513          	addi	a0,a0,-156 # 80009138 <CONSOLE_STATUS+0x128>
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	548080e7          	jalr	1352(ra) # 80005724 <_Z11printStringPKc>
    800061e4:	00000613          	li	a2,0
    800061e8:	00a00593          	li	a1,10
    800061ec:	00048513          	mv	a0,s1
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	6e4080e7          	jalr	1764(ra) # 800058d4 <_Z8printIntiii>
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	e6050513          	addi	a0,a0,-416 # 80009058 <CONSOLE_STATUS+0x48>
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	524080e7          	jalr	1316(ra) # 80005724 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006208:	0014849b          	addiw	s1,s1,1
    8000620c:	0ff4f493          	andi	s1,s1,255
    80006210:	00500793          	li	a5,5
    80006214:	fc97f0e3          	bgeu	a5,s1,800061d4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	ef850513          	addi	a0,a0,-264 # 80009110 <CONSOLE_STATUS+0x100>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	504080e7          	jalr	1284(ra) # 80005724 <_Z11printStringPKc>
    finishedC = true;
    80006228:	00100793          	li	a5,1
    8000622c:	00005717          	auipc	a4,0x5
    80006230:	6ef703a3          	sb	a5,1767(a4) # 8000b913 <_ZL9finishedC>
    thread_dispatch();
    80006234:	ffffb097          	auipc	ra,0xffffb
    80006238:	120080e7          	jalr	288(ra) # 80001354 <_Z15thread_dispatchv>
}
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	01013403          	ld	s0,16(sp)
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	00013903          	ld	s2,0(sp)
    8000624c:	02010113          	addi	sp,sp,32
    80006250:	00008067          	ret

0000000080006254 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006254:	fe010113          	addi	sp,sp,-32
    80006258:	00113c23          	sd	ra,24(sp)
    8000625c:	00813823          	sd	s0,16(sp)
    80006260:	00913423          	sd	s1,8(sp)
    80006264:	01213023          	sd	s2,0(sp)
    80006268:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000626c:	00000913          	li	s2,0
    80006270:	0400006f          	j	800062b0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006274:	ffffb097          	auipc	ra,0xffffb
    80006278:	0e0080e7          	jalr	224(ra) # 80001354 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000627c:	00148493          	addi	s1,s1,1
    80006280:	000027b7          	lui	a5,0x2
    80006284:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006288:	0097ee63          	bltu	a5,s1,800062a4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000628c:	00000713          	li	a4,0
    80006290:	000077b7          	lui	a5,0x7
    80006294:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006298:	fce7eee3          	bltu	a5,a4,80006274 <_ZL11workerBodyBPv+0x20>
    8000629c:	00170713          	addi	a4,a4,1
    800062a0:	ff1ff06f          	j	80006290 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800062a4:	00a00793          	li	a5,10
    800062a8:	04f90663          	beq	s2,a5,800062f4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800062ac:	00190913          	addi	s2,s2,1
    800062b0:	00f00793          	li	a5,15
    800062b4:	0527e463          	bltu	a5,s2,800062fc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	e6850513          	addi	a0,a0,-408 # 80009120 <CONSOLE_STATUS+0x110>
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	464080e7          	jalr	1124(ra) # 80005724 <_Z11printStringPKc>
    800062c8:	00000613          	li	a2,0
    800062cc:	00a00593          	li	a1,10
    800062d0:	0009051b          	sext.w	a0,s2
    800062d4:	fffff097          	auipc	ra,0xfffff
    800062d8:	600080e7          	jalr	1536(ra) # 800058d4 <_Z8printIntiii>
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	d7c50513          	addi	a0,a0,-644 # 80009058 <CONSOLE_STATUS+0x48>
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	440080e7          	jalr	1088(ra) # 80005724 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800062ec:	00000493          	li	s1,0
    800062f0:	f91ff06f          	j	80006280 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800062f4:	14102ff3          	csrr	t6,sepc
    800062f8:	fb5ff06f          	j	800062ac <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800062fc:	00003517          	auipc	a0,0x3
    80006300:	e2c50513          	addi	a0,a0,-468 # 80009128 <CONSOLE_STATUS+0x118>
    80006304:	fffff097          	auipc	ra,0xfffff
    80006308:	420080e7          	jalr	1056(ra) # 80005724 <_Z11printStringPKc>
    finishedB = true;
    8000630c:	00100793          	li	a5,1
    80006310:	00005717          	auipc	a4,0x5
    80006314:	60f70223          	sb	a5,1540(a4) # 8000b914 <_ZL9finishedB>
    thread_dispatch();
    80006318:	ffffb097          	auipc	ra,0xffffb
    8000631c:	03c080e7          	jalr	60(ra) # 80001354 <_Z15thread_dispatchv>
}
    80006320:	01813083          	ld	ra,24(sp)
    80006324:	01013403          	ld	s0,16(sp)
    80006328:	00813483          	ld	s1,8(sp)
    8000632c:	00013903          	ld	s2,0(sp)
    80006330:	02010113          	addi	sp,sp,32
    80006334:	00008067          	ret

0000000080006338 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006338:	fe010113          	addi	sp,sp,-32
    8000633c:	00113c23          	sd	ra,24(sp)
    80006340:	00813823          	sd	s0,16(sp)
    80006344:	00913423          	sd	s1,8(sp)
    80006348:	01213023          	sd	s2,0(sp)
    8000634c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006350:	00000913          	li	s2,0
    80006354:	0380006f          	j	8000638c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006358:	ffffb097          	auipc	ra,0xffffb
    8000635c:	ffc080e7          	jalr	-4(ra) # 80001354 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006360:	00148493          	addi	s1,s1,1
    80006364:	000027b7          	lui	a5,0x2
    80006368:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000636c:	0097ee63          	bltu	a5,s1,80006388 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006370:	00000713          	li	a4,0
    80006374:	000077b7          	lui	a5,0x7
    80006378:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000637c:	fce7eee3          	bltu	a5,a4,80006358 <_ZL11workerBodyAPv+0x20>
    80006380:	00170713          	addi	a4,a4,1
    80006384:	ff1ff06f          	j	80006374 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006388:	00190913          	addi	s2,s2,1
    8000638c:	00900793          	li	a5,9
    80006390:	0527e063          	bltu	a5,s2,800063d0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006394:	00003517          	auipc	a0,0x3
    80006398:	d7450513          	addi	a0,a0,-652 # 80009108 <CONSOLE_STATUS+0xf8>
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	388080e7          	jalr	904(ra) # 80005724 <_Z11printStringPKc>
    800063a4:	00000613          	li	a2,0
    800063a8:	00a00593          	li	a1,10
    800063ac:	0009051b          	sext.w	a0,s2
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	524080e7          	jalr	1316(ra) # 800058d4 <_Z8printIntiii>
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	ca050513          	addi	a0,a0,-864 # 80009058 <CONSOLE_STATUS+0x48>
    800063c0:	fffff097          	auipc	ra,0xfffff
    800063c4:	364080e7          	jalr	868(ra) # 80005724 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800063c8:	00000493          	li	s1,0
    800063cc:	f99ff06f          	j	80006364 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800063d0:	00003517          	auipc	a0,0x3
    800063d4:	d4050513          	addi	a0,a0,-704 # 80009110 <CONSOLE_STATUS+0x100>
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	34c080e7          	jalr	844(ra) # 80005724 <_Z11printStringPKc>
    finishedA = true;
    800063e0:	00100793          	li	a5,1
    800063e4:	00005717          	auipc	a4,0x5
    800063e8:	52f708a3          	sb	a5,1329(a4) # 8000b915 <_ZL9finishedA>
}
    800063ec:	01813083          	ld	ra,24(sp)
    800063f0:	01013403          	ld	s0,16(sp)
    800063f4:	00813483          	ld	s1,8(sp)
    800063f8:	00013903          	ld	s2,0(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret

0000000080006404 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006404:	fd010113          	addi	sp,sp,-48
    80006408:	02113423          	sd	ra,40(sp)
    8000640c:	02813023          	sd	s0,32(sp)
    80006410:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006414:	00000613          	li	a2,0
    80006418:	00000597          	auipc	a1,0x0
    8000641c:	f2058593          	addi	a1,a1,-224 # 80006338 <_ZL11workerBodyAPv>
    80006420:	fd040513          	addi	a0,s0,-48
    80006424:	ffffb097          	auipc	ra,0xffffb
    80006428:	e8c080e7          	jalr	-372(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000642c:	00003517          	auipc	a0,0x3
    80006430:	d7450513          	addi	a0,a0,-652 # 800091a0 <CONSOLE_STATUS+0x190>
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	2f0080e7          	jalr	752(ra) # 80005724 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000643c:	00000613          	li	a2,0
    80006440:	00000597          	auipc	a1,0x0
    80006444:	e1458593          	addi	a1,a1,-492 # 80006254 <_ZL11workerBodyBPv>
    80006448:	fd840513          	addi	a0,s0,-40
    8000644c:	ffffb097          	auipc	ra,0xffffb
    80006450:	e64080e7          	jalr	-412(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006454:	00003517          	auipc	a0,0x3
    80006458:	d6450513          	addi	a0,a0,-668 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000645c:	fffff097          	auipc	ra,0xfffff
    80006460:	2c8080e7          	jalr	712(ra) # 80005724 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006464:	00000613          	li	a2,0
    80006468:	00000597          	auipc	a1,0x0
    8000646c:	c6c58593          	addi	a1,a1,-916 # 800060d4 <_ZL11workerBodyCPv>
    80006470:	fe040513          	addi	a0,s0,-32
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	e3c080e7          	jalr	-452(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	d5450513          	addi	a0,a0,-684 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80006484:	fffff097          	auipc	ra,0xfffff
    80006488:	2a0080e7          	jalr	672(ra) # 80005724 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000648c:	00000613          	li	a2,0
    80006490:	00000597          	auipc	a1,0x0
    80006494:	afc58593          	addi	a1,a1,-1284 # 80005f8c <_ZL11workerBodyDPv>
    80006498:	fe840513          	addi	a0,s0,-24
    8000649c:	ffffb097          	auipc	ra,0xffffb
    800064a0:	e14080e7          	jalr	-492(ra) # 800012b0 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	d4450513          	addi	a0,a0,-700 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800064ac:	fffff097          	auipc	ra,0xfffff
    800064b0:	278080e7          	jalr	632(ra) # 80005724 <_Z11printStringPKc>
    800064b4:	00c0006f          	j	800064c0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800064b8:	ffffb097          	auipc	ra,0xffffb
    800064bc:	e9c080e7          	jalr	-356(ra) # 80001354 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800064c0:	00005797          	auipc	a5,0x5
    800064c4:	4557c783          	lbu	a5,1109(a5) # 8000b915 <_ZL9finishedA>
    800064c8:	fe0788e3          	beqz	a5,800064b8 <_Z16System_Mode_testv+0xb4>
    800064cc:	00005797          	auipc	a5,0x5
    800064d0:	4487c783          	lbu	a5,1096(a5) # 8000b914 <_ZL9finishedB>
    800064d4:	fe0782e3          	beqz	a5,800064b8 <_Z16System_Mode_testv+0xb4>
    800064d8:	00005797          	auipc	a5,0x5
    800064dc:	43b7c783          	lbu	a5,1083(a5) # 8000b913 <_ZL9finishedC>
    800064e0:	fc078ce3          	beqz	a5,800064b8 <_Z16System_Mode_testv+0xb4>
    800064e4:	00005797          	auipc	a5,0x5
    800064e8:	42e7c783          	lbu	a5,1070(a5) # 8000b912 <_ZL9finishedD>
    800064ec:	fc0786e3          	beqz	a5,800064b8 <_Z16System_Mode_testv+0xb4>
    }

}
    800064f0:	02813083          	ld	ra,40(sp)
    800064f4:	02013403          	ld	s0,32(sp)
    800064f8:	03010113          	addi	sp,sp,48
    800064fc:	00008067          	ret

0000000080006500 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006500:	fe010113          	addi	sp,sp,-32
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	00813823          	sd	s0,16(sp)
    8000650c:	00913423          	sd	s1,8(sp)
    80006510:	01213023          	sd	s2,0(sp)
    80006514:	02010413          	addi	s0,sp,32
    80006518:	00050493          	mv	s1,a0
    8000651c:	00058913          	mv	s2,a1
    80006520:	0015879b          	addiw	a5,a1,1
    80006524:	0007851b          	sext.w	a0,a5
    80006528:	00f4a023          	sw	a5,0(s1)
    8000652c:	0004a823          	sw	zero,16(s1)
    80006530:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006534:	00251513          	slli	a0,a0,0x2
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	d1c080e7          	jalr	-740(ra) # 80001254 <_Z9mem_allocm>
    80006540:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006544:	00000593          	li	a1,0
    80006548:	02048513          	addi	a0,s1,32
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	e4c080e7          	jalr	-436(ra) # 80001398 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006554:	00090593          	mv	a1,s2
    80006558:	01848513          	addi	a0,s1,24
    8000655c:	ffffb097          	auipc	ra,0xffffb
    80006560:	e3c080e7          	jalr	-452(ra) # 80001398 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006564:	00100593          	li	a1,1
    80006568:	02848513          	addi	a0,s1,40
    8000656c:	ffffb097          	auipc	ra,0xffffb
    80006570:	e2c080e7          	jalr	-468(ra) # 80001398 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006574:	00100593          	li	a1,1
    80006578:	03048513          	addi	a0,s1,48
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	e1c080e7          	jalr	-484(ra) # 80001398 <_Z8sem_openPP4_semj>
}
    80006584:	01813083          	ld	ra,24(sp)
    80006588:	01013403          	ld	s0,16(sp)
    8000658c:	00813483          	ld	s1,8(sp)
    80006590:	00013903          	ld	s2,0(sp)
    80006594:	02010113          	addi	sp,sp,32
    80006598:	00008067          	ret

000000008000659c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000659c:	fe010113          	addi	sp,sp,-32
    800065a0:	00113c23          	sd	ra,24(sp)
    800065a4:	00813823          	sd	s0,16(sp)
    800065a8:	00913423          	sd	s1,8(sp)
    800065ac:	01213023          	sd	s2,0(sp)
    800065b0:	02010413          	addi	s0,sp,32
    800065b4:	00050493          	mv	s1,a0
    800065b8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800065bc:	01853503          	ld	a0,24(a0)
    800065c0:	ffffb097          	auipc	ra,0xffffb
    800065c4:	e3c080e7          	jalr	-452(ra) # 800013fc <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800065c8:	0304b503          	ld	a0,48(s1)
    800065cc:	ffffb097          	auipc	ra,0xffffb
    800065d0:	e30080e7          	jalr	-464(ra) # 800013fc <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800065d4:	0084b783          	ld	a5,8(s1)
    800065d8:	0144a703          	lw	a4,20(s1)
    800065dc:	00271713          	slli	a4,a4,0x2
    800065e0:	00e787b3          	add	a5,a5,a4
    800065e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065e8:	0144a783          	lw	a5,20(s1)
    800065ec:	0017879b          	addiw	a5,a5,1
    800065f0:	0004a703          	lw	a4,0(s1)
    800065f4:	02e7e7bb          	remw	a5,a5,a4
    800065f8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800065fc:	0304b503          	ld	a0,48(s1)
    80006600:	ffffb097          	auipc	ra,0xffffb
    80006604:	e28080e7          	jalr	-472(ra) # 80001428 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006608:	0204b503          	ld	a0,32(s1)
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	e1c080e7          	jalr	-484(ra) # 80001428 <_Z10sem_signalP4_sem>

}
    80006614:	01813083          	ld	ra,24(sp)
    80006618:	01013403          	ld	s0,16(sp)
    8000661c:	00813483          	ld	s1,8(sp)
    80006620:	00013903          	ld	s2,0(sp)
    80006624:	02010113          	addi	sp,sp,32
    80006628:	00008067          	ret

000000008000662c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000662c:	fe010113          	addi	sp,sp,-32
    80006630:	00113c23          	sd	ra,24(sp)
    80006634:	00813823          	sd	s0,16(sp)
    80006638:	00913423          	sd	s1,8(sp)
    8000663c:	01213023          	sd	s2,0(sp)
    80006640:	02010413          	addi	s0,sp,32
    80006644:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006648:	02053503          	ld	a0,32(a0)
    8000664c:	ffffb097          	auipc	ra,0xffffb
    80006650:	db0080e7          	jalr	-592(ra) # 800013fc <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006654:	0284b503          	ld	a0,40(s1)
    80006658:	ffffb097          	auipc	ra,0xffffb
    8000665c:	da4080e7          	jalr	-604(ra) # 800013fc <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006660:	0084b703          	ld	a4,8(s1)
    80006664:	0104a783          	lw	a5,16(s1)
    80006668:	00279693          	slli	a3,a5,0x2
    8000666c:	00d70733          	add	a4,a4,a3
    80006670:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006674:	0017879b          	addiw	a5,a5,1
    80006678:	0004a703          	lw	a4,0(s1)
    8000667c:	02e7e7bb          	remw	a5,a5,a4
    80006680:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006684:	0284b503          	ld	a0,40(s1)
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	da0080e7          	jalr	-608(ra) # 80001428 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006690:	0184b503          	ld	a0,24(s1)
    80006694:	ffffb097          	auipc	ra,0xffffb
    80006698:	d94080e7          	jalr	-620(ra) # 80001428 <_Z10sem_signalP4_sem>

    return ret;
}
    8000669c:	00090513          	mv	a0,s2
    800066a0:	01813083          	ld	ra,24(sp)
    800066a4:	01013403          	ld	s0,16(sp)
    800066a8:	00813483          	ld	s1,8(sp)
    800066ac:	00013903          	ld	s2,0(sp)
    800066b0:	02010113          	addi	sp,sp,32
    800066b4:	00008067          	ret

00000000800066b8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800066b8:	fe010113          	addi	sp,sp,-32
    800066bc:	00113c23          	sd	ra,24(sp)
    800066c0:	00813823          	sd	s0,16(sp)
    800066c4:	00913423          	sd	s1,8(sp)
    800066c8:	01213023          	sd	s2,0(sp)
    800066cc:	02010413          	addi	s0,sp,32
    800066d0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800066d4:	02853503          	ld	a0,40(a0)
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	d24080e7          	jalr	-732(ra) # 800013fc <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800066e0:	0304b503          	ld	a0,48(s1)
    800066e4:	ffffb097          	auipc	ra,0xffffb
    800066e8:	d18080e7          	jalr	-744(ra) # 800013fc <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800066ec:	0144a783          	lw	a5,20(s1)
    800066f0:	0104a903          	lw	s2,16(s1)
    800066f4:	0327ce63          	blt	a5,s2,80006730 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800066f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800066fc:	0304b503          	ld	a0,48(s1)
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	d28080e7          	jalr	-728(ra) # 80001428 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006708:	0284b503          	ld	a0,40(s1)
    8000670c:	ffffb097          	auipc	ra,0xffffb
    80006710:	d1c080e7          	jalr	-740(ra) # 80001428 <_Z10sem_signalP4_sem>

    return ret;
}
    80006714:	00090513          	mv	a0,s2
    80006718:	01813083          	ld	ra,24(sp)
    8000671c:	01013403          	ld	s0,16(sp)
    80006720:	00813483          	ld	s1,8(sp)
    80006724:	00013903          	ld	s2,0(sp)
    80006728:	02010113          	addi	sp,sp,32
    8000672c:	00008067          	ret
        ret = cap - head + tail;
    80006730:	0004a703          	lw	a4,0(s1)
    80006734:	4127093b          	subw	s2,a4,s2
    80006738:	00f9093b          	addw	s2,s2,a5
    8000673c:	fc1ff06f          	j	800066fc <_ZN6Buffer6getCntEv+0x44>

0000000080006740 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006740:	fe010113          	addi	sp,sp,-32
    80006744:	00113c23          	sd	ra,24(sp)
    80006748:	00813823          	sd	s0,16(sp)
    8000674c:	00913423          	sd	s1,8(sp)
    80006750:	02010413          	addi	s0,sp,32
    80006754:	00050493          	mv	s1,a0
    putc('\n');
    80006758:	00a00513          	li	a0,10
    8000675c:	ffffb097          	auipc	ra,0xffffb
    80006760:	d24080e7          	jalr	-732(ra) # 80001480 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006764:	00003517          	auipc	a0,0x3
    80006768:	a9c50513          	addi	a0,a0,-1380 # 80009200 <CONSOLE_STATUS+0x1f0>
    8000676c:	fffff097          	auipc	ra,0xfffff
    80006770:	fb8080e7          	jalr	-72(ra) # 80005724 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006774:	00048513          	mv	a0,s1
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	f40080e7          	jalr	-192(ra) # 800066b8 <_ZN6Buffer6getCntEv>
    80006780:	02a05c63          	blez	a0,800067b8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006784:	0084b783          	ld	a5,8(s1)
    80006788:	0104a703          	lw	a4,16(s1)
    8000678c:	00271713          	slli	a4,a4,0x2
    80006790:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006794:	0007c503          	lbu	a0,0(a5)
    80006798:	ffffb097          	auipc	ra,0xffffb
    8000679c:	ce8080e7          	jalr	-792(ra) # 80001480 <_Z4putcc>
        head = (head + 1) % cap;
    800067a0:	0104a783          	lw	a5,16(s1)
    800067a4:	0017879b          	addiw	a5,a5,1
    800067a8:	0004a703          	lw	a4,0(s1)
    800067ac:	02e7e7bb          	remw	a5,a5,a4
    800067b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800067b4:	fc1ff06f          	j	80006774 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800067b8:	02100513          	li	a0,33
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	cc4080e7          	jalr	-828(ra) # 80001480 <_Z4putcc>
    putc('\n');
    800067c4:	00a00513          	li	a0,10
    800067c8:	ffffb097          	auipc	ra,0xffffb
    800067cc:	cb8080e7          	jalr	-840(ra) # 80001480 <_Z4putcc>
    mem_free(buffer);
    800067d0:	0084b503          	ld	a0,8(s1)
    800067d4:	ffffb097          	auipc	ra,0xffffb
    800067d8:	ab0080e7          	jalr	-1360(ra) # 80001284 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800067dc:	0204b503          	ld	a0,32(s1)
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	bf0080e7          	jalr	-1040(ra) # 800013d0 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800067e8:	0184b503          	ld	a0,24(s1)
    800067ec:	ffffb097          	auipc	ra,0xffffb
    800067f0:	be4080e7          	jalr	-1052(ra) # 800013d0 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800067f4:	0304b503          	ld	a0,48(s1)
    800067f8:	ffffb097          	auipc	ra,0xffffb
    800067fc:	bd8080e7          	jalr	-1064(ra) # 800013d0 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006800:	0284b503          	ld	a0,40(s1)
    80006804:	ffffb097          	auipc	ra,0xffffb
    80006808:	bcc080e7          	jalr	-1076(ra) # 800013d0 <_Z9sem_closeP4_sem>
}
    8000680c:	01813083          	ld	ra,24(sp)
    80006810:	01013403          	ld	s0,16(sp)
    80006814:	00813483          	ld	s1,8(sp)
    80006818:	02010113          	addi	sp,sp,32
    8000681c:	00008067          	ret

0000000080006820 <start>:
    80006820:	ff010113          	addi	sp,sp,-16
    80006824:	00813423          	sd	s0,8(sp)
    80006828:	01010413          	addi	s0,sp,16
    8000682c:	300027f3          	csrr	a5,mstatus
    80006830:	ffffe737          	lui	a4,0xffffe
    80006834:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c7f>
    80006838:	00e7f7b3          	and	a5,a5,a4
    8000683c:	00001737          	lui	a4,0x1
    80006840:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006844:	00e7e7b3          	or	a5,a5,a4
    80006848:	30079073          	csrw	mstatus,a5
    8000684c:	00000797          	auipc	a5,0x0
    80006850:	16078793          	addi	a5,a5,352 # 800069ac <system_main>
    80006854:	34179073          	csrw	mepc,a5
    80006858:	00000793          	li	a5,0
    8000685c:	18079073          	csrw	satp,a5
    80006860:	000107b7          	lui	a5,0x10
    80006864:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006868:	30279073          	csrw	medeleg,a5
    8000686c:	30379073          	csrw	mideleg,a5
    80006870:	104027f3          	csrr	a5,sie
    80006874:	2227e793          	ori	a5,a5,546
    80006878:	10479073          	csrw	sie,a5
    8000687c:	fff00793          	li	a5,-1
    80006880:	00a7d793          	srli	a5,a5,0xa
    80006884:	3b079073          	csrw	pmpaddr0,a5
    80006888:	00f00793          	li	a5,15
    8000688c:	3a079073          	csrw	pmpcfg0,a5
    80006890:	f14027f3          	csrr	a5,mhartid
    80006894:	0200c737          	lui	a4,0x200c
    80006898:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000689c:	0007869b          	sext.w	a3,a5
    800068a0:	00269713          	slli	a4,a3,0x2
    800068a4:	000f4637          	lui	a2,0xf4
    800068a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800068ac:	00d70733          	add	a4,a4,a3
    800068b0:	0037979b          	slliw	a5,a5,0x3
    800068b4:	020046b7          	lui	a3,0x2004
    800068b8:	00d787b3          	add	a5,a5,a3
    800068bc:	00c585b3          	add	a1,a1,a2
    800068c0:	00371693          	slli	a3,a4,0x3
    800068c4:	00005717          	auipc	a4,0x5
    800068c8:	05c70713          	addi	a4,a4,92 # 8000b920 <timer_scratch>
    800068cc:	00b7b023          	sd	a1,0(a5)
    800068d0:	00d70733          	add	a4,a4,a3
    800068d4:	00f73c23          	sd	a5,24(a4)
    800068d8:	02c73023          	sd	a2,32(a4)
    800068dc:	34071073          	csrw	mscratch,a4
    800068e0:	00000797          	auipc	a5,0x0
    800068e4:	6e078793          	addi	a5,a5,1760 # 80006fc0 <timervec>
    800068e8:	30579073          	csrw	mtvec,a5
    800068ec:	300027f3          	csrr	a5,mstatus
    800068f0:	0087e793          	ori	a5,a5,8
    800068f4:	30079073          	csrw	mstatus,a5
    800068f8:	304027f3          	csrr	a5,mie
    800068fc:	0807e793          	ori	a5,a5,128
    80006900:	30479073          	csrw	mie,a5
    80006904:	f14027f3          	csrr	a5,mhartid
    80006908:	0007879b          	sext.w	a5,a5
    8000690c:	00078213          	mv	tp,a5
    80006910:	30200073          	mret
    80006914:	00813403          	ld	s0,8(sp)
    80006918:	01010113          	addi	sp,sp,16
    8000691c:	00008067          	ret

0000000080006920 <timerinit>:
    80006920:	ff010113          	addi	sp,sp,-16
    80006924:	00813423          	sd	s0,8(sp)
    80006928:	01010413          	addi	s0,sp,16
    8000692c:	f14027f3          	csrr	a5,mhartid
    80006930:	0200c737          	lui	a4,0x200c
    80006934:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006938:	0007869b          	sext.w	a3,a5
    8000693c:	00269713          	slli	a4,a3,0x2
    80006940:	000f4637          	lui	a2,0xf4
    80006944:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006948:	00d70733          	add	a4,a4,a3
    8000694c:	0037979b          	slliw	a5,a5,0x3
    80006950:	020046b7          	lui	a3,0x2004
    80006954:	00d787b3          	add	a5,a5,a3
    80006958:	00c585b3          	add	a1,a1,a2
    8000695c:	00371693          	slli	a3,a4,0x3
    80006960:	00005717          	auipc	a4,0x5
    80006964:	fc070713          	addi	a4,a4,-64 # 8000b920 <timer_scratch>
    80006968:	00b7b023          	sd	a1,0(a5)
    8000696c:	00d70733          	add	a4,a4,a3
    80006970:	00f73c23          	sd	a5,24(a4)
    80006974:	02c73023          	sd	a2,32(a4)
    80006978:	34071073          	csrw	mscratch,a4
    8000697c:	00000797          	auipc	a5,0x0
    80006980:	64478793          	addi	a5,a5,1604 # 80006fc0 <timervec>
    80006984:	30579073          	csrw	mtvec,a5
    80006988:	300027f3          	csrr	a5,mstatus
    8000698c:	0087e793          	ori	a5,a5,8
    80006990:	30079073          	csrw	mstatus,a5
    80006994:	304027f3          	csrr	a5,mie
    80006998:	0807e793          	ori	a5,a5,128
    8000699c:	30479073          	csrw	mie,a5
    800069a0:	00813403          	ld	s0,8(sp)
    800069a4:	01010113          	addi	sp,sp,16
    800069a8:	00008067          	ret

00000000800069ac <system_main>:
    800069ac:	fe010113          	addi	sp,sp,-32
    800069b0:	00813823          	sd	s0,16(sp)
    800069b4:	00913423          	sd	s1,8(sp)
    800069b8:	00113c23          	sd	ra,24(sp)
    800069bc:	02010413          	addi	s0,sp,32
    800069c0:	00000097          	auipc	ra,0x0
    800069c4:	0c4080e7          	jalr	196(ra) # 80006a84 <cpuid>
    800069c8:	00005497          	auipc	s1,0x5
    800069cc:	e6848493          	addi	s1,s1,-408 # 8000b830 <started>
    800069d0:	02050263          	beqz	a0,800069f4 <system_main+0x48>
    800069d4:	0004a783          	lw	a5,0(s1)
    800069d8:	0007879b          	sext.w	a5,a5
    800069dc:	fe078ce3          	beqz	a5,800069d4 <system_main+0x28>
    800069e0:	0ff0000f          	fence
    800069e4:	00003517          	auipc	a0,0x3
    800069e8:	87450513          	addi	a0,a0,-1932 # 80009258 <CONSOLE_STATUS+0x248>
    800069ec:	00001097          	auipc	ra,0x1
    800069f0:	a70080e7          	jalr	-1424(ra) # 8000745c <panic>
    800069f4:	00001097          	auipc	ra,0x1
    800069f8:	9c4080e7          	jalr	-1596(ra) # 800073b8 <consoleinit>
    800069fc:	00001097          	auipc	ra,0x1
    80006a00:	150080e7          	jalr	336(ra) # 80007b4c <printfinit>
    80006a04:	00002517          	auipc	a0,0x2
    80006a08:	65450513          	addi	a0,a0,1620 # 80009058 <CONSOLE_STATUS+0x48>
    80006a0c:	00001097          	auipc	ra,0x1
    80006a10:	aac080e7          	jalr	-1364(ra) # 800074b8 <__printf>
    80006a14:	00003517          	auipc	a0,0x3
    80006a18:	81450513          	addi	a0,a0,-2028 # 80009228 <CONSOLE_STATUS+0x218>
    80006a1c:	00001097          	auipc	ra,0x1
    80006a20:	a9c080e7          	jalr	-1380(ra) # 800074b8 <__printf>
    80006a24:	00002517          	auipc	a0,0x2
    80006a28:	63450513          	addi	a0,a0,1588 # 80009058 <CONSOLE_STATUS+0x48>
    80006a2c:	00001097          	auipc	ra,0x1
    80006a30:	a8c080e7          	jalr	-1396(ra) # 800074b8 <__printf>
    80006a34:	00001097          	auipc	ra,0x1
    80006a38:	4a4080e7          	jalr	1188(ra) # 80007ed8 <kinit>
    80006a3c:	00000097          	auipc	ra,0x0
    80006a40:	148080e7          	jalr	328(ra) # 80006b84 <trapinit>
    80006a44:	00000097          	auipc	ra,0x0
    80006a48:	16c080e7          	jalr	364(ra) # 80006bb0 <trapinithart>
    80006a4c:	00000097          	auipc	ra,0x0
    80006a50:	5b4080e7          	jalr	1460(ra) # 80007000 <plicinit>
    80006a54:	00000097          	auipc	ra,0x0
    80006a58:	5d4080e7          	jalr	1492(ra) # 80007028 <plicinithart>
    80006a5c:	00000097          	auipc	ra,0x0
    80006a60:	078080e7          	jalr	120(ra) # 80006ad4 <userinit>
    80006a64:	0ff0000f          	fence
    80006a68:	00100793          	li	a5,1
    80006a6c:	00002517          	auipc	a0,0x2
    80006a70:	7d450513          	addi	a0,a0,2004 # 80009240 <CONSOLE_STATUS+0x230>
    80006a74:	00f4a023          	sw	a5,0(s1)
    80006a78:	00001097          	auipc	ra,0x1
    80006a7c:	a40080e7          	jalr	-1472(ra) # 800074b8 <__printf>
    80006a80:	0000006f          	j	80006a80 <system_main+0xd4>

0000000080006a84 <cpuid>:
    80006a84:	ff010113          	addi	sp,sp,-16
    80006a88:	00813423          	sd	s0,8(sp)
    80006a8c:	01010413          	addi	s0,sp,16
    80006a90:	00020513          	mv	a0,tp
    80006a94:	00813403          	ld	s0,8(sp)
    80006a98:	0005051b          	sext.w	a0,a0
    80006a9c:	01010113          	addi	sp,sp,16
    80006aa0:	00008067          	ret

0000000080006aa4 <mycpu>:
    80006aa4:	ff010113          	addi	sp,sp,-16
    80006aa8:	00813423          	sd	s0,8(sp)
    80006aac:	01010413          	addi	s0,sp,16
    80006ab0:	00020793          	mv	a5,tp
    80006ab4:	00813403          	ld	s0,8(sp)
    80006ab8:	0007879b          	sext.w	a5,a5
    80006abc:	00779793          	slli	a5,a5,0x7
    80006ac0:	00006517          	auipc	a0,0x6
    80006ac4:	e9050513          	addi	a0,a0,-368 # 8000c950 <cpus>
    80006ac8:	00f50533          	add	a0,a0,a5
    80006acc:	01010113          	addi	sp,sp,16
    80006ad0:	00008067          	ret

0000000080006ad4 <userinit>:
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00813423          	sd	s0,8(sp)
    80006adc:	01010413          	addi	s0,sp,16
    80006ae0:	00813403          	ld	s0,8(sp)
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	ffffb317          	auipc	t1,0xffffb
    80006aec:	04030067          	jr	64(t1) # 80001b28 <main>

0000000080006af0 <either_copyout>:
    80006af0:	ff010113          	addi	sp,sp,-16
    80006af4:	00813023          	sd	s0,0(sp)
    80006af8:	00113423          	sd	ra,8(sp)
    80006afc:	01010413          	addi	s0,sp,16
    80006b00:	02051663          	bnez	a0,80006b2c <either_copyout+0x3c>
    80006b04:	00058513          	mv	a0,a1
    80006b08:	00060593          	mv	a1,a2
    80006b0c:	0006861b          	sext.w	a2,a3
    80006b10:	00002097          	auipc	ra,0x2
    80006b14:	c54080e7          	jalr	-940(ra) # 80008764 <__memmove>
    80006b18:	00813083          	ld	ra,8(sp)
    80006b1c:	00013403          	ld	s0,0(sp)
    80006b20:	00000513          	li	a0,0
    80006b24:	01010113          	addi	sp,sp,16
    80006b28:	00008067          	ret
    80006b2c:	00002517          	auipc	a0,0x2
    80006b30:	75450513          	addi	a0,a0,1876 # 80009280 <CONSOLE_STATUS+0x270>
    80006b34:	00001097          	auipc	ra,0x1
    80006b38:	928080e7          	jalr	-1752(ra) # 8000745c <panic>

0000000080006b3c <either_copyin>:
    80006b3c:	ff010113          	addi	sp,sp,-16
    80006b40:	00813023          	sd	s0,0(sp)
    80006b44:	00113423          	sd	ra,8(sp)
    80006b48:	01010413          	addi	s0,sp,16
    80006b4c:	02059463          	bnez	a1,80006b74 <either_copyin+0x38>
    80006b50:	00060593          	mv	a1,a2
    80006b54:	0006861b          	sext.w	a2,a3
    80006b58:	00002097          	auipc	ra,0x2
    80006b5c:	c0c080e7          	jalr	-1012(ra) # 80008764 <__memmove>
    80006b60:	00813083          	ld	ra,8(sp)
    80006b64:	00013403          	ld	s0,0(sp)
    80006b68:	00000513          	li	a0,0
    80006b6c:	01010113          	addi	sp,sp,16
    80006b70:	00008067          	ret
    80006b74:	00002517          	auipc	a0,0x2
    80006b78:	73450513          	addi	a0,a0,1844 # 800092a8 <CONSOLE_STATUS+0x298>
    80006b7c:	00001097          	auipc	ra,0x1
    80006b80:	8e0080e7          	jalr	-1824(ra) # 8000745c <panic>

0000000080006b84 <trapinit>:
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00813423          	sd	s0,8(sp)
    80006b8c:	01010413          	addi	s0,sp,16
    80006b90:	00813403          	ld	s0,8(sp)
    80006b94:	00002597          	auipc	a1,0x2
    80006b98:	73c58593          	addi	a1,a1,1852 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80006b9c:	00006517          	auipc	a0,0x6
    80006ba0:	e3450513          	addi	a0,a0,-460 # 8000c9d0 <tickslock>
    80006ba4:	01010113          	addi	sp,sp,16
    80006ba8:	00001317          	auipc	t1,0x1
    80006bac:	5c030067          	jr	1472(t1) # 80008168 <initlock>

0000000080006bb0 <trapinithart>:
    80006bb0:	ff010113          	addi	sp,sp,-16
    80006bb4:	00813423          	sd	s0,8(sp)
    80006bb8:	01010413          	addi	s0,sp,16
    80006bbc:	00000797          	auipc	a5,0x0
    80006bc0:	2f478793          	addi	a5,a5,756 # 80006eb0 <kernelvec>
    80006bc4:	10579073          	csrw	stvec,a5
    80006bc8:	00813403          	ld	s0,8(sp)
    80006bcc:	01010113          	addi	sp,sp,16
    80006bd0:	00008067          	ret

0000000080006bd4 <usertrap>:
    80006bd4:	ff010113          	addi	sp,sp,-16
    80006bd8:	00813423          	sd	s0,8(sp)
    80006bdc:	01010413          	addi	s0,sp,16
    80006be0:	00813403          	ld	s0,8(sp)
    80006be4:	01010113          	addi	sp,sp,16
    80006be8:	00008067          	ret

0000000080006bec <usertrapret>:
    80006bec:	ff010113          	addi	sp,sp,-16
    80006bf0:	00813423          	sd	s0,8(sp)
    80006bf4:	01010413          	addi	s0,sp,16
    80006bf8:	00813403          	ld	s0,8(sp)
    80006bfc:	01010113          	addi	sp,sp,16
    80006c00:	00008067          	ret

0000000080006c04 <kerneltrap>:
    80006c04:	fe010113          	addi	sp,sp,-32
    80006c08:	00813823          	sd	s0,16(sp)
    80006c0c:	00113c23          	sd	ra,24(sp)
    80006c10:	00913423          	sd	s1,8(sp)
    80006c14:	02010413          	addi	s0,sp,32
    80006c18:	142025f3          	csrr	a1,scause
    80006c1c:	100027f3          	csrr	a5,sstatus
    80006c20:	0027f793          	andi	a5,a5,2
    80006c24:	10079c63          	bnez	a5,80006d3c <kerneltrap+0x138>
    80006c28:	142027f3          	csrr	a5,scause
    80006c2c:	0207ce63          	bltz	a5,80006c68 <kerneltrap+0x64>
    80006c30:	00002517          	auipc	a0,0x2
    80006c34:	6e850513          	addi	a0,a0,1768 # 80009318 <CONSOLE_STATUS+0x308>
    80006c38:	00001097          	auipc	ra,0x1
    80006c3c:	880080e7          	jalr	-1920(ra) # 800074b8 <__printf>
    80006c40:	141025f3          	csrr	a1,sepc
    80006c44:	14302673          	csrr	a2,stval
    80006c48:	00002517          	auipc	a0,0x2
    80006c4c:	6e050513          	addi	a0,a0,1760 # 80009328 <CONSOLE_STATUS+0x318>
    80006c50:	00001097          	auipc	ra,0x1
    80006c54:	868080e7          	jalr	-1944(ra) # 800074b8 <__printf>
    80006c58:	00002517          	auipc	a0,0x2
    80006c5c:	6e850513          	addi	a0,a0,1768 # 80009340 <CONSOLE_STATUS+0x330>
    80006c60:	00000097          	auipc	ra,0x0
    80006c64:	7fc080e7          	jalr	2044(ra) # 8000745c <panic>
    80006c68:	0ff7f713          	andi	a4,a5,255
    80006c6c:	00900693          	li	a3,9
    80006c70:	04d70063          	beq	a4,a3,80006cb0 <kerneltrap+0xac>
    80006c74:	fff00713          	li	a4,-1
    80006c78:	03f71713          	slli	a4,a4,0x3f
    80006c7c:	00170713          	addi	a4,a4,1
    80006c80:	fae798e3          	bne	a5,a4,80006c30 <kerneltrap+0x2c>
    80006c84:	00000097          	auipc	ra,0x0
    80006c88:	e00080e7          	jalr	-512(ra) # 80006a84 <cpuid>
    80006c8c:	06050663          	beqz	a0,80006cf8 <kerneltrap+0xf4>
    80006c90:	144027f3          	csrr	a5,sip
    80006c94:	ffd7f793          	andi	a5,a5,-3
    80006c98:	14479073          	csrw	sip,a5
    80006c9c:	01813083          	ld	ra,24(sp)
    80006ca0:	01013403          	ld	s0,16(sp)
    80006ca4:	00813483          	ld	s1,8(sp)
    80006ca8:	02010113          	addi	sp,sp,32
    80006cac:	00008067          	ret
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	3c4080e7          	jalr	964(ra) # 80007074 <plic_claim>
    80006cb8:	00a00793          	li	a5,10
    80006cbc:	00050493          	mv	s1,a0
    80006cc0:	06f50863          	beq	a0,a5,80006d30 <kerneltrap+0x12c>
    80006cc4:	fc050ce3          	beqz	a0,80006c9c <kerneltrap+0x98>
    80006cc8:	00050593          	mv	a1,a0
    80006ccc:	00002517          	auipc	a0,0x2
    80006cd0:	62c50513          	addi	a0,a0,1580 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	7e4080e7          	jalr	2020(ra) # 800074b8 <__printf>
    80006cdc:	01013403          	ld	s0,16(sp)
    80006ce0:	01813083          	ld	ra,24(sp)
    80006ce4:	00048513          	mv	a0,s1
    80006ce8:	00813483          	ld	s1,8(sp)
    80006cec:	02010113          	addi	sp,sp,32
    80006cf0:	00000317          	auipc	t1,0x0
    80006cf4:	3bc30067          	jr	956(t1) # 800070ac <plic_complete>
    80006cf8:	00006517          	auipc	a0,0x6
    80006cfc:	cd850513          	addi	a0,a0,-808 # 8000c9d0 <tickslock>
    80006d00:	00001097          	auipc	ra,0x1
    80006d04:	48c080e7          	jalr	1164(ra) # 8000818c <acquire>
    80006d08:	00005717          	auipc	a4,0x5
    80006d0c:	b2c70713          	addi	a4,a4,-1236 # 8000b834 <ticks>
    80006d10:	00072783          	lw	a5,0(a4)
    80006d14:	00006517          	auipc	a0,0x6
    80006d18:	cbc50513          	addi	a0,a0,-836 # 8000c9d0 <tickslock>
    80006d1c:	0017879b          	addiw	a5,a5,1
    80006d20:	00f72023          	sw	a5,0(a4)
    80006d24:	00001097          	auipc	ra,0x1
    80006d28:	534080e7          	jalr	1332(ra) # 80008258 <release>
    80006d2c:	f65ff06f          	j	80006c90 <kerneltrap+0x8c>
    80006d30:	00001097          	auipc	ra,0x1
    80006d34:	090080e7          	jalr	144(ra) # 80007dc0 <uartintr>
    80006d38:	fa5ff06f          	j	80006cdc <kerneltrap+0xd8>
    80006d3c:	00002517          	auipc	a0,0x2
    80006d40:	59c50513          	addi	a0,a0,1436 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80006d44:	00000097          	auipc	ra,0x0
    80006d48:	718080e7          	jalr	1816(ra) # 8000745c <panic>

0000000080006d4c <clockintr>:
    80006d4c:	fe010113          	addi	sp,sp,-32
    80006d50:	00813823          	sd	s0,16(sp)
    80006d54:	00913423          	sd	s1,8(sp)
    80006d58:	00113c23          	sd	ra,24(sp)
    80006d5c:	02010413          	addi	s0,sp,32
    80006d60:	00006497          	auipc	s1,0x6
    80006d64:	c7048493          	addi	s1,s1,-912 # 8000c9d0 <tickslock>
    80006d68:	00048513          	mv	a0,s1
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	420080e7          	jalr	1056(ra) # 8000818c <acquire>
    80006d74:	00005717          	auipc	a4,0x5
    80006d78:	ac070713          	addi	a4,a4,-1344 # 8000b834 <ticks>
    80006d7c:	00072783          	lw	a5,0(a4)
    80006d80:	01013403          	ld	s0,16(sp)
    80006d84:	01813083          	ld	ra,24(sp)
    80006d88:	00048513          	mv	a0,s1
    80006d8c:	0017879b          	addiw	a5,a5,1
    80006d90:	00813483          	ld	s1,8(sp)
    80006d94:	00f72023          	sw	a5,0(a4)
    80006d98:	02010113          	addi	sp,sp,32
    80006d9c:	00001317          	auipc	t1,0x1
    80006da0:	4bc30067          	jr	1212(t1) # 80008258 <release>

0000000080006da4 <devintr>:
    80006da4:	142027f3          	csrr	a5,scause
    80006da8:	00000513          	li	a0,0
    80006dac:	0007c463          	bltz	a5,80006db4 <devintr+0x10>
    80006db0:	00008067          	ret
    80006db4:	fe010113          	addi	sp,sp,-32
    80006db8:	00813823          	sd	s0,16(sp)
    80006dbc:	00113c23          	sd	ra,24(sp)
    80006dc0:	00913423          	sd	s1,8(sp)
    80006dc4:	02010413          	addi	s0,sp,32
    80006dc8:	0ff7f713          	andi	a4,a5,255
    80006dcc:	00900693          	li	a3,9
    80006dd0:	04d70c63          	beq	a4,a3,80006e28 <devintr+0x84>
    80006dd4:	fff00713          	li	a4,-1
    80006dd8:	03f71713          	slli	a4,a4,0x3f
    80006ddc:	00170713          	addi	a4,a4,1
    80006de0:	00e78c63          	beq	a5,a4,80006df8 <devintr+0x54>
    80006de4:	01813083          	ld	ra,24(sp)
    80006de8:	01013403          	ld	s0,16(sp)
    80006dec:	00813483          	ld	s1,8(sp)
    80006df0:	02010113          	addi	sp,sp,32
    80006df4:	00008067          	ret
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	c8c080e7          	jalr	-884(ra) # 80006a84 <cpuid>
    80006e00:	06050663          	beqz	a0,80006e6c <devintr+0xc8>
    80006e04:	144027f3          	csrr	a5,sip
    80006e08:	ffd7f793          	andi	a5,a5,-3
    80006e0c:	14479073          	csrw	sip,a5
    80006e10:	01813083          	ld	ra,24(sp)
    80006e14:	01013403          	ld	s0,16(sp)
    80006e18:	00813483          	ld	s1,8(sp)
    80006e1c:	00200513          	li	a0,2
    80006e20:	02010113          	addi	sp,sp,32
    80006e24:	00008067          	ret
    80006e28:	00000097          	auipc	ra,0x0
    80006e2c:	24c080e7          	jalr	588(ra) # 80007074 <plic_claim>
    80006e30:	00a00793          	li	a5,10
    80006e34:	00050493          	mv	s1,a0
    80006e38:	06f50663          	beq	a0,a5,80006ea4 <devintr+0x100>
    80006e3c:	00100513          	li	a0,1
    80006e40:	fa0482e3          	beqz	s1,80006de4 <devintr+0x40>
    80006e44:	00048593          	mv	a1,s1
    80006e48:	00002517          	auipc	a0,0x2
    80006e4c:	4b050513          	addi	a0,a0,1200 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006e50:	00000097          	auipc	ra,0x0
    80006e54:	668080e7          	jalr	1640(ra) # 800074b8 <__printf>
    80006e58:	00048513          	mv	a0,s1
    80006e5c:	00000097          	auipc	ra,0x0
    80006e60:	250080e7          	jalr	592(ra) # 800070ac <plic_complete>
    80006e64:	00100513          	li	a0,1
    80006e68:	f7dff06f          	j	80006de4 <devintr+0x40>
    80006e6c:	00006517          	auipc	a0,0x6
    80006e70:	b6450513          	addi	a0,a0,-1180 # 8000c9d0 <tickslock>
    80006e74:	00001097          	auipc	ra,0x1
    80006e78:	318080e7          	jalr	792(ra) # 8000818c <acquire>
    80006e7c:	00005717          	auipc	a4,0x5
    80006e80:	9b870713          	addi	a4,a4,-1608 # 8000b834 <ticks>
    80006e84:	00072783          	lw	a5,0(a4)
    80006e88:	00006517          	auipc	a0,0x6
    80006e8c:	b4850513          	addi	a0,a0,-1208 # 8000c9d0 <tickslock>
    80006e90:	0017879b          	addiw	a5,a5,1
    80006e94:	00f72023          	sw	a5,0(a4)
    80006e98:	00001097          	auipc	ra,0x1
    80006e9c:	3c0080e7          	jalr	960(ra) # 80008258 <release>
    80006ea0:	f65ff06f          	j	80006e04 <devintr+0x60>
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	f1c080e7          	jalr	-228(ra) # 80007dc0 <uartintr>
    80006eac:	fadff06f          	j	80006e58 <devintr+0xb4>

0000000080006eb0 <kernelvec>:
    80006eb0:	f0010113          	addi	sp,sp,-256
    80006eb4:	00113023          	sd	ra,0(sp)
    80006eb8:	00213423          	sd	sp,8(sp)
    80006ebc:	00313823          	sd	gp,16(sp)
    80006ec0:	00413c23          	sd	tp,24(sp)
    80006ec4:	02513023          	sd	t0,32(sp)
    80006ec8:	02613423          	sd	t1,40(sp)
    80006ecc:	02713823          	sd	t2,48(sp)
    80006ed0:	02813c23          	sd	s0,56(sp)
    80006ed4:	04913023          	sd	s1,64(sp)
    80006ed8:	04a13423          	sd	a0,72(sp)
    80006edc:	04b13823          	sd	a1,80(sp)
    80006ee0:	04c13c23          	sd	a2,88(sp)
    80006ee4:	06d13023          	sd	a3,96(sp)
    80006ee8:	06e13423          	sd	a4,104(sp)
    80006eec:	06f13823          	sd	a5,112(sp)
    80006ef0:	07013c23          	sd	a6,120(sp)
    80006ef4:	09113023          	sd	a7,128(sp)
    80006ef8:	09213423          	sd	s2,136(sp)
    80006efc:	09313823          	sd	s3,144(sp)
    80006f00:	09413c23          	sd	s4,152(sp)
    80006f04:	0b513023          	sd	s5,160(sp)
    80006f08:	0b613423          	sd	s6,168(sp)
    80006f0c:	0b713823          	sd	s7,176(sp)
    80006f10:	0b813c23          	sd	s8,184(sp)
    80006f14:	0d913023          	sd	s9,192(sp)
    80006f18:	0da13423          	sd	s10,200(sp)
    80006f1c:	0db13823          	sd	s11,208(sp)
    80006f20:	0dc13c23          	sd	t3,216(sp)
    80006f24:	0fd13023          	sd	t4,224(sp)
    80006f28:	0fe13423          	sd	t5,232(sp)
    80006f2c:	0ff13823          	sd	t6,240(sp)
    80006f30:	cd5ff0ef          	jal	ra,80006c04 <kerneltrap>
    80006f34:	00013083          	ld	ra,0(sp)
    80006f38:	00813103          	ld	sp,8(sp)
    80006f3c:	01013183          	ld	gp,16(sp)
    80006f40:	02013283          	ld	t0,32(sp)
    80006f44:	02813303          	ld	t1,40(sp)
    80006f48:	03013383          	ld	t2,48(sp)
    80006f4c:	03813403          	ld	s0,56(sp)
    80006f50:	04013483          	ld	s1,64(sp)
    80006f54:	04813503          	ld	a0,72(sp)
    80006f58:	05013583          	ld	a1,80(sp)
    80006f5c:	05813603          	ld	a2,88(sp)
    80006f60:	06013683          	ld	a3,96(sp)
    80006f64:	06813703          	ld	a4,104(sp)
    80006f68:	07013783          	ld	a5,112(sp)
    80006f6c:	07813803          	ld	a6,120(sp)
    80006f70:	08013883          	ld	a7,128(sp)
    80006f74:	08813903          	ld	s2,136(sp)
    80006f78:	09013983          	ld	s3,144(sp)
    80006f7c:	09813a03          	ld	s4,152(sp)
    80006f80:	0a013a83          	ld	s5,160(sp)
    80006f84:	0a813b03          	ld	s6,168(sp)
    80006f88:	0b013b83          	ld	s7,176(sp)
    80006f8c:	0b813c03          	ld	s8,184(sp)
    80006f90:	0c013c83          	ld	s9,192(sp)
    80006f94:	0c813d03          	ld	s10,200(sp)
    80006f98:	0d013d83          	ld	s11,208(sp)
    80006f9c:	0d813e03          	ld	t3,216(sp)
    80006fa0:	0e013e83          	ld	t4,224(sp)
    80006fa4:	0e813f03          	ld	t5,232(sp)
    80006fa8:	0f013f83          	ld	t6,240(sp)
    80006fac:	10010113          	addi	sp,sp,256
    80006fb0:	10200073          	sret
    80006fb4:	00000013          	nop
    80006fb8:	00000013          	nop
    80006fbc:	00000013          	nop

0000000080006fc0 <timervec>:
    80006fc0:	34051573          	csrrw	a0,mscratch,a0
    80006fc4:	00b53023          	sd	a1,0(a0)
    80006fc8:	00c53423          	sd	a2,8(a0)
    80006fcc:	00d53823          	sd	a3,16(a0)
    80006fd0:	01853583          	ld	a1,24(a0)
    80006fd4:	02053603          	ld	a2,32(a0)
    80006fd8:	0005b683          	ld	a3,0(a1)
    80006fdc:	00c686b3          	add	a3,a3,a2
    80006fe0:	00d5b023          	sd	a3,0(a1)
    80006fe4:	00200593          	li	a1,2
    80006fe8:	14459073          	csrw	sip,a1
    80006fec:	01053683          	ld	a3,16(a0)
    80006ff0:	00853603          	ld	a2,8(a0)
    80006ff4:	00053583          	ld	a1,0(a0)
    80006ff8:	34051573          	csrrw	a0,mscratch,a0
    80006ffc:	30200073          	mret

0000000080007000 <plicinit>:
    80007000:	ff010113          	addi	sp,sp,-16
    80007004:	00813423          	sd	s0,8(sp)
    80007008:	01010413          	addi	s0,sp,16
    8000700c:	00813403          	ld	s0,8(sp)
    80007010:	0c0007b7          	lui	a5,0xc000
    80007014:	00100713          	li	a4,1
    80007018:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000701c:	00e7a223          	sw	a4,4(a5)
    80007020:	01010113          	addi	sp,sp,16
    80007024:	00008067          	ret

0000000080007028 <plicinithart>:
    80007028:	ff010113          	addi	sp,sp,-16
    8000702c:	00813023          	sd	s0,0(sp)
    80007030:	00113423          	sd	ra,8(sp)
    80007034:	01010413          	addi	s0,sp,16
    80007038:	00000097          	auipc	ra,0x0
    8000703c:	a4c080e7          	jalr	-1460(ra) # 80006a84 <cpuid>
    80007040:	0085171b          	slliw	a4,a0,0x8
    80007044:	0c0027b7          	lui	a5,0xc002
    80007048:	00e787b3          	add	a5,a5,a4
    8000704c:	40200713          	li	a4,1026
    80007050:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007054:	00813083          	ld	ra,8(sp)
    80007058:	00013403          	ld	s0,0(sp)
    8000705c:	00d5151b          	slliw	a0,a0,0xd
    80007060:	0c2017b7          	lui	a5,0xc201
    80007064:	00a78533          	add	a0,a5,a0
    80007068:	00052023          	sw	zero,0(a0)
    8000706c:	01010113          	addi	sp,sp,16
    80007070:	00008067          	ret

0000000080007074 <plic_claim>:
    80007074:	ff010113          	addi	sp,sp,-16
    80007078:	00813023          	sd	s0,0(sp)
    8000707c:	00113423          	sd	ra,8(sp)
    80007080:	01010413          	addi	s0,sp,16
    80007084:	00000097          	auipc	ra,0x0
    80007088:	a00080e7          	jalr	-1536(ra) # 80006a84 <cpuid>
    8000708c:	00813083          	ld	ra,8(sp)
    80007090:	00013403          	ld	s0,0(sp)
    80007094:	00d5151b          	slliw	a0,a0,0xd
    80007098:	0c2017b7          	lui	a5,0xc201
    8000709c:	00a78533          	add	a0,a5,a0
    800070a0:	00452503          	lw	a0,4(a0)
    800070a4:	01010113          	addi	sp,sp,16
    800070a8:	00008067          	ret

00000000800070ac <plic_complete>:
    800070ac:	fe010113          	addi	sp,sp,-32
    800070b0:	00813823          	sd	s0,16(sp)
    800070b4:	00913423          	sd	s1,8(sp)
    800070b8:	00113c23          	sd	ra,24(sp)
    800070bc:	02010413          	addi	s0,sp,32
    800070c0:	00050493          	mv	s1,a0
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	9c0080e7          	jalr	-1600(ra) # 80006a84 <cpuid>
    800070cc:	01813083          	ld	ra,24(sp)
    800070d0:	01013403          	ld	s0,16(sp)
    800070d4:	00d5179b          	slliw	a5,a0,0xd
    800070d8:	0c201737          	lui	a4,0xc201
    800070dc:	00f707b3          	add	a5,a4,a5
    800070e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret

00000000800070f0 <consolewrite>:
    800070f0:	fb010113          	addi	sp,sp,-80
    800070f4:	04813023          	sd	s0,64(sp)
    800070f8:	04113423          	sd	ra,72(sp)
    800070fc:	02913c23          	sd	s1,56(sp)
    80007100:	03213823          	sd	s2,48(sp)
    80007104:	03313423          	sd	s3,40(sp)
    80007108:	03413023          	sd	s4,32(sp)
    8000710c:	01513c23          	sd	s5,24(sp)
    80007110:	05010413          	addi	s0,sp,80
    80007114:	06c05c63          	blez	a2,8000718c <consolewrite+0x9c>
    80007118:	00060993          	mv	s3,a2
    8000711c:	00050a13          	mv	s4,a0
    80007120:	00058493          	mv	s1,a1
    80007124:	00000913          	li	s2,0
    80007128:	fff00a93          	li	s5,-1
    8000712c:	01c0006f          	j	80007148 <consolewrite+0x58>
    80007130:	fbf44503          	lbu	a0,-65(s0)
    80007134:	0019091b          	addiw	s2,s2,1
    80007138:	00148493          	addi	s1,s1,1
    8000713c:	00001097          	auipc	ra,0x1
    80007140:	a9c080e7          	jalr	-1380(ra) # 80007bd8 <uartputc>
    80007144:	03298063          	beq	s3,s2,80007164 <consolewrite+0x74>
    80007148:	00048613          	mv	a2,s1
    8000714c:	00100693          	li	a3,1
    80007150:	000a0593          	mv	a1,s4
    80007154:	fbf40513          	addi	a0,s0,-65
    80007158:	00000097          	auipc	ra,0x0
    8000715c:	9e4080e7          	jalr	-1564(ra) # 80006b3c <either_copyin>
    80007160:	fd5518e3          	bne	a0,s5,80007130 <consolewrite+0x40>
    80007164:	04813083          	ld	ra,72(sp)
    80007168:	04013403          	ld	s0,64(sp)
    8000716c:	03813483          	ld	s1,56(sp)
    80007170:	02813983          	ld	s3,40(sp)
    80007174:	02013a03          	ld	s4,32(sp)
    80007178:	01813a83          	ld	s5,24(sp)
    8000717c:	00090513          	mv	a0,s2
    80007180:	03013903          	ld	s2,48(sp)
    80007184:	05010113          	addi	sp,sp,80
    80007188:	00008067          	ret
    8000718c:	00000913          	li	s2,0
    80007190:	fd5ff06f          	j	80007164 <consolewrite+0x74>

0000000080007194 <consoleread>:
    80007194:	f9010113          	addi	sp,sp,-112
    80007198:	06813023          	sd	s0,96(sp)
    8000719c:	04913c23          	sd	s1,88(sp)
    800071a0:	05213823          	sd	s2,80(sp)
    800071a4:	05313423          	sd	s3,72(sp)
    800071a8:	05413023          	sd	s4,64(sp)
    800071ac:	03513c23          	sd	s5,56(sp)
    800071b0:	03613823          	sd	s6,48(sp)
    800071b4:	03713423          	sd	s7,40(sp)
    800071b8:	03813023          	sd	s8,32(sp)
    800071bc:	06113423          	sd	ra,104(sp)
    800071c0:	01913c23          	sd	s9,24(sp)
    800071c4:	07010413          	addi	s0,sp,112
    800071c8:	00060b93          	mv	s7,a2
    800071cc:	00050913          	mv	s2,a0
    800071d0:	00058c13          	mv	s8,a1
    800071d4:	00060b1b          	sext.w	s6,a2
    800071d8:	00006497          	auipc	s1,0x6
    800071dc:	82048493          	addi	s1,s1,-2016 # 8000c9f8 <cons>
    800071e0:	00400993          	li	s3,4
    800071e4:	fff00a13          	li	s4,-1
    800071e8:	00a00a93          	li	s5,10
    800071ec:	05705e63          	blez	s7,80007248 <consoleread+0xb4>
    800071f0:	09c4a703          	lw	a4,156(s1)
    800071f4:	0984a783          	lw	a5,152(s1)
    800071f8:	0007071b          	sext.w	a4,a4
    800071fc:	08e78463          	beq	a5,a4,80007284 <consoleread+0xf0>
    80007200:	07f7f713          	andi	a4,a5,127
    80007204:	00e48733          	add	a4,s1,a4
    80007208:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000720c:	0017869b          	addiw	a3,a5,1
    80007210:	08d4ac23          	sw	a3,152(s1)
    80007214:	00070c9b          	sext.w	s9,a4
    80007218:	0b370663          	beq	a4,s3,800072c4 <consoleread+0x130>
    8000721c:	00100693          	li	a3,1
    80007220:	f9f40613          	addi	a2,s0,-97
    80007224:	000c0593          	mv	a1,s8
    80007228:	00090513          	mv	a0,s2
    8000722c:	f8e40fa3          	sb	a4,-97(s0)
    80007230:	00000097          	auipc	ra,0x0
    80007234:	8c0080e7          	jalr	-1856(ra) # 80006af0 <either_copyout>
    80007238:	01450863          	beq	a0,s4,80007248 <consoleread+0xb4>
    8000723c:	001c0c13          	addi	s8,s8,1
    80007240:	fffb8b9b          	addiw	s7,s7,-1
    80007244:	fb5c94e3          	bne	s9,s5,800071ec <consoleread+0x58>
    80007248:	000b851b          	sext.w	a0,s7
    8000724c:	06813083          	ld	ra,104(sp)
    80007250:	06013403          	ld	s0,96(sp)
    80007254:	05813483          	ld	s1,88(sp)
    80007258:	05013903          	ld	s2,80(sp)
    8000725c:	04813983          	ld	s3,72(sp)
    80007260:	04013a03          	ld	s4,64(sp)
    80007264:	03813a83          	ld	s5,56(sp)
    80007268:	02813b83          	ld	s7,40(sp)
    8000726c:	02013c03          	ld	s8,32(sp)
    80007270:	01813c83          	ld	s9,24(sp)
    80007274:	40ab053b          	subw	a0,s6,a0
    80007278:	03013b03          	ld	s6,48(sp)
    8000727c:	07010113          	addi	sp,sp,112
    80007280:	00008067          	ret
    80007284:	00001097          	auipc	ra,0x1
    80007288:	1d8080e7          	jalr	472(ra) # 8000845c <push_on>
    8000728c:	0984a703          	lw	a4,152(s1)
    80007290:	09c4a783          	lw	a5,156(s1)
    80007294:	0007879b          	sext.w	a5,a5
    80007298:	fef70ce3          	beq	a4,a5,80007290 <consoleread+0xfc>
    8000729c:	00001097          	auipc	ra,0x1
    800072a0:	234080e7          	jalr	564(ra) # 800084d0 <pop_on>
    800072a4:	0984a783          	lw	a5,152(s1)
    800072a8:	07f7f713          	andi	a4,a5,127
    800072ac:	00e48733          	add	a4,s1,a4
    800072b0:	01874703          	lbu	a4,24(a4)
    800072b4:	0017869b          	addiw	a3,a5,1
    800072b8:	08d4ac23          	sw	a3,152(s1)
    800072bc:	00070c9b          	sext.w	s9,a4
    800072c0:	f5371ee3          	bne	a4,s3,8000721c <consoleread+0x88>
    800072c4:	000b851b          	sext.w	a0,s7
    800072c8:	f96bf2e3          	bgeu	s7,s6,8000724c <consoleread+0xb8>
    800072cc:	08f4ac23          	sw	a5,152(s1)
    800072d0:	f7dff06f          	j	8000724c <consoleread+0xb8>

00000000800072d4 <consputc>:
    800072d4:	10000793          	li	a5,256
    800072d8:	00f50663          	beq	a0,a5,800072e4 <consputc+0x10>
    800072dc:	00001317          	auipc	t1,0x1
    800072e0:	9f430067          	jr	-1548(t1) # 80007cd0 <uartputc_sync>
    800072e4:	ff010113          	addi	sp,sp,-16
    800072e8:	00113423          	sd	ra,8(sp)
    800072ec:	00813023          	sd	s0,0(sp)
    800072f0:	01010413          	addi	s0,sp,16
    800072f4:	00800513          	li	a0,8
    800072f8:	00001097          	auipc	ra,0x1
    800072fc:	9d8080e7          	jalr	-1576(ra) # 80007cd0 <uartputc_sync>
    80007300:	02000513          	li	a0,32
    80007304:	00001097          	auipc	ra,0x1
    80007308:	9cc080e7          	jalr	-1588(ra) # 80007cd0 <uartputc_sync>
    8000730c:	00013403          	ld	s0,0(sp)
    80007310:	00813083          	ld	ra,8(sp)
    80007314:	00800513          	li	a0,8
    80007318:	01010113          	addi	sp,sp,16
    8000731c:	00001317          	auipc	t1,0x1
    80007320:	9b430067          	jr	-1612(t1) # 80007cd0 <uartputc_sync>

0000000080007324 <consoleintr>:
    80007324:	fe010113          	addi	sp,sp,-32
    80007328:	00813823          	sd	s0,16(sp)
    8000732c:	00913423          	sd	s1,8(sp)
    80007330:	01213023          	sd	s2,0(sp)
    80007334:	00113c23          	sd	ra,24(sp)
    80007338:	02010413          	addi	s0,sp,32
    8000733c:	00005917          	auipc	s2,0x5
    80007340:	6bc90913          	addi	s2,s2,1724 # 8000c9f8 <cons>
    80007344:	00050493          	mv	s1,a0
    80007348:	00090513          	mv	a0,s2
    8000734c:	00001097          	auipc	ra,0x1
    80007350:	e40080e7          	jalr	-448(ra) # 8000818c <acquire>
    80007354:	02048c63          	beqz	s1,8000738c <consoleintr+0x68>
    80007358:	0a092783          	lw	a5,160(s2)
    8000735c:	09892703          	lw	a4,152(s2)
    80007360:	07f00693          	li	a3,127
    80007364:	40e7873b          	subw	a4,a5,a4
    80007368:	02e6e263          	bltu	a3,a4,8000738c <consoleintr+0x68>
    8000736c:	00d00713          	li	a4,13
    80007370:	04e48063          	beq	s1,a4,800073b0 <consoleintr+0x8c>
    80007374:	07f7f713          	andi	a4,a5,127
    80007378:	00e90733          	add	a4,s2,a4
    8000737c:	0017879b          	addiw	a5,a5,1
    80007380:	0af92023          	sw	a5,160(s2)
    80007384:	00970c23          	sb	s1,24(a4)
    80007388:	08f92e23          	sw	a5,156(s2)
    8000738c:	01013403          	ld	s0,16(sp)
    80007390:	01813083          	ld	ra,24(sp)
    80007394:	00813483          	ld	s1,8(sp)
    80007398:	00013903          	ld	s2,0(sp)
    8000739c:	00005517          	auipc	a0,0x5
    800073a0:	65c50513          	addi	a0,a0,1628 # 8000c9f8 <cons>
    800073a4:	02010113          	addi	sp,sp,32
    800073a8:	00001317          	auipc	t1,0x1
    800073ac:	eb030067          	jr	-336(t1) # 80008258 <release>
    800073b0:	00a00493          	li	s1,10
    800073b4:	fc1ff06f          	j	80007374 <consoleintr+0x50>

00000000800073b8 <consoleinit>:
    800073b8:	fe010113          	addi	sp,sp,-32
    800073bc:	00113c23          	sd	ra,24(sp)
    800073c0:	00813823          	sd	s0,16(sp)
    800073c4:	00913423          	sd	s1,8(sp)
    800073c8:	02010413          	addi	s0,sp,32
    800073cc:	00005497          	auipc	s1,0x5
    800073d0:	62c48493          	addi	s1,s1,1580 # 8000c9f8 <cons>
    800073d4:	00048513          	mv	a0,s1
    800073d8:	00002597          	auipc	a1,0x2
    800073dc:	f7858593          	addi	a1,a1,-136 # 80009350 <CONSOLE_STATUS+0x340>
    800073e0:	00001097          	auipc	ra,0x1
    800073e4:	d88080e7          	jalr	-632(ra) # 80008168 <initlock>
    800073e8:	00000097          	auipc	ra,0x0
    800073ec:	7ac080e7          	jalr	1964(ra) # 80007b94 <uartinit>
    800073f0:	01813083          	ld	ra,24(sp)
    800073f4:	01013403          	ld	s0,16(sp)
    800073f8:	00000797          	auipc	a5,0x0
    800073fc:	d9c78793          	addi	a5,a5,-612 # 80007194 <consoleread>
    80007400:	0af4bc23          	sd	a5,184(s1)
    80007404:	00000797          	auipc	a5,0x0
    80007408:	cec78793          	addi	a5,a5,-788 # 800070f0 <consolewrite>
    8000740c:	0cf4b023          	sd	a5,192(s1)
    80007410:	00813483          	ld	s1,8(sp)
    80007414:	02010113          	addi	sp,sp,32
    80007418:	00008067          	ret

000000008000741c <console_read>:
    8000741c:	ff010113          	addi	sp,sp,-16
    80007420:	00813423          	sd	s0,8(sp)
    80007424:	01010413          	addi	s0,sp,16
    80007428:	00813403          	ld	s0,8(sp)
    8000742c:	00005317          	auipc	t1,0x5
    80007430:	68433303          	ld	t1,1668(t1) # 8000cab0 <devsw+0x10>
    80007434:	01010113          	addi	sp,sp,16
    80007438:	00030067          	jr	t1

000000008000743c <console_write>:
    8000743c:	ff010113          	addi	sp,sp,-16
    80007440:	00813423          	sd	s0,8(sp)
    80007444:	01010413          	addi	s0,sp,16
    80007448:	00813403          	ld	s0,8(sp)
    8000744c:	00005317          	auipc	t1,0x5
    80007450:	66c33303          	ld	t1,1644(t1) # 8000cab8 <devsw+0x18>
    80007454:	01010113          	addi	sp,sp,16
    80007458:	00030067          	jr	t1

000000008000745c <panic>:
    8000745c:	fe010113          	addi	sp,sp,-32
    80007460:	00113c23          	sd	ra,24(sp)
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00913423          	sd	s1,8(sp)
    8000746c:	02010413          	addi	s0,sp,32
    80007470:	00050493          	mv	s1,a0
    80007474:	00002517          	auipc	a0,0x2
    80007478:	ee450513          	addi	a0,a0,-284 # 80009358 <CONSOLE_STATUS+0x348>
    8000747c:	00005797          	auipc	a5,0x5
    80007480:	6c07ae23          	sw	zero,1756(a5) # 8000cb58 <pr+0x18>
    80007484:	00000097          	auipc	ra,0x0
    80007488:	034080e7          	jalr	52(ra) # 800074b8 <__printf>
    8000748c:	00048513          	mv	a0,s1
    80007490:	00000097          	auipc	ra,0x0
    80007494:	028080e7          	jalr	40(ra) # 800074b8 <__printf>
    80007498:	00002517          	auipc	a0,0x2
    8000749c:	bc050513          	addi	a0,a0,-1088 # 80009058 <CONSOLE_STATUS+0x48>
    800074a0:	00000097          	auipc	ra,0x0
    800074a4:	018080e7          	jalr	24(ra) # 800074b8 <__printf>
    800074a8:	00100793          	li	a5,1
    800074ac:	00004717          	auipc	a4,0x4
    800074b0:	38f72623          	sw	a5,908(a4) # 8000b838 <panicked>
    800074b4:	0000006f          	j	800074b4 <panic+0x58>

00000000800074b8 <__printf>:
    800074b8:	f3010113          	addi	sp,sp,-208
    800074bc:	08813023          	sd	s0,128(sp)
    800074c0:	07313423          	sd	s3,104(sp)
    800074c4:	09010413          	addi	s0,sp,144
    800074c8:	05813023          	sd	s8,64(sp)
    800074cc:	08113423          	sd	ra,136(sp)
    800074d0:	06913c23          	sd	s1,120(sp)
    800074d4:	07213823          	sd	s2,112(sp)
    800074d8:	07413023          	sd	s4,96(sp)
    800074dc:	05513c23          	sd	s5,88(sp)
    800074e0:	05613823          	sd	s6,80(sp)
    800074e4:	05713423          	sd	s7,72(sp)
    800074e8:	03913c23          	sd	s9,56(sp)
    800074ec:	03a13823          	sd	s10,48(sp)
    800074f0:	03b13423          	sd	s11,40(sp)
    800074f4:	00005317          	auipc	t1,0x5
    800074f8:	64c30313          	addi	t1,t1,1612 # 8000cb40 <pr>
    800074fc:	01832c03          	lw	s8,24(t1)
    80007500:	00b43423          	sd	a1,8(s0)
    80007504:	00c43823          	sd	a2,16(s0)
    80007508:	00d43c23          	sd	a3,24(s0)
    8000750c:	02e43023          	sd	a4,32(s0)
    80007510:	02f43423          	sd	a5,40(s0)
    80007514:	03043823          	sd	a6,48(s0)
    80007518:	03143c23          	sd	a7,56(s0)
    8000751c:	00050993          	mv	s3,a0
    80007520:	4a0c1663          	bnez	s8,800079cc <__printf+0x514>
    80007524:	60098c63          	beqz	s3,80007b3c <__printf+0x684>
    80007528:	0009c503          	lbu	a0,0(s3)
    8000752c:	00840793          	addi	a5,s0,8
    80007530:	f6f43c23          	sd	a5,-136(s0)
    80007534:	00000493          	li	s1,0
    80007538:	22050063          	beqz	a0,80007758 <__printf+0x2a0>
    8000753c:	00002a37          	lui	s4,0x2
    80007540:	00018ab7          	lui	s5,0x18
    80007544:	000f4b37          	lui	s6,0xf4
    80007548:	00989bb7          	lui	s7,0x989
    8000754c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007550:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007554:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007558:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000755c:	00148c9b          	addiw	s9,s1,1
    80007560:	02500793          	li	a5,37
    80007564:	01998933          	add	s2,s3,s9
    80007568:	38f51263          	bne	a0,a5,800078ec <__printf+0x434>
    8000756c:	00094783          	lbu	a5,0(s2)
    80007570:	00078c9b          	sext.w	s9,a5
    80007574:	1e078263          	beqz	a5,80007758 <__printf+0x2a0>
    80007578:	0024849b          	addiw	s1,s1,2
    8000757c:	07000713          	li	a4,112
    80007580:	00998933          	add	s2,s3,s1
    80007584:	38e78a63          	beq	a5,a4,80007918 <__printf+0x460>
    80007588:	20f76863          	bltu	a4,a5,80007798 <__printf+0x2e0>
    8000758c:	42a78863          	beq	a5,a0,800079bc <__printf+0x504>
    80007590:	06400713          	li	a4,100
    80007594:	40e79663          	bne	a5,a4,800079a0 <__printf+0x4e8>
    80007598:	f7843783          	ld	a5,-136(s0)
    8000759c:	0007a603          	lw	a2,0(a5)
    800075a0:	00878793          	addi	a5,a5,8
    800075a4:	f6f43c23          	sd	a5,-136(s0)
    800075a8:	42064a63          	bltz	a2,800079dc <__printf+0x524>
    800075ac:	00a00713          	li	a4,10
    800075b0:	02e677bb          	remuw	a5,a2,a4
    800075b4:	00002d97          	auipc	s11,0x2
    800075b8:	dccd8d93          	addi	s11,s11,-564 # 80009380 <digits>
    800075bc:	00900593          	li	a1,9
    800075c0:	0006051b          	sext.w	a0,a2
    800075c4:	00000c93          	li	s9,0
    800075c8:	02079793          	slli	a5,a5,0x20
    800075cc:	0207d793          	srli	a5,a5,0x20
    800075d0:	00fd87b3          	add	a5,s11,a5
    800075d4:	0007c783          	lbu	a5,0(a5)
    800075d8:	02e656bb          	divuw	a3,a2,a4
    800075dc:	f8f40023          	sb	a5,-128(s0)
    800075e0:	14c5d863          	bge	a1,a2,80007730 <__printf+0x278>
    800075e4:	06300593          	li	a1,99
    800075e8:	00100c93          	li	s9,1
    800075ec:	02e6f7bb          	remuw	a5,a3,a4
    800075f0:	02079793          	slli	a5,a5,0x20
    800075f4:	0207d793          	srli	a5,a5,0x20
    800075f8:	00fd87b3          	add	a5,s11,a5
    800075fc:	0007c783          	lbu	a5,0(a5)
    80007600:	02e6d73b          	divuw	a4,a3,a4
    80007604:	f8f400a3          	sb	a5,-127(s0)
    80007608:	12a5f463          	bgeu	a1,a0,80007730 <__printf+0x278>
    8000760c:	00a00693          	li	a3,10
    80007610:	00900593          	li	a1,9
    80007614:	02d777bb          	remuw	a5,a4,a3
    80007618:	02079793          	slli	a5,a5,0x20
    8000761c:	0207d793          	srli	a5,a5,0x20
    80007620:	00fd87b3          	add	a5,s11,a5
    80007624:	0007c503          	lbu	a0,0(a5)
    80007628:	02d757bb          	divuw	a5,a4,a3
    8000762c:	f8a40123          	sb	a0,-126(s0)
    80007630:	48e5f263          	bgeu	a1,a4,80007ab4 <__printf+0x5fc>
    80007634:	06300513          	li	a0,99
    80007638:	02d7f5bb          	remuw	a1,a5,a3
    8000763c:	02059593          	slli	a1,a1,0x20
    80007640:	0205d593          	srli	a1,a1,0x20
    80007644:	00bd85b3          	add	a1,s11,a1
    80007648:	0005c583          	lbu	a1,0(a1)
    8000764c:	02d7d7bb          	divuw	a5,a5,a3
    80007650:	f8b401a3          	sb	a1,-125(s0)
    80007654:	48e57263          	bgeu	a0,a4,80007ad8 <__printf+0x620>
    80007658:	3e700513          	li	a0,999
    8000765c:	02d7f5bb          	remuw	a1,a5,a3
    80007660:	02059593          	slli	a1,a1,0x20
    80007664:	0205d593          	srli	a1,a1,0x20
    80007668:	00bd85b3          	add	a1,s11,a1
    8000766c:	0005c583          	lbu	a1,0(a1)
    80007670:	02d7d7bb          	divuw	a5,a5,a3
    80007674:	f8b40223          	sb	a1,-124(s0)
    80007678:	46e57663          	bgeu	a0,a4,80007ae4 <__printf+0x62c>
    8000767c:	02d7f5bb          	remuw	a1,a5,a3
    80007680:	02059593          	slli	a1,a1,0x20
    80007684:	0205d593          	srli	a1,a1,0x20
    80007688:	00bd85b3          	add	a1,s11,a1
    8000768c:	0005c583          	lbu	a1,0(a1)
    80007690:	02d7d7bb          	divuw	a5,a5,a3
    80007694:	f8b402a3          	sb	a1,-123(s0)
    80007698:	46ea7863          	bgeu	s4,a4,80007b08 <__printf+0x650>
    8000769c:	02d7f5bb          	remuw	a1,a5,a3
    800076a0:	02059593          	slli	a1,a1,0x20
    800076a4:	0205d593          	srli	a1,a1,0x20
    800076a8:	00bd85b3          	add	a1,s11,a1
    800076ac:	0005c583          	lbu	a1,0(a1)
    800076b0:	02d7d7bb          	divuw	a5,a5,a3
    800076b4:	f8b40323          	sb	a1,-122(s0)
    800076b8:	3eeaf863          	bgeu	s5,a4,80007aa8 <__printf+0x5f0>
    800076bc:	02d7f5bb          	remuw	a1,a5,a3
    800076c0:	02059593          	slli	a1,a1,0x20
    800076c4:	0205d593          	srli	a1,a1,0x20
    800076c8:	00bd85b3          	add	a1,s11,a1
    800076cc:	0005c583          	lbu	a1,0(a1)
    800076d0:	02d7d7bb          	divuw	a5,a5,a3
    800076d4:	f8b403a3          	sb	a1,-121(s0)
    800076d8:	42eb7e63          	bgeu	s6,a4,80007b14 <__printf+0x65c>
    800076dc:	02d7f5bb          	remuw	a1,a5,a3
    800076e0:	02059593          	slli	a1,a1,0x20
    800076e4:	0205d593          	srli	a1,a1,0x20
    800076e8:	00bd85b3          	add	a1,s11,a1
    800076ec:	0005c583          	lbu	a1,0(a1)
    800076f0:	02d7d7bb          	divuw	a5,a5,a3
    800076f4:	f8b40423          	sb	a1,-120(s0)
    800076f8:	42ebfc63          	bgeu	s7,a4,80007b30 <__printf+0x678>
    800076fc:	02079793          	slli	a5,a5,0x20
    80007700:	0207d793          	srli	a5,a5,0x20
    80007704:	00fd8db3          	add	s11,s11,a5
    80007708:	000dc703          	lbu	a4,0(s11)
    8000770c:	00a00793          	li	a5,10
    80007710:	00900c93          	li	s9,9
    80007714:	f8e404a3          	sb	a4,-119(s0)
    80007718:	00065c63          	bgez	a2,80007730 <__printf+0x278>
    8000771c:	f9040713          	addi	a4,s0,-112
    80007720:	00f70733          	add	a4,a4,a5
    80007724:	02d00693          	li	a3,45
    80007728:	fed70823          	sb	a3,-16(a4)
    8000772c:	00078c93          	mv	s9,a5
    80007730:	f8040793          	addi	a5,s0,-128
    80007734:	01978cb3          	add	s9,a5,s9
    80007738:	f7f40d13          	addi	s10,s0,-129
    8000773c:	000cc503          	lbu	a0,0(s9)
    80007740:	fffc8c93          	addi	s9,s9,-1
    80007744:	00000097          	auipc	ra,0x0
    80007748:	b90080e7          	jalr	-1136(ra) # 800072d4 <consputc>
    8000774c:	ffac98e3          	bne	s9,s10,8000773c <__printf+0x284>
    80007750:	00094503          	lbu	a0,0(s2)
    80007754:	e00514e3          	bnez	a0,8000755c <__printf+0xa4>
    80007758:	1a0c1663          	bnez	s8,80007904 <__printf+0x44c>
    8000775c:	08813083          	ld	ra,136(sp)
    80007760:	08013403          	ld	s0,128(sp)
    80007764:	07813483          	ld	s1,120(sp)
    80007768:	07013903          	ld	s2,112(sp)
    8000776c:	06813983          	ld	s3,104(sp)
    80007770:	06013a03          	ld	s4,96(sp)
    80007774:	05813a83          	ld	s5,88(sp)
    80007778:	05013b03          	ld	s6,80(sp)
    8000777c:	04813b83          	ld	s7,72(sp)
    80007780:	04013c03          	ld	s8,64(sp)
    80007784:	03813c83          	ld	s9,56(sp)
    80007788:	03013d03          	ld	s10,48(sp)
    8000778c:	02813d83          	ld	s11,40(sp)
    80007790:	0d010113          	addi	sp,sp,208
    80007794:	00008067          	ret
    80007798:	07300713          	li	a4,115
    8000779c:	1ce78a63          	beq	a5,a4,80007970 <__printf+0x4b8>
    800077a0:	07800713          	li	a4,120
    800077a4:	1ee79e63          	bne	a5,a4,800079a0 <__printf+0x4e8>
    800077a8:	f7843783          	ld	a5,-136(s0)
    800077ac:	0007a703          	lw	a4,0(a5)
    800077b0:	00878793          	addi	a5,a5,8
    800077b4:	f6f43c23          	sd	a5,-136(s0)
    800077b8:	28074263          	bltz	a4,80007a3c <__printf+0x584>
    800077bc:	00002d97          	auipc	s11,0x2
    800077c0:	bc4d8d93          	addi	s11,s11,-1084 # 80009380 <digits>
    800077c4:	00f77793          	andi	a5,a4,15
    800077c8:	00fd87b3          	add	a5,s11,a5
    800077cc:	0007c683          	lbu	a3,0(a5)
    800077d0:	00f00613          	li	a2,15
    800077d4:	0007079b          	sext.w	a5,a4
    800077d8:	f8d40023          	sb	a3,-128(s0)
    800077dc:	0047559b          	srliw	a1,a4,0x4
    800077e0:	0047569b          	srliw	a3,a4,0x4
    800077e4:	00000c93          	li	s9,0
    800077e8:	0ee65063          	bge	a2,a4,800078c8 <__printf+0x410>
    800077ec:	00f6f693          	andi	a3,a3,15
    800077f0:	00dd86b3          	add	a3,s11,a3
    800077f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800077f8:	0087d79b          	srliw	a5,a5,0x8
    800077fc:	00100c93          	li	s9,1
    80007800:	f8d400a3          	sb	a3,-127(s0)
    80007804:	0cb67263          	bgeu	a2,a1,800078c8 <__printf+0x410>
    80007808:	00f7f693          	andi	a3,a5,15
    8000780c:	00dd86b3          	add	a3,s11,a3
    80007810:	0006c583          	lbu	a1,0(a3)
    80007814:	00f00613          	li	a2,15
    80007818:	0047d69b          	srliw	a3,a5,0x4
    8000781c:	f8b40123          	sb	a1,-126(s0)
    80007820:	0047d593          	srli	a1,a5,0x4
    80007824:	28f67e63          	bgeu	a2,a5,80007ac0 <__printf+0x608>
    80007828:	00f6f693          	andi	a3,a3,15
    8000782c:	00dd86b3          	add	a3,s11,a3
    80007830:	0006c503          	lbu	a0,0(a3)
    80007834:	0087d813          	srli	a6,a5,0x8
    80007838:	0087d69b          	srliw	a3,a5,0x8
    8000783c:	f8a401a3          	sb	a0,-125(s0)
    80007840:	28b67663          	bgeu	a2,a1,80007acc <__printf+0x614>
    80007844:	00f6f693          	andi	a3,a3,15
    80007848:	00dd86b3          	add	a3,s11,a3
    8000784c:	0006c583          	lbu	a1,0(a3)
    80007850:	00c7d513          	srli	a0,a5,0xc
    80007854:	00c7d69b          	srliw	a3,a5,0xc
    80007858:	f8b40223          	sb	a1,-124(s0)
    8000785c:	29067a63          	bgeu	a2,a6,80007af0 <__printf+0x638>
    80007860:	00f6f693          	andi	a3,a3,15
    80007864:	00dd86b3          	add	a3,s11,a3
    80007868:	0006c583          	lbu	a1,0(a3)
    8000786c:	0107d813          	srli	a6,a5,0x10
    80007870:	0107d69b          	srliw	a3,a5,0x10
    80007874:	f8b402a3          	sb	a1,-123(s0)
    80007878:	28a67263          	bgeu	a2,a0,80007afc <__printf+0x644>
    8000787c:	00f6f693          	andi	a3,a3,15
    80007880:	00dd86b3          	add	a3,s11,a3
    80007884:	0006c683          	lbu	a3,0(a3)
    80007888:	0147d79b          	srliw	a5,a5,0x14
    8000788c:	f8d40323          	sb	a3,-122(s0)
    80007890:	21067663          	bgeu	a2,a6,80007a9c <__printf+0x5e4>
    80007894:	02079793          	slli	a5,a5,0x20
    80007898:	0207d793          	srli	a5,a5,0x20
    8000789c:	00fd8db3          	add	s11,s11,a5
    800078a0:	000dc683          	lbu	a3,0(s11)
    800078a4:	00800793          	li	a5,8
    800078a8:	00700c93          	li	s9,7
    800078ac:	f8d403a3          	sb	a3,-121(s0)
    800078b0:	00075c63          	bgez	a4,800078c8 <__printf+0x410>
    800078b4:	f9040713          	addi	a4,s0,-112
    800078b8:	00f70733          	add	a4,a4,a5
    800078bc:	02d00693          	li	a3,45
    800078c0:	fed70823          	sb	a3,-16(a4)
    800078c4:	00078c93          	mv	s9,a5
    800078c8:	f8040793          	addi	a5,s0,-128
    800078cc:	01978cb3          	add	s9,a5,s9
    800078d0:	f7f40d13          	addi	s10,s0,-129
    800078d4:	000cc503          	lbu	a0,0(s9)
    800078d8:	fffc8c93          	addi	s9,s9,-1
    800078dc:	00000097          	auipc	ra,0x0
    800078e0:	9f8080e7          	jalr	-1544(ra) # 800072d4 <consputc>
    800078e4:	ff9d18e3          	bne	s10,s9,800078d4 <__printf+0x41c>
    800078e8:	0100006f          	j	800078f8 <__printf+0x440>
    800078ec:	00000097          	auipc	ra,0x0
    800078f0:	9e8080e7          	jalr	-1560(ra) # 800072d4 <consputc>
    800078f4:	000c8493          	mv	s1,s9
    800078f8:	00094503          	lbu	a0,0(s2)
    800078fc:	c60510e3          	bnez	a0,8000755c <__printf+0xa4>
    80007900:	e40c0ee3          	beqz	s8,8000775c <__printf+0x2a4>
    80007904:	00005517          	auipc	a0,0x5
    80007908:	23c50513          	addi	a0,a0,572 # 8000cb40 <pr>
    8000790c:	00001097          	auipc	ra,0x1
    80007910:	94c080e7          	jalr	-1716(ra) # 80008258 <release>
    80007914:	e49ff06f          	j	8000775c <__printf+0x2a4>
    80007918:	f7843783          	ld	a5,-136(s0)
    8000791c:	03000513          	li	a0,48
    80007920:	01000d13          	li	s10,16
    80007924:	00878713          	addi	a4,a5,8
    80007928:	0007bc83          	ld	s9,0(a5)
    8000792c:	f6e43c23          	sd	a4,-136(s0)
    80007930:	00000097          	auipc	ra,0x0
    80007934:	9a4080e7          	jalr	-1628(ra) # 800072d4 <consputc>
    80007938:	07800513          	li	a0,120
    8000793c:	00000097          	auipc	ra,0x0
    80007940:	998080e7          	jalr	-1640(ra) # 800072d4 <consputc>
    80007944:	00002d97          	auipc	s11,0x2
    80007948:	a3cd8d93          	addi	s11,s11,-1476 # 80009380 <digits>
    8000794c:	03ccd793          	srli	a5,s9,0x3c
    80007950:	00fd87b3          	add	a5,s11,a5
    80007954:	0007c503          	lbu	a0,0(a5)
    80007958:	fffd0d1b          	addiw	s10,s10,-1
    8000795c:	004c9c93          	slli	s9,s9,0x4
    80007960:	00000097          	auipc	ra,0x0
    80007964:	974080e7          	jalr	-1676(ra) # 800072d4 <consputc>
    80007968:	fe0d12e3          	bnez	s10,8000794c <__printf+0x494>
    8000796c:	f8dff06f          	j	800078f8 <__printf+0x440>
    80007970:	f7843783          	ld	a5,-136(s0)
    80007974:	0007bc83          	ld	s9,0(a5)
    80007978:	00878793          	addi	a5,a5,8
    8000797c:	f6f43c23          	sd	a5,-136(s0)
    80007980:	000c9a63          	bnez	s9,80007994 <__printf+0x4dc>
    80007984:	1080006f          	j	80007a8c <__printf+0x5d4>
    80007988:	001c8c93          	addi	s9,s9,1
    8000798c:	00000097          	auipc	ra,0x0
    80007990:	948080e7          	jalr	-1720(ra) # 800072d4 <consputc>
    80007994:	000cc503          	lbu	a0,0(s9)
    80007998:	fe0518e3          	bnez	a0,80007988 <__printf+0x4d0>
    8000799c:	f5dff06f          	j	800078f8 <__printf+0x440>
    800079a0:	02500513          	li	a0,37
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	930080e7          	jalr	-1744(ra) # 800072d4 <consputc>
    800079ac:	000c8513          	mv	a0,s9
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	924080e7          	jalr	-1756(ra) # 800072d4 <consputc>
    800079b8:	f41ff06f          	j	800078f8 <__printf+0x440>
    800079bc:	02500513          	li	a0,37
    800079c0:	00000097          	auipc	ra,0x0
    800079c4:	914080e7          	jalr	-1772(ra) # 800072d4 <consputc>
    800079c8:	f31ff06f          	j	800078f8 <__printf+0x440>
    800079cc:	00030513          	mv	a0,t1
    800079d0:	00000097          	auipc	ra,0x0
    800079d4:	7bc080e7          	jalr	1980(ra) # 8000818c <acquire>
    800079d8:	b4dff06f          	j	80007524 <__printf+0x6c>
    800079dc:	40c0053b          	negw	a0,a2
    800079e0:	00a00713          	li	a4,10
    800079e4:	02e576bb          	remuw	a3,a0,a4
    800079e8:	00002d97          	auipc	s11,0x2
    800079ec:	998d8d93          	addi	s11,s11,-1640 # 80009380 <digits>
    800079f0:	ff700593          	li	a1,-9
    800079f4:	02069693          	slli	a3,a3,0x20
    800079f8:	0206d693          	srli	a3,a3,0x20
    800079fc:	00dd86b3          	add	a3,s11,a3
    80007a00:	0006c683          	lbu	a3,0(a3)
    80007a04:	02e557bb          	divuw	a5,a0,a4
    80007a08:	f8d40023          	sb	a3,-128(s0)
    80007a0c:	10b65e63          	bge	a2,a1,80007b28 <__printf+0x670>
    80007a10:	06300593          	li	a1,99
    80007a14:	02e7f6bb          	remuw	a3,a5,a4
    80007a18:	02069693          	slli	a3,a3,0x20
    80007a1c:	0206d693          	srli	a3,a3,0x20
    80007a20:	00dd86b3          	add	a3,s11,a3
    80007a24:	0006c683          	lbu	a3,0(a3)
    80007a28:	02e7d73b          	divuw	a4,a5,a4
    80007a2c:	00200793          	li	a5,2
    80007a30:	f8d400a3          	sb	a3,-127(s0)
    80007a34:	bca5ece3          	bltu	a1,a0,8000760c <__printf+0x154>
    80007a38:	ce5ff06f          	j	8000771c <__printf+0x264>
    80007a3c:	40e007bb          	negw	a5,a4
    80007a40:	00002d97          	auipc	s11,0x2
    80007a44:	940d8d93          	addi	s11,s11,-1728 # 80009380 <digits>
    80007a48:	00f7f693          	andi	a3,a5,15
    80007a4c:	00dd86b3          	add	a3,s11,a3
    80007a50:	0006c583          	lbu	a1,0(a3)
    80007a54:	ff100613          	li	a2,-15
    80007a58:	0047d69b          	srliw	a3,a5,0x4
    80007a5c:	f8b40023          	sb	a1,-128(s0)
    80007a60:	0047d59b          	srliw	a1,a5,0x4
    80007a64:	0ac75e63          	bge	a4,a2,80007b20 <__printf+0x668>
    80007a68:	00f6f693          	andi	a3,a3,15
    80007a6c:	00dd86b3          	add	a3,s11,a3
    80007a70:	0006c603          	lbu	a2,0(a3)
    80007a74:	00f00693          	li	a3,15
    80007a78:	0087d79b          	srliw	a5,a5,0x8
    80007a7c:	f8c400a3          	sb	a2,-127(s0)
    80007a80:	d8b6e4e3          	bltu	a3,a1,80007808 <__printf+0x350>
    80007a84:	00200793          	li	a5,2
    80007a88:	e2dff06f          	j	800078b4 <__printf+0x3fc>
    80007a8c:	00002c97          	auipc	s9,0x2
    80007a90:	8d4c8c93          	addi	s9,s9,-1836 # 80009360 <CONSOLE_STATUS+0x350>
    80007a94:	02800513          	li	a0,40
    80007a98:	ef1ff06f          	j	80007988 <__printf+0x4d0>
    80007a9c:	00700793          	li	a5,7
    80007aa0:	00600c93          	li	s9,6
    80007aa4:	e0dff06f          	j	800078b0 <__printf+0x3f8>
    80007aa8:	00700793          	li	a5,7
    80007aac:	00600c93          	li	s9,6
    80007ab0:	c69ff06f          	j	80007718 <__printf+0x260>
    80007ab4:	00300793          	li	a5,3
    80007ab8:	00200c93          	li	s9,2
    80007abc:	c5dff06f          	j	80007718 <__printf+0x260>
    80007ac0:	00300793          	li	a5,3
    80007ac4:	00200c93          	li	s9,2
    80007ac8:	de9ff06f          	j	800078b0 <__printf+0x3f8>
    80007acc:	00400793          	li	a5,4
    80007ad0:	00300c93          	li	s9,3
    80007ad4:	dddff06f          	j	800078b0 <__printf+0x3f8>
    80007ad8:	00400793          	li	a5,4
    80007adc:	00300c93          	li	s9,3
    80007ae0:	c39ff06f          	j	80007718 <__printf+0x260>
    80007ae4:	00500793          	li	a5,5
    80007ae8:	00400c93          	li	s9,4
    80007aec:	c2dff06f          	j	80007718 <__printf+0x260>
    80007af0:	00500793          	li	a5,5
    80007af4:	00400c93          	li	s9,4
    80007af8:	db9ff06f          	j	800078b0 <__printf+0x3f8>
    80007afc:	00600793          	li	a5,6
    80007b00:	00500c93          	li	s9,5
    80007b04:	dadff06f          	j	800078b0 <__printf+0x3f8>
    80007b08:	00600793          	li	a5,6
    80007b0c:	00500c93          	li	s9,5
    80007b10:	c09ff06f          	j	80007718 <__printf+0x260>
    80007b14:	00800793          	li	a5,8
    80007b18:	00700c93          	li	s9,7
    80007b1c:	bfdff06f          	j	80007718 <__printf+0x260>
    80007b20:	00100793          	li	a5,1
    80007b24:	d91ff06f          	j	800078b4 <__printf+0x3fc>
    80007b28:	00100793          	li	a5,1
    80007b2c:	bf1ff06f          	j	8000771c <__printf+0x264>
    80007b30:	00900793          	li	a5,9
    80007b34:	00800c93          	li	s9,8
    80007b38:	be1ff06f          	j	80007718 <__printf+0x260>
    80007b3c:	00002517          	auipc	a0,0x2
    80007b40:	82c50513          	addi	a0,a0,-2004 # 80009368 <CONSOLE_STATUS+0x358>
    80007b44:	00000097          	auipc	ra,0x0
    80007b48:	918080e7          	jalr	-1768(ra) # 8000745c <panic>

0000000080007b4c <printfinit>:
    80007b4c:	fe010113          	addi	sp,sp,-32
    80007b50:	00813823          	sd	s0,16(sp)
    80007b54:	00913423          	sd	s1,8(sp)
    80007b58:	00113c23          	sd	ra,24(sp)
    80007b5c:	02010413          	addi	s0,sp,32
    80007b60:	00005497          	auipc	s1,0x5
    80007b64:	fe048493          	addi	s1,s1,-32 # 8000cb40 <pr>
    80007b68:	00048513          	mv	a0,s1
    80007b6c:	00002597          	auipc	a1,0x2
    80007b70:	80c58593          	addi	a1,a1,-2036 # 80009378 <CONSOLE_STATUS+0x368>
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	5f4080e7          	jalr	1524(ra) # 80008168 <initlock>
    80007b7c:	01813083          	ld	ra,24(sp)
    80007b80:	01013403          	ld	s0,16(sp)
    80007b84:	0004ac23          	sw	zero,24(s1)
    80007b88:	00813483          	ld	s1,8(sp)
    80007b8c:	02010113          	addi	sp,sp,32
    80007b90:	00008067          	ret

0000000080007b94 <uartinit>:
    80007b94:	ff010113          	addi	sp,sp,-16
    80007b98:	00813423          	sd	s0,8(sp)
    80007b9c:	01010413          	addi	s0,sp,16
    80007ba0:	100007b7          	lui	a5,0x10000
    80007ba4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ba8:	f8000713          	li	a4,-128
    80007bac:	00e781a3          	sb	a4,3(a5)
    80007bb0:	00300713          	li	a4,3
    80007bb4:	00e78023          	sb	a4,0(a5)
    80007bb8:	000780a3          	sb	zero,1(a5)
    80007bbc:	00e781a3          	sb	a4,3(a5)
    80007bc0:	00700693          	li	a3,7
    80007bc4:	00d78123          	sb	a3,2(a5)
    80007bc8:	00e780a3          	sb	a4,1(a5)
    80007bcc:	00813403          	ld	s0,8(sp)
    80007bd0:	01010113          	addi	sp,sp,16
    80007bd4:	00008067          	ret

0000000080007bd8 <uartputc>:
    80007bd8:	00004797          	auipc	a5,0x4
    80007bdc:	c607a783          	lw	a5,-928(a5) # 8000b838 <panicked>
    80007be0:	00078463          	beqz	a5,80007be8 <uartputc+0x10>
    80007be4:	0000006f          	j	80007be4 <uartputc+0xc>
    80007be8:	fd010113          	addi	sp,sp,-48
    80007bec:	02813023          	sd	s0,32(sp)
    80007bf0:	00913c23          	sd	s1,24(sp)
    80007bf4:	01213823          	sd	s2,16(sp)
    80007bf8:	01313423          	sd	s3,8(sp)
    80007bfc:	02113423          	sd	ra,40(sp)
    80007c00:	03010413          	addi	s0,sp,48
    80007c04:	00004917          	auipc	s2,0x4
    80007c08:	c3c90913          	addi	s2,s2,-964 # 8000b840 <uart_tx_r>
    80007c0c:	00093783          	ld	a5,0(s2)
    80007c10:	00004497          	auipc	s1,0x4
    80007c14:	c3848493          	addi	s1,s1,-968 # 8000b848 <uart_tx_w>
    80007c18:	0004b703          	ld	a4,0(s1)
    80007c1c:	02078693          	addi	a3,a5,32
    80007c20:	00050993          	mv	s3,a0
    80007c24:	02e69c63          	bne	a3,a4,80007c5c <uartputc+0x84>
    80007c28:	00001097          	auipc	ra,0x1
    80007c2c:	834080e7          	jalr	-1996(ra) # 8000845c <push_on>
    80007c30:	00093783          	ld	a5,0(s2)
    80007c34:	0004b703          	ld	a4,0(s1)
    80007c38:	02078793          	addi	a5,a5,32
    80007c3c:	00e79463          	bne	a5,a4,80007c44 <uartputc+0x6c>
    80007c40:	0000006f          	j	80007c40 <uartputc+0x68>
    80007c44:	00001097          	auipc	ra,0x1
    80007c48:	88c080e7          	jalr	-1908(ra) # 800084d0 <pop_on>
    80007c4c:	00093783          	ld	a5,0(s2)
    80007c50:	0004b703          	ld	a4,0(s1)
    80007c54:	02078693          	addi	a3,a5,32
    80007c58:	fce688e3          	beq	a3,a4,80007c28 <uartputc+0x50>
    80007c5c:	01f77693          	andi	a3,a4,31
    80007c60:	00005597          	auipc	a1,0x5
    80007c64:	f0058593          	addi	a1,a1,-256 # 8000cb60 <uart_tx_buf>
    80007c68:	00d586b3          	add	a3,a1,a3
    80007c6c:	00170713          	addi	a4,a4,1
    80007c70:	01368023          	sb	s3,0(a3)
    80007c74:	00e4b023          	sd	a4,0(s1)
    80007c78:	10000637          	lui	a2,0x10000
    80007c7c:	02f71063          	bne	a4,a5,80007c9c <uartputc+0xc4>
    80007c80:	0340006f          	j	80007cb4 <uartputc+0xdc>
    80007c84:	00074703          	lbu	a4,0(a4)
    80007c88:	00f93023          	sd	a5,0(s2)
    80007c8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007c90:	00093783          	ld	a5,0(s2)
    80007c94:	0004b703          	ld	a4,0(s1)
    80007c98:	00f70e63          	beq	a4,a5,80007cb4 <uartputc+0xdc>
    80007c9c:	00564683          	lbu	a3,5(a2)
    80007ca0:	01f7f713          	andi	a4,a5,31
    80007ca4:	00e58733          	add	a4,a1,a4
    80007ca8:	0206f693          	andi	a3,a3,32
    80007cac:	00178793          	addi	a5,a5,1
    80007cb0:	fc069ae3          	bnez	a3,80007c84 <uartputc+0xac>
    80007cb4:	02813083          	ld	ra,40(sp)
    80007cb8:	02013403          	ld	s0,32(sp)
    80007cbc:	01813483          	ld	s1,24(sp)
    80007cc0:	01013903          	ld	s2,16(sp)
    80007cc4:	00813983          	ld	s3,8(sp)
    80007cc8:	03010113          	addi	sp,sp,48
    80007ccc:	00008067          	ret

0000000080007cd0 <uartputc_sync>:
    80007cd0:	ff010113          	addi	sp,sp,-16
    80007cd4:	00813423          	sd	s0,8(sp)
    80007cd8:	01010413          	addi	s0,sp,16
    80007cdc:	00004717          	auipc	a4,0x4
    80007ce0:	b5c72703          	lw	a4,-1188(a4) # 8000b838 <panicked>
    80007ce4:	02071663          	bnez	a4,80007d10 <uartputc_sync+0x40>
    80007ce8:	00050793          	mv	a5,a0
    80007cec:	100006b7          	lui	a3,0x10000
    80007cf0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007cf4:	02077713          	andi	a4,a4,32
    80007cf8:	fe070ce3          	beqz	a4,80007cf0 <uartputc_sync+0x20>
    80007cfc:	0ff7f793          	andi	a5,a5,255
    80007d00:	00f68023          	sb	a5,0(a3)
    80007d04:	00813403          	ld	s0,8(sp)
    80007d08:	01010113          	addi	sp,sp,16
    80007d0c:	00008067          	ret
    80007d10:	0000006f          	j	80007d10 <uartputc_sync+0x40>

0000000080007d14 <uartstart>:
    80007d14:	ff010113          	addi	sp,sp,-16
    80007d18:	00813423          	sd	s0,8(sp)
    80007d1c:	01010413          	addi	s0,sp,16
    80007d20:	00004617          	auipc	a2,0x4
    80007d24:	b2060613          	addi	a2,a2,-1248 # 8000b840 <uart_tx_r>
    80007d28:	00004517          	auipc	a0,0x4
    80007d2c:	b2050513          	addi	a0,a0,-1248 # 8000b848 <uart_tx_w>
    80007d30:	00063783          	ld	a5,0(a2)
    80007d34:	00053703          	ld	a4,0(a0)
    80007d38:	04f70263          	beq	a4,a5,80007d7c <uartstart+0x68>
    80007d3c:	100005b7          	lui	a1,0x10000
    80007d40:	00005817          	auipc	a6,0x5
    80007d44:	e2080813          	addi	a6,a6,-480 # 8000cb60 <uart_tx_buf>
    80007d48:	01c0006f          	j	80007d64 <uartstart+0x50>
    80007d4c:	0006c703          	lbu	a4,0(a3)
    80007d50:	00f63023          	sd	a5,0(a2)
    80007d54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d58:	00063783          	ld	a5,0(a2)
    80007d5c:	00053703          	ld	a4,0(a0)
    80007d60:	00f70e63          	beq	a4,a5,80007d7c <uartstart+0x68>
    80007d64:	01f7f713          	andi	a4,a5,31
    80007d68:	00e806b3          	add	a3,a6,a4
    80007d6c:	0055c703          	lbu	a4,5(a1)
    80007d70:	00178793          	addi	a5,a5,1
    80007d74:	02077713          	andi	a4,a4,32
    80007d78:	fc071ae3          	bnez	a4,80007d4c <uartstart+0x38>
    80007d7c:	00813403          	ld	s0,8(sp)
    80007d80:	01010113          	addi	sp,sp,16
    80007d84:	00008067          	ret

0000000080007d88 <uartgetc>:
    80007d88:	ff010113          	addi	sp,sp,-16
    80007d8c:	00813423          	sd	s0,8(sp)
    80007d90:	01010413          	addi	s0,sp,16
    80007d94:	10000737          	lui	a4,0x10000
    80007d98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007d9c:	0017f793          	andi	a5,a5,1
    80007da0:	00078c63          	beqz	a5,80007db8 <uartgetc+0x30>
    80007da4:	00074503          	lbu	a0,0(a4)
    80007da8:	0ff57513          	andi	a0,a0,255
    80007dac:	00813403          	ld	s0,8(sp)
    80007db0:	01010113          	addi	sp,sp,16
    80007db4:	00008067          	ret
    80007db8:	fff00513          	li	a0,-1
    80007dbc:	ff1ff06f          	j	80007dac <uartgetc+0x24>

0000000080007dc0 <uartintr>:
    80007dc0:	100007b7          	lui	a5,0x10000
    80007dc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007dc8:	0017f793          	andi	a5,a5,1
    80007dcc:	0a078463          	beqz	a5,80007e74 <uartintr+0xb4>
    80007dd0:	fe010113          	addi	sp,sp,-32
    80007dd4:	00813823          	sd	s0,16(sp)
    80007dd8:	00913423          	sd	s1,8(sp)
    80007ddc:	00113c23          	sd	ra,24(sp)
    80007de0:	02010413          	addi	s0,sp,32
    80007de4:	100004b7          	lui	s1,0x10000
    80007de8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007dec:	0ff57513          	andi	a0,a0,255
    80007df0:	fffff097          	auipc	ra,0xfffff
    80007df4:	534080e7          	jalr	1332(ra) # 80007324 <consoleintr>
    80007df8:	0054c783          	lbu	a5,5(s1)
    80007dfc:	0017f793          	andi	a5,a5,1
    80007e00:	fe0794e3          	bnez	a5,80007de8 <uartintr+0x28>
    80007e04:	00004617          	auipc	a2,0x4
    80007e08:	a3c60613          	addi	a2,a2,-1476 # 8000b840 <uart_tx_r>
    80007e0c:	00004517          	auipc	a0,0x4
    80007e10:	a3c50513          	addi	a0,a0,-1476 # 8000b848 <uart_tx_w>
    80007e14:	00063783          	ld	a5,0(a2)
    80007e18:	00053703          	ld	a4,0(a0)
    80007e1c:	04f70263          	beq	a4,a5,80007e60 <uartintr+0xa0>
    80007e20:	100005b7          	lui	a1,0x10000
    80007e24:	00005817          	auipc	a6,0x5
    80007e28:	d3c80813          	addi	a6,a6,-708 # 8000cb60 <uart_tx_buf>
    80007e2c:	01c0006f          	j	80007e48 <uartintr+0x88>
    80007e30:	0006c703          	lbu	a4,0(a3)
    80007e34:	00f63023          	sd	a5,0(a2)
    80007e38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e3c:	00063783          	ld	a5,0(a2)
    80007e40:	00053703          	ld	a4,0(a0)
    80007e44:	00f70e63          	beq	a4,a5,80007e60 <uartintr+0xa0>
    80007e48:	01f7f713          	andi	a4,a5,31
    80007e4c:	00e806b3          	add	a3,a6,a4
    80007e50:	0055c703          	lbu	a4,5(a1)
    80007e54:	00178793          	addi	a5,a5,1
    80007e58:	02077713          	andi	a4,a4,32
    80007e5c:	fc071ae3          	bnez	a4,80007e30 <uartintr+0x70>
    80007e60:	01813083          	ld	ra,24(sp)
    80007e64:	01013403          	ld	s0,16(sp)
    80007e68:	00813483          	ld	s1,8(sp)
    80007e6c:	02010113          	addi	sp,sp,32
    80007e70:	00008067          	ret
    80007e74:	00004617          	auipc	a2,0x4
    80007e78:	9cc60613          	addi	a2,a2,-1588 # 8000b840 <uart_tx_r>
    80007e7c:	00004517          	auipc	a0,0x4
    80007e80:	9cc50513          	addi	a0,a0,-1588 # 8000b848 <uart_tx_w>
    80007e84:	00063783          	ld	a5,0(a2)
    80007e88:	00053703          	ld	a4,0(a0)
    80007e8c:	04f70263          	beq	a4,a5,80007ed0 <uartintr+0x110>
    80007e90:	100005b7          	lui	a1,0x10000
    80007e94:	00005817          	auipc	a6,0x5
    80007e98:	ccc80813          	addi	a6,a6,-820 # 8000cb60 <uart_tx_buf>
    80007e9c:	01c0006f          	j	80007eb8 <uartintr+0xf8>
    80007ea0:	0006c703          	lbu	a4,0(a3)
    80007ea4:	00f63023          	sd	a5,0(a2)
    80007ea8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007eac:	00063783          	ld	a5,0(a2)
    80007eb0:	00053703          	ld	a4,0(a0)
    80007eb4:	02f70063          	beq	a4,a5,80007ed4 <uartintr+0x114>
    80007eb8:	01f7f713          	andi	a4,a5,31
    80007ebc:	00e806b3          	add	a3,a6,a4
    80007ec0:	0055c703          	lbu	a4,5(a1)
    80007ec4:	00178793          	addi	a5,a5,1
    80007ec8:	02077713          	andi	a4,a4,32
    80007ecc:	fc071ae3          	bnez	a4,80007ea0 <uartintr+0xe0>
    80007ed0:	00008067          	ret
    80007ed4:	00008067          	ret

0000000080007ed8 <kinit>:
    80007ed8:	fc010113          	addi	sp,sp,-64
    80007edc:	02913423          	sd	s1,40(sp)
    80007ee0:	fffff7b7          	lui	a5,0xfffff
    80007ee4:	00006497          	auipc	s1,0x6
    80007ee8:	c9b48493          	addi	s1,s1,-869 # 8000db7f <end+0xfff>
    80007eec:	02813823          	sd	s0,48(sp)
    80007ef0:	01313c23          	sd	s3,24(sp)
    80007ef4:	00f4f4b3          	and	s1,s1,a5
    80007ef8:	02113c23          	sd	ra,56(sp)
    80007efc:	03213023          	sd	s2,32(sp)
    80007f00:	01413823          	sd	s4,16(sp)
    80007f04:	01513423          	sd	s5,8(sp)
    80007f08:	04010413          	addi	s0,sp,64
    80007f0c:	000017b7          	lui	a5,0x1
    80007f10:	01100993          	li	s3,17
    80007f14:	00f487b3          	add	a5,s1,a5
    80007f18:	01b99993          	slli	s3,s3,0x1b
    80007f1c:	06f9e063          	bltu	s3,a5,80007f7c <kinit+0xa4>
    80007f20:	00005a97          	auipc	s5,0x5
    80007f24:	c60a8a93          	addi	s5,s5,-928 # 8000cb80 <end>
    80007f28:	0754ec63          	bltu	s1,s5,80007fa0 <kinit+0xc8>
    80007f2c:	0734fa63          	bgeu	s1,s3,80007fa0 <kinit+0xc8>
    80007f30:	00088a37          	lui	s4,0x88
    80007f34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007f38:	00004917          	auipc	s2,0x4
    80007f3c:	91890913          	addi	s2,s2,-1768 # 8000b850 <kmem>
    80007f40:	00ca1a13          	slli	s4,s4,0xc
    80007f44:	0140006f          	j	80007f58 <kinit+0x80>
    80007f48:	000017b7          	lui	a5,0x1
    80007f4c:	00f484b3          	add	s1,s1,a5
    80007f50:	0554e863          	bltu	s1,s5,80007fa0 <kinit+0xc8>
    80007f54:	0534f663          	bgeu	s1,s3,80007fa0 <kinit+0xc8>
    80007f58:	00001637          	lui	a2,0x1
    80007f5c:	00100593          	li	a1,1
    80007f60:	00048513          	mv	a0,s1
    80007f64:	00000097          	auipc	ra,0x0
    80007f68:	5e4080e7          	jalr	1508(ra) # 80008548 <__memset>
    80007f6c:	00093783          	ld	a5,0(s2)
    80007f70:	00f4b023          	sd	a5,0(s1)
    80007f74:	00993023          	sd	s1,0(s2)
    80007f78:	fd4498e3          	bne	s1,s4,80007f48 <kinit+0x70>
    80007f7c:	03813083          	ld	ra,56(sp)
    80007f80:	03013403          	ld	s0,48(sp)
    80007f84:	02813483          	ld	s1,40(sp)
    80007f88:	02013903          	ld	s2,32(sp)
    80007f8c:	01813983          	ld	s3,24(sp)
    80007f90:	01013a03          	ld	s4,16(sp)
    80007f94:	00813a83          	ld	s5,8(sp)
    80007f98:	04010113          	addi	sp,sp,64
    80007f9c:	00008067          	ret
    80007fa0:	00001517          	auipc	a0,0x1
    80007fa4:	3f850513          	addi	a0,a0,1016 # 80009398 <digits+0x18>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	4b4080e7          	jalr	1204(ra) # 8000745c <panic>

0000000080007fb0 <freerange>:
    80007fb0:	fc010113          	addi	sp,sp,-64
    80007fb4:	000017b7          	lui	a5,0x1
    80007fb8:	02913423          	sd	s1,40(sp)
    80007fbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007fc0:	009504b3          	add	s1,a0,s1
    80007fc4:	fffff537          	lui	a0,0xfffff
    80007fc8:	02813823          	sd	s0,48(sp)
    80007fcc:	02113c23          	sd	ra,56(sp)
    80007fd0:	03213023          	sd	s2,32(sp)
    80007fd4:	01313c23          	sd	s3,24(sp)
    80007fd8:	01413823          	sd	s4,16(sp)
    80007fdc:	01513423          	sd	s5,8(sp)
    80007fe0:	01613023          	sd	s6,0(sp)
    80007fe4:	04010413          	addi	s0,sp,64
    80007fe8:	00a4f4b3          	and	s1,s1,a0
    80007fec:	00f487b3          	add	a5,s1,a5
    80007ff0:	06f5e463          	bltu	a1,a5,80008058 <freerange+0xa8>
    80007ff4:	00005a97          	auipc	s5,0x5
    80007ff8:	b8ca8a93          	addi	s5,s5,-1140 # 8000cb80 <end>
    80007ffc:	0954e263          	bltu	s1,s5,80008080 <freerange+0xd0>
    80008000:	01100993          	li	s3,17
    80008004:	01b99993          	slli	s3,s3,0x1b
    80008008:	0734fc63          	bgeu	s1,s3,80008080 <freerange+0xd0>
    8000800c:	00058a13          	mv	s4,a1
    80008010:	00004917          	auipc	s2,0x4
    80008014:	84090913          	addi	s2,s2,-1984 # 8000b850 <kmem>
    80008018:	00002b37          	lui	s6,0x2
    8000801c:	0140006f          	j	80008030 <freerange+0x80>
    80008020:	000017b7          	lui	a5,0x1
    80008024:	00f484b3          	add	s1,s1,a5
    80008028:	0554ec63          	bltu	s1,s5,80008080 <freerange+0xd0>
    8000802c:	0534fa63          	bgeu	s1,s3,80008080 <freerange+0xd0>
    80008030:	00001637          	lui	a2,0x1
    80008034:	00100593          	li	a1,1
    80008038:	00048513          	mv	a0,s1
    8000803c:	00000097          	auipc	ra,0x0
    80008040:	50c080e7          	jalr	1292(ra) # 80008548 <__memset>
    80008044:	00093703          	ld	a4,0(s2)
    80008048:	016487b3          	add	a5,s1,s6
    8000804c:	00e4b023          	sd	a4,0(s1)
    80008050:	00993023          	sd	s1,0(s2)
    80008054:	fcfa76e3          	bgeu	s4,a5,80008020 <freerange+0x70>
    80008058:	03813083          	ld	ra,56(sp)
    8000805c:	03013403          	ld	s0,48(sp)
    80008060:	02813483          	ld	s1,40(sp)
    80008064:	02013903          	ld	s2,32(sp)
    80008068:	01813983          	ld	s3,24(sp)
    8000806c:	01013a03          	ld	s4,16(sp)
    80008070:	00813a83          	ld	s5,8(sp)
    80008074:	00013b03          	ld	s6,0(sp)
    80008078:	04010113          	addi	sp,sp,64
    8000807c:	00008067          	ret
    80008080:	00001517          	auipc	a0,0x1
    80008084:	31850513          	addi	a0,a0,792 # 80009398 <digits+0x18>
    80008088:	fffff097          	auipc	ra,0xfffff
    8000808c:	3d4080e7          	jalr	980(ra) # 8000745c <panic>

0000000080008090 <kfree>:
    80008090:	fe010113          	addi	sp,sp,-32
    80008094:	00813823          	sd	s0,16(sp)
    80008098:	00113c23          	sd	ra,24(sp)
    8000809c:	00913423          	sd	s1,8(sp)
    800080a0:	02010413          	addi	s0,sp,32
    800080a4:	03451793          	slli	a5,a0,0x34
    800080a8:	04079c63          	bnez	a5,80008100 <kfree+0x70>
    800080ac:	00005797          	auipc	a5,0x5
    800080b0:	ad478793          	addi	a5,a5,-1324 # 8000cb80 <end>
    800080b4:	00050493          	mv	s1,a0
    800080b8:	04f56463          	bltu	a0,a5,80008100 <kfree+0x70>
    800080bc:	01100793          	li	a5,17
    800080c0:	01b79793          	slli	a5,a5,0x1b
    800080c4:	02f57e63          	bgeu	a0,a5,80008100 <kfree+0x70>
    800080c8:	00001637          	lui	a2,0x1
    800080cc:	00100593          	li	a1,1
    800080d0:	00000097          	auipc	ra,0x0
    800080d4:	478080e7          	jalr	1144(ra) # 80008548 <__memset>
    800080d8:	00003797          	auipc	a5,0x3
    800080dc:	77878793          	addi	a5,a5,1912 # 8000b850 <kmem>
    800080e0:	0007b703          	ld	a4,0(a5)
    800080e4:	01813083          	ld	ra,24(sp)
    800080e8:	01013403          	ld	s0,16(sp)
    800080ec:	00e4b023          	sd	a4,0(s1)
    800080f0:	0097b023          	sd	s1,0(a5)
    800080f4:	00813483          	ld	s1,8(sp)
    800080f8:	02010113          	addi	sp,sp,32
    800080fc:	00008067          	ret
    80008100:	00001517          	auipc	a0,0x1
    80008104:	29850513          	addi	a0,a0,664 # 80009398 <digits+0x18>
    80008108:	fffff097          	auipc	ra,0xfffff
    8000810c:	354080e7          	jalr	852(ra) # 8000745c <panic>

0000000080008110 <kalloc>:
    80008110:	fe010113          	addi	sp,sp,-32
    80008114:	00813823          	sd	s0,16(sp)
    80008118:	00913423          	sd	s1,8(sp)
    8000811c:	00113c23          	sd	ra,24(sp)
    80008120:	02010413          	addi	s0,sp,32
    80008124:	00003797          	auipc	a5,0x3
    80008128:	72c78793          	addi	a5,a5,1836 # 8000b850 <kmem>
    8000812c:	0007b483          	ld	s1,0(a5)
    80008130:	02048063          	beqz	s1,80008150 <kalloc+0x40>
    80008134:	0004b703          	ld	a4,0(s1)
    80008138:	00001637          	lui	a2,0x1
    8000813c:	00500593          	li	a1,5
    80008140:	00048513          	mv	a0,s1
    80008144:	00e7b023          	sd	a4,0(a5)
    80008148:	00000097          	auipc	ra,0x0
    8000814c:	400080e7          	jalr	1024(ra) # 80008548 <__memset>
    80008150:	01813083          	ld	ra,24(sp)
    80008154:	01013403          	ld	s0,16(sp)
    80008158:	00048513          	mv	a0,s1
    8000815c:	00813483          	ld	s1,8(sp)
    80008160:	02010113          	addi	sp,sp,32
    80008164:	00008067          	ret

0000000080008168 <initlock>:
    80008168:	ff010113          	addi	sp,sp,-16
    8000816c:	00813423          	sd	s0,8(sp)
    80008170:	01010413          	addi	s0,sp,16
    80008174:	00813403          	ld	s0,8(sp)
    80008178:	00b53423          	sd	a1,8(a0)
    8000817c:	00052023          	sw	zero,0(a0)
    80008180:	00053823          	sd	zero,16(a0)
    80008184:	01010113          	addi	sp,sp,16
    80008188:	00008067          	ret

000000008000818c <acquire>:
    8000818c:	fe010113          	addi	sp,sp,-32
    80008190:	00813823          	sd	s0,16(sp)
    80008194:	00913423          	sd	s1,8(sp)
    80008198:	00113c23          	sd	ra,24(sp)
    8000819c:	01213023          	sd	s2,0(sp)
    800081a0:	02010413          	addi	s0,sp,32
    800081a4:	00050493          	mv	s1,a0
    800081a8:	10002973          	csrr	s2,sstatus
    800081ac:	100027f3          	csrr	a5,sstatus
    800081b0:	ffd7f793          	andi	a5,a5,-3
    800081b4:	10079073          	csrw	sstatus,a5
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	8ec080e7          	jalr	-1812(ra) # 80006aa4 <mycpu>
    800081c0:	07852783          	lw	a5,120(a0)
    800081c4:	06078e63          	beqz	a5,80008240 <acquire+0xb4>
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	8dc080e7          	jalr	-1828(ra) # 80006aa4 <mycpu>
    800081d0:	07852783          	lw	a5,120(a0)
    800081d4:	0004a703          	lw	a4,0(s1)
    800081d8:	0017879b          	addiw	a5,a5,1
    800081dc:	06f52c23          	sw	a5,120(a0)
    800081e0:	04071063          	bnez	a4,80008220 <acquire+0x94>
    800081e4:	00100713          	li	a4,1
    800081e8:	00070793          	mv	a5,a4
    800081ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800081f0:	0007879b          	sext.w	a5,a5
    800081f4:	fe079ae3          	bnez	a5,800081e8 <acquire+0x5c>
    800081f8:	0ff0000f          	fence
    800081fc:	fffff097          	auipc	ra,0xfffff
    80008200:	8a8080e7          	jalr	-1880(ra) # 80006aa4 <mycpu>
    80008204:	01813083          	ld	ra,24(sp)
    80008208:	01013403          	ld	s0,16(sp)
    8000820c:	00a4b823          	sd	a0,16(s1)
    80008210:	00013903          	ld	s2,0(sp)
    80008214:	00813483          	ld	s1,8(sp)
    80008218:	02010113          	addi	sp,sp,32
    8000821c:	00008067          	ret
    80008220:	0104b903          	ld	s2,16(s1)
    80008224:	fffff097          	auipc	ra,0xfffff
    80008228:	880080e7          	jalr	-1920(ra) # 80006aa4 <mycpu>
    8000822c:	faa91ce3          	bne	s2,a0,800081e4 <acquire+0x58>
    80008230:	00001517          	auipc	a0,0x1
    80008234:	17050513          	addi	a0,a0,368 # 800093a0 <digits+0x20>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	224080e7          	jalr	548(ra) # 8000745c <panic>
    80008240:	00195913          	srli	s2,s2,0x1
    80008244:	fffff097          	auipc	ra,0xfffff
    80008248:	860080e7          	jalr	-1952(ra) # 80006aa4 <mycpu>
    8000824c:	00197913          	andi	s2,s2,1
    80008250:	07252e23          	sw	s2,124(a0)
    80008254:	f75ff06f          	j	800081c8 <acquire+0x3c>

0000000080008258 <release>:
    80008258:	fe010113          	addi	sp,sp,-32
    8000825c:	00813823          	sd	s0,16(sp)
    80008260:	00113c23          	sd	ra,24(sp)
    80008264:	00913423          	sd	s1,8(sp)
    80008268:	01213023          	sd	s2,0(sp)
    8000826c:	02010413          	addi	s0,sp,32
    80008270:	00052783          	lw	a5,0(a0)
    80008274:	00079a63          	bnez	a5,80008288 <release+0x30>
    80008278:	00001517          	auipc	a0,0x1
    8000827c:	13050513          	addi	a0,a0,304 # 800093a8 <digits+0x28>
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	1dc080e7          	jalr	476(ra) # 8000745c <panic>
    80008288:	01053903          	ld	s2,16(a0)
    8000828c:	00050493          	mv	s1,a0
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	814080e7          	jalr	-2028(ra) # 80006aa4 <mycpu>
    80008298:	fea910e3          	bne	s2,a0,80008278 <release+0x20>
    8000829c:	0004b823          	sd	zero,16(s1)
    800082a0:	0ff0000f          	fence
    800082a4:	0f50000f          	fence	iorw,ow
    800082a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800082ac:	ffffe097          	auipc	ra,0xffffe
    800082b0:	7f8080e7          	jalr	2040(ra) # 80006aa4 <mycpu>
    800082b4:	100027f3          	csrr	a5,sstatus
    800082b8:	0027f793          	andi	a5,a5,2
    800082bc:	04079a63          	bnez	a5,80008310 <release+0xb8>
    800082c0:	07852783          	lw	a5,120(a0)
    800082c4:	02f05e63          	blez	a5,80008300 <release+0xa8>
    800082c8:	fff7871b          	addiw	a4,a5,-1
    800082cc:	06e52c23          	sw	a4,120(a0)
    800082d0:	00071c63          	bnez	a4,800082e8 <release+0x90>
    800082d4:	07c52783          	lw	a5,124(a0)
    800082d8:	00078863          	beqz	a5,800082e8 <release+0x90>
    800082dc:	100027f3          	csrr	a5,sstatus
    800082e0:	0027e793          	ori	a5,a5,2
    800082e4:	10079073          	csrw	sstatus,a5
    800082e8:	01813083          	ld	ra,24(sp)
    800082ec:	01013403          	ld	s0,16(sp)
    800082f0:	00813483          	ld	s1,8(sp)
    800082f4:	00013903          	ld	s2,0(sp)
    800082f8:	02010113          	addi	sp,sp,32
    800082fc:	00008067          	ret
    80008300:	00001517          	auipc	a0,0x1
    80008304:	0c850513          	addi	a0,a0,200 # 800093c8 <digits+0x48>
    80008308:	fffff097          	auipc	ra,0xfffff
    8000830c:	154080e7          	jalr	340(ra) # 8000745c <panic>
    80008310:	00001517          	auipc	a0,0x1
    80008314:	0a050513          	addi	a0,a0,160 # 800093b0 <digits+0x30>
    80008318:	fffff097          	auipc	ra,0xfffff
    8000831c:	144080e7          	jalr	324(ra) # 8000745c <panic>

0000000080008320 <holding>:
    80008320:	00052783          	lw	a5,0(a0)
    80008324:	00079663          	bnez	a5,80008330 <holding+0x10>
    80008328:	00000513          	li	a0,0
    8000832c:	00008067          	ret
    80008330:	fe010113          	addi	sp,sp,-32
    80008334:	00813823          	sd	s0,16(sp)
    80008338:	00913423          	sd	s1,8(sp)
    8000833c:	00113c23          	sd	ra,24(sp)
    80008340:	02010413          	addi	s0,sp,32
    80008344:	01053483          	ld	s1,16(a0)
    80008348:	ffffe097          	auipc	ra,0xffffe
    8000834c:	75c080e7          	jalr	1884(ra) # 80006aa4 <mycpu>
    80008350:	01813083          	ld	ra,24(sp)
    80008354:	01013403          	ld	s0,16(sp)
    80008358:	40a48533          	sub	a0,s1,a0
    8000835c:	00153513          	seqz	a0,a0
    80008360:	00813483          	ld	s1,8(sp)
    80008364:	02010113          	addi	sp,sp,32
    80008368:	00008067          	ret

000000008000836c <push_off>:
    8000836c:	fe010113          	addi	sp,sp,-32
    80008370:	00813823          	sd	s0,16(sp)
    80008374:	00113c23          	sd	ra,24(sp)
    80008378:	00913423          	sd	s1,8(sp)
    8000837c:	02010413          	addi	s0,sp,32
    80008380:	100024f3          	csrr	s1,sstatus
    80008384:	100027f3          	csrr	a5,sstatus
    80008388:	ffd7f793          	andi	a5,a5,-3
    8000838c:	10079073          	csrw	sstatus,a5
    80008390:	ffffe097          	auipc	ra,0xffffe
    80008394:	714080e7          	jalr	1812(ra) # 80006aa4 <mycpu>
    80008398:	07852783          	lw	a5,120(a0)
    8000839c:	02078663          	beqz	a5,800083c8 <push_off+0x5c>
    800083a0:	ffffe097          	auipc	ra,0xffffe
    800083a4:	704080e7          	jalr	1796(ra) # 80006aa4 <mycpu>
    800083a8:	07852783          	lw	a5,120(a0)
    800083ac:	01813083          	ld	ra,24(sp)
    800083b0:	01013403          	ld	s0,16(sp)
    800083b4:	0017879b          	addiw	a5,a5,1
    800083b8:	06f52c23          	sw	a5,120(a0)
    800083bc:	00813483          	ld	s1,8(sp)
    800083c0:	02010113          	addi	sp,sp,32
    800083c4:	00008067          	ret
    800083c8:	0014d493          	srli	s1,s1,0x1
    800083cc:	ffffe097          	auipc	ra,0xffffe
    800083d0:	6d8080e7          	jalr	1752(ra) # 80006aa4 <mycpu>
    800083d4:	0014f493          	andi	s1,s1,1
    800083d8:	06952e23          	sw	s1,124(a0)
    800083dc:	fc5ff06f          	j	800083a0 <push_off+0x34>

00000000800083e0 <pop_off>:
    800083e0:	ff010113          	addi	sp,sp,-16
    800083e4:	00813023          	sd	s0,0(sp)
    800083e8:	00113423          	sd	ra,8(sp)
    800083ec:	01010413          	addi	s0,sp,16
    800083f0:	ffffe097          	auipc	ra,0xffffe
    800083f4:	6b4080e7          	jalr	1716(ra) # 80006aa4 <mycpu>
    800083f8:	100027f3          	csrr	a5,sstatus
    800083fc:	0027f793          	andi	a5,a5,2
    80008400:	04079663          	bnez	a5,8000844c <pop_off+0x6c>
    80008404:	07852783          	lw	a5,120(a0)
    80008408:	02f05a63          	blez	a5,8000843c <pop_off+0x5c>
    8000840c:	fff7871b          	addiw	a4,a5,-1
    80008410:	06e52c23          	sw	a4,120(a0)
    80008414:	00071c63          	bnez	a4,8000842c <pop_off+0x4c>
    80008418:	07c52783          	lw	a5,124(a0)
    8000841c:	00078863          	beqz	a5,8000842c <pop_off+0x4c>
    80008420:	100027f3          	csrr	a5,sstatus
    80008424:	0027e793          	ori	a5,a5,2
    80008428:	10079073          	csrw	sstatus,a5
    8000842c:	00813083          	ld	ra,8(sp)
    80008430:	00013403          	ld	s0,0(sp)
    80008434:	01010113          	addi	sp,sp,16
    80008438:	00008067          	ret
    8000843c:	00001517          	auipc	a0,0x1
    80008440:	f8c50513          	addi	a0,a0,-116 # 800093c8 <digits+0x48>
    80008444:	fffff097          	auipc	ra,0xfffff
    80008448:	018080e7          	jalr	24(ra) # 8000745c <panic>
    8000844c:	00001517          	auipc	a0,0x1
    80008450:	f6450513          	addi	a0,a0,-156 # 800093b0 <digits+0x30>
    80008454:	fffff097          	auipc	ra,0xfffff
    80008458:	008080e7          	jalr	8(ra) # 8000745c <panic>

000000008000845c <push_on>:
    8000845c:	fe010113          	addi	sp,sp,-32
    80008460:	00813823          	sd	s0,16(sp)
    80008464:	00113c23          	sd	ra,24(sp)
    80008468:	00913423          	sd	s1,8(sp)
    8000846c:	02010413          	addi	s0,sp,32
    80008470:	100024f3          	csrr	s1,sstatus
    80008474:	100027f3          	csrr	a5,sstatus
    80008478:	0027e793          	ori	a5,a5,2
    8000847c:	10079073          	csrw	sstatus,a5
    80008480:	ffffe097          	auipc	ra,0xffffe
    80008484:	624080e7          	jalr	1572(ra) # 80006aa4 <mycpu>
    80008488:	07852783          	lw	a5,120(a0)
    8000848c:	02078663          	beqz	a5,800084b8 <push_on+0x5c>
    80008490:	ffffe097          	auipc	ra,0xffffe
    80008494:	614080e7          	jalr	1556(ra) # 80006aa4 <mycpu>
    80008498:	07852783          	lw	a5,120(a0)
    8000849c:	01813083          	ld	ra,24(sp)
    800084a0:	01013403          	ld	s0,16(sp)
    800084a4:	0017879b          	addiw	a5,a5,1
    800084a8:	06f52c23          	sw	a5,120(a0)
    800084ac:	00813483          	ld	s1,8(sp)
    800084b0:	02010113          	addi	sp,sp,32
    800084b4:	00008067          	ret
    800084b8:	0014d493          	srli	s1,s1,0x1
    800084bc:	ffffe097          	auipc	ra,0xffffe
    800084c0:	5e8080e7          	jalr	1512(ra) # 80006aa4 <mycpu>
    800084c4:	0014f493          	andi	s1,s1,1
    800084c8:	06952e23          	sw	s1,124(a0)
    800084cc:	fc5ff06f          	j	80008490 <push_on+0x34>

00000000800084d0 <pop_on>:
    800084d0:	ff010113          	addi	sp,sp,-16
    800084d4:	00813023          	sd	s0,0(sp)
    800084d8:	00113423          	sd	ra,8(sp)
    800084dc:	01010413          	addi	s0,sp,16
    800084e0:	ffffe097          	auipc	ra,0xffffe
    800084e4:	5c4080e7          	jalr	1476(ra) # 80006aa4 <mycpu>
    800084e8:	100027f3          	csrr	a5,sstatus
    800084ec:	0027f793          	andi	a5,a5,2
    800084f0:	04078463          	beqz	a5,80008538 <pop_on+0x68>
    800084f4:	07852783          	lw	a5,120(a0)
    800084f8:	02f05863          	blez	a5,80008528 <pop_on+0x58>
    800084fc:	fff7879b          	addiw	a5,a5,-1
    80008500:	06f52c23          	sw	a5,120(a0)
    80008504:	07853783          	ld	a5,120(a0)
    80008508:	00079863          	bnez	a5,80008518 <pop_on+0x48>
    8000850c:	100027f3          	csrr	a5,sstatus
    80008510:	ffd7f793          	andi	a5,a5,-3
    80008514:	10079073          	csrw	sstatus,a5
    80008518:	00813083          	ld	ra,8(sp)
    8000851c:	00013403          	ld	s0,0(sp)
    80008520:	01010113          	addi	sp,sp,16
    80008524:	00008067          	ret
    80008528:	00001517          	auipc	a0,0x1
    8000852c:	ec850513          	addi	a0,a0,-312 # 800093f0 <digits+0x70>
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	f2c080e7          	jalr	-212(ra) # 8000745c <panic>
    80008538:	00001517          	auipc	a0,0x1
    8000853c:	e9850513          	addi	a0,a0,-360 # 800093d0 <digits+0x50>
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	f1c080e7          	jalr	-228(ra) # 8000745c <panic>

0000000080008548 <__memset>:
    80008548:	ff010113          	addi	sp,sp,-16
    8000854c:	00813423          	sd	s0,8(sp)
    80008550:	01010413          	addi	s0,sp,16
    80008554:	1a060e63          	beqz	a2,80008710 <__memset+0x1c8>
    80008558:	40a007b3          	neg	a5,a0
    8000855c:	0077f793          	andi	a5,a5,7
    80008560:	00778693          	addi	a3,a5,7
    80008564:	00b00813          	li	a6,11
    80008568:	0ff5f593          	andi	a1,a1,255
    8000856c:	fff6071b          	addiw	a4,a2,-1
    80008570:	1b06e663          	bltu	a3,a6,8000871c <__memset+0x1d4>
    80008574:	1cd76463          	bltu	a4,a3,8000873c <__memset+0x1f4>
    80008578:	1a078e63          	beqz	a5,80008734 <__memset+0x1ec>
    8000857c:	00b50023          	sb	a1,0(a0)
    80008580:	00100713          	li	a4,1
    80008584:	1ae78463          	beq	a5,a4,8000872c <__memset+0x1e4>
    80008588:	00b500a3          	sb	a1,1(a0)
    8000858c:	00200713          	li	a4,2
    80008590:	1ae78a63          	beq	a5,a4,80008744 <__memset+0x1fc>
    80008594:	00b50123          	sb	a1,2(a0)
    80008598:	00300713          	li	a4,3
    8000859c:	18e78463          	beq	a5,a4,80008724 <__memset+0x1dc>
    800085a0:	00b501a3          	sb	a1,3(a0)
    800085a4:	00400713          	li	a4,4
    800085a8:	1ae78263          	beq	a5,a4,8000874c <__memset+0x204>
    800085ac:	00b50223          	sb	a1,4(a0)
    800085b0:	00500713          	li	a4,5
    800085b4:	1ae78063          	beq	a5,a4,80008754 <__memset+0x20c>
    800085b8:	00b502a3          	sb	a1,5(a0)
    800085bc:	00700713          	li	a4,7
    800085c0:	18e79e63          	bne	a5,a4,8000875c <__memset+0x214>
    800085c4:	00b50323          	sb	a1,6(a0)
    800085c8:	00700e93          	li	t4,7
    800085cc:	00859713          	slli	a4,a1,0x8
    800085d0:	00e5e733          	or	a4,a1,a4
    800085d4:	01059e13          	slli	t3,a1,0x10
    800085d8:	01c76e33          	or	t3,a4,t3
    800085dc:	01859313          	slli	t1,a1,0x18
    800085e0:	006e6333          	or	t1,t3,t1
    800085e4:	02059893          	slli	a7,a1,0x20
    800085e8:	40f60e3b          	subw	t3,a2,a5
    800085ec:	011368b3          	or	a7,t1,a7
    800085f0:	02859813          	slli	a6,a1,0x28
    800085f4:	0108e833          	or	a6,a7,a6
    800085f8:	03059693          	slli	a3,a1,0x30
    800085fc:	003e589b          	srliw	a7,t3,0x3
    80008600:	00d866b3          	or	a3,a6,a3
    80008604:	03859713          	slli	a4,a1,0x38
    80008608:	00389813          	slli	a6,a7,0x3
    8000860c:	00f507b3          	add	a5,a0,a5
    80008610:	00e6e733          	or	a4,a3,a4
    80008614:	000e089b          	sext.w	a7,t3
    80008618:	00f806b3          	add	a3,a6,a5
    8000861c:	00e7b023          	sd	a4,0(a5)
    80008620:	00878793          	addi	a5,a5,8
    80008624:	fed79ce3          	bne	a5,a3,8000861c <__memset+0xd4>
    80008628:	ff8e7793          	andi	a5,t3,-8
    8000862c:	0007871b          	sext.w	a4,a5
    80008630:	01d787bb          	addw	a5,a5,t4
    80008634:	0ce88e63          	beq	a7,a4,80008710 <__memset+0x1c8>
    80008638:	00f50733          	add	a4,a0,a5
    8000863c:	00b70023          	sb	a1,0(a4)
    80008640:	0017871b          	addiw	a4,a5,1
    80008644:	0cc77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008648:	00e50733          	add	a4,a0,a4
    8000864c:	00b70023          	sb	a1,0(a4)
    80008650:	0027871b          	addiw	a4,a5,2
    80008654:	0ac77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008658:	00e50733          	add	a4,a0,a4
    8000865c:	00b70023          	sb	a1,0(a4)
    80008660:	0037871b          	addiw	a4,a5,3
    80008664:	0ac77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008668:	00e50733          	add	a4,a0,a4
    8000866c:	00b70023          	sb	a1,0(a4)
    80008670:	0047871b          	addiw	a4,a5,4
    80008674:	08c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008678:	00e50733          	add	a4,a0,a4
    8000867c:	00b70023          	sb	a1,0(a4)
    80008680:	0057871b          	addiw	a4,a5,5
    80008684:	08c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00b70023          	sb	a1,0(a4)
    80008690:	0067871b          	addiw	a4,a5,6
    80008694:	06c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    80008698:	00e50733          	add	a4,a0,a4
    8000869c:	00b70023          	sb	a1,0(a4)
    800086a0:	0077871b          	addiw	a4,a5,7
    800086a4:	06c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086a8:	00e50733          	add	a4,a0,a4
    800086ac:	00b70023          	sb	a1,0(a4)
    800086b0:	0087871b          	addiw	a4,a5,8
    800086b4:	04c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086b8:	00e50733          	add	a4,a0,a4
    800086bc:	00b70023          	sb	a1,0(a4)
    800086c0:	0097871b          	addiw	a4,a5,9
    800086c4:	04c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086c8:	00e50733          	add	a4,a0,a4
    800086cc:	00b70023          	sb	a1,0(a4)
    800086d0:	00a7871b          	addiw	a4,a5,10
    800086d4:	02c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086d8:	00e50733          	add	a4,a0,a4
    800086dc:	00b70023          	sb	a1,0(a4)
    800086e0:	00b7871b          	addiw	a4,a5,11
    800086e4:	02c77663          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086e8:	00e50733          	add	a4,a0,a4
    800086ec:	00b70023          	sb	a1,0(a4)
    800086f0:	00c7871b          	addiw	a4,a5,12
    800086f4:	00c77e63          	bgeu	a4,a2,80008710 <__memset+0x1c8>
    800086f8:	00e50733          	add	a4,a0,a4
    800086fc:	00b70023          	sb	a1,0(a4)
    80008700:	00d7879b          	addiw	a5,a5,13
    80008704:	00c7f663          	bgeu	a5,a2,80008710 <__memset+0x1c8>
    80008708:	00f507b3          	add	a5,a0,a5
    8000870c:	00b78023          	sb	a1,0(a5)
    80008710:	00813403          	ld	s0,8(sp)
    80008714:	01010113          	addi	sp,sp,16
    80008718:	00008067          	ret
    8000871c:	00b00693          	li	a3,11
    80008720:	e55ff06f          	j	80008574 <__memset+0x2c>
    80008724:	00300e93          	li	t4,3
    80008728:	ea5ff06f          	j	800085cc <__memset+0x84>
    8000872c:	00100e93          	li	t4,1
    80008730:	e9dff06f          	j	800085cc <__memset+0x84>
    80008734:	00000e93          	li	t4,0
    80008738:	e95ff06f          	j	800085cc <__memset+0x84>
    8000873c:	00000793          	li	a5,0
    80008740:	ef9ff06f          	j	80008638 <__memset+0xf0>
    80008744:	00200e93          	li	t4,2
    80008748:	e85ff06f          	j	800085cc <__memset+0x84>
    8000874c:	00400e93          	li	t4,4
    80008750:	e7dff06f          	j	800085cc <__memset+0x84>
    80008754:	00500e93          	li	t4,5
    80008758:	e75ff06f          	j	800085cc <__memset+0x84>
    8000875c:	00600e93          	li	t4,6
    80008760:	e6dff06f          	j	800085cc <__memset+0x84>

0000000080008764 <__memmove>:
    80008764:	ff010113          	addi	sp,sp,-16
    80008768:	00813423          	sd	s0,8(sp)
    8000876c:	01010413          	addi	s0,sp,16
    80008770:	0e060863          	beqz	a2,80008860 <__memmove+0xfc>
    80008774:	fff6069b          	addiw	a3,a2,-1
    80008778:	0006881b          	sext.w	a6,a3
    8000877c:	0ea5e863          	bltu	a1,a0,8000886c <__memmove+0x108>
    80008780:	00758713          	addi	a4,a1,7
    80008784:	00a5e7b3          	or	a5,a1,a0
    80008788:	40a70733          	sub	a4,a4,a0
    8000878c:	0077f793          	andi	a5,a5,7
    80008790:	00f73713          	sltiu	a4,a4,15
    80008794:	00174713          	xori	a4,a4,1
    80008798:	0017b793          	seqz	a5,a5
    8000879c:	00e7f7b3          	and	a5,a5,a4
    800087a0:	10078863          	beqz	a5,800088b0 <__memmove+0x14c>
    800087a4:	00900793          	li	a5,9
    800087a8:	1107f463          	bgeu	a5,a6,800088b0 <__memmove+0x14c>
    800087ac:	0036581b          	srliw	a6,a2,0x3
    800087b0:	fff8081b          	addiw	a6,a6,-1
    800087b4:	02081813          	slli	a6,a6,0x20
    800087b8:	01d85893          	srli	a7,a6,0x1d
    800087bc:	00858813          	addi	a6,a1,8
    800087c0:	00058793          	mv	a5,a1
    800087c4:	00050713          	mv	a4,a0
    800087c8:	01088833          	add	a6,a7,a6
    800087cc:	0007b883          	ld	a7,0(a5)
    800087d0:	00878793          	addi	a5,a5,8
    800087d4:	00870713          	addi	a4,a4,8
    800087d8:	ff173c23          	sd	a7,-8(a4)
    800087dc:	ff0798e3          	bne	a5,a6,800087cc <__memmove+0x68>
    800087e0:	ff867713          	andi	a4,a2,-8
    800087e4:	02071793          	slli	a5,a4,0x20
    800087e8:	0207d793          	srli	a5,a5,0x20
    800087ec:	00f585b3          	add	a1,a1,a5
    800087f0:	40e686bb          	subw	a3,a3,a4
    800087f4:	00f507b3          	add	a5,a0,a5
    800087f8:	06e60463          	beq	a2,a4,80008860 <__memmove+0xfc>
    800087fc:	0005c703          	lbu	a4,0(a1)
    80008800:	00e78023          	sb	a4,0(a5)
    80008804:	04068e63          	beqz	a3,80008860 <__memmove+0xfc>
    80008808:	0015c603          	lbu	a2,1(a1)
    8000880c:	00100713          	li	a4,1
    80008810:	00c780a3          	sb	a2,1(a5)
    80008814:	04e68663          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008818:	0025c603          	lbu	a2,2(a1)
    8000881c:	00200713          	li	a4,2
    80008820:	00c78123          	sb	a2,2(a5)
    80008824:	02e68e63          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008828:	0035c603          	lbu	a2,3(a1)
    8000882c:	00300713          	li	a4,3
    80008830:	00c781a3          	sb	a2,3(a5)
    80008834:	02e68663          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008838:	0045c603          	lbu	a2,4(a1)
    8000883c:	00400713          	li	a4,4
    80008840:	00c78223          	sb	a2,4(a5)
    80008844:	00e68e63          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008848:	0055c603          	lbu	a2,5(a1)
    8000884c:	00500713          	li	a4,5
    80008850:	00c782a3          	sb	a2,5(a5)
    80008854:	00e68663          	beq	a3,a4,80008860 <__memmove+0xfc>
    80008858:	0065c703          	lbu	a4,6(a1)
    8000885c:	00e78323          	sb	a4,6(a5)
    80008860:	00813403          	ld	s0,8(sp)
    80008864:	01010113          	addi	sp,sp,16
    80008868:	00008067          	ret
    8000886c:	02061713          	slli	a4,a2,0x20
    80008870:	02075713          	srli	a4,a4,0x20
    80008874:	00e587b3          	add	a5,a1,a4
    80008878:	f0f574e3          	bgeu	a0,a5,80008780 <__memmove+0x1c>
    8000887c:	02069613          	slli	a2,a3,0x20
    80008880:	02065613          	srli	a2,a2,0x20
    80008884:	fff64613          	not	a2,a2
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00c78633          	add	a2,a5,a2
    80008890:	fff7c683          	lbu	a3,-1(a5)
    80008894:	fff78793          	addi	a5,a5,-1
    80008898:	fff70713          	addi	a4,a4,-1
    8000889c:	00d70023          	sb	a3,0(a4)
    800088a0:	fec798e3          	bne	a5,a2,80008890 <__memmove+0x12c>
    800088a4:	00813403          	ld	s0,8(sp)
    800088a8:	01010113          	addi	sp,sp,16
    800088ac:	00008067          	ret
    800088b0:	02069713          	slli	a4,a3,0x20
    800088b4:	02075713          	srli	a4,a4,0x20
    800088b8:	00170713          	addi	a4,a4,1
    800088bc:	00e50733          	add	a4,a0,a4
    800088c0:	00050793          	mv	a5,a0
    800088c4:	0005c683          	lbu	a3,0(a1)
    800088c8:	00178793          	addi	a5,a5,1
    800088cc:	00158593          	addi	a1,a1,1
    800088d0:	fed78fa3          	sb	a3,-1(a5)
    800088d4:	fee798e3          	bne	a5,a4,800088c4 <__memmove+0x160>
    800088d8:	f89ff06f          	j	80008860 <__memmove+0xfc>

00000000800088dc <__putc>:
    800088dc:	fe010113          	addi	sp,sp,-32
    800088e0:	00813823          	sd	s0,16(sp)
    800088e4:	00113c23          	sd	ra,24(sp)
    800088e8:	02010413          	addi	s0,sp,32
    800088ec:	00050793          	mv	a5,a0
    800088f0:	fef40593          	addi	a1,s0,-17
    800088f4:	00100613          	li	a2,1
    800088f8:	00000513          	li	a0,0
    800088fc:	fef407a3          	sb	a5,-17(s0)
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	b3c080e7          	jalr	-1220(ra) # 8000743c <console_write>
    80008908:	01813083          	ld	ra,24(sp)
    8000890c:	01013403          	ld	s0,16(sp)
    80008910:	02010113          	addi	sp,sp,32
    80008914:	00008067          	ret

0000000080008918 <__getc>:
    80008918:	fe010113          	addi	sp,sp,-32
    8000891c:	00813823          	sd	s0,16(sp)
    80008920:	00113c23          	sd	ra,24(sp)
    80008924:	02010413          	addi	s0,sp,32
    80008928:	fe840593          	addi	a1,s0,-24
    8000892c:	00100613          	li	a2,1
    80008930:	00000513          	li	a0,0
    80008934:	fffff097          	auipc	ra,0xfffff
    80008938:	ae8080e7          	jalr	-1304(ra) # 8000741c <console_read>
    8000893c:	fe844503          	lbu	a0,-24(s0)
    80008940:	01813083          	ld	ra,24(sp)
    80008944:	01013403          	ld	s0,16(sp)
    80008948:	02010113          	addi	sp,sp,32
    8000894c:	00008067          	ret

0000000080008950 <console_handler>:
    80008950:	fe010113          	addi	sp,sp,-32
    80008954:	00813823          	sd	s0,16(sp)
    80008958:	00113c23          	sd	ra,24(sp)
    8000895c:	00913423          	sd	s1,8(sp)
    80008960:	02010413          	addi	s0,sp,32
    80008964:	14202773          	csrr	a4,scause
    80008968:	100027f3          	csrr	a5,sstatus
    8000896c:	0027f793          	andi	a5,a5,2
    80008970:	06079e63          	bnez	a5,800089ec <console_handler+0x9c>
    80008974:	00074c63          	bltz	a4,8000898c <console_handler+0x3c>
    80008978:	01813083          	ld	ra,24(sp)
    8000897c:	01013403          	ld	s0,16(sp)
    80008980:	00813483          	ld	s1,8(sp)
    80008984:	02010113          	addi	sp,sp,32
    80008988:	00008067          	ret
    8000898c:	0ff77713          	andi	a4,a4,255
    80008990:	00900793          	li	a5,9
    80008994:	fef712e3          	bne	a4,a5,80008978 <console_handler+0x28>
    80008998:	ffffe097          	auipc	ra,0xffffe
    8000899c:	6dc080e7          	jalr	1756(ra) # 80007074 <plic_claim>
    800089a0:	00a00793          	li	a5,10
    800089a4:	00050493          	mv	s1,a0
    800089a8:	02f50c63          	beq	a0,a5,800089e0 <console_handler+0x90>
    800089ac:	fc0506e3          	beqz	a0,80008978 <console_handler+0x28>
    800089b0:	00050593          	mv	a1,a0
    800089b4:	00001517          	auipc	a0,0x1
    800089b8:	94450513          	addi	a0,a0,-1724 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800089bc:	fffff097          	auipc	ra,0xfffff
    800089c0:	afc080e7          	jalr	-1284(ra) # 800074b8 <__printf>
    800089c4:	01013403          	ld	s0,16(sp)
    800089c8:	01813083          	ld	ra,24(sp)
    800089cc:	00048513          	mv	a0,s1
    800089d0:	00813483          	ld	s1,8(sp)
    800089d4:	02010113          	addi	sp,sp,32
    800089d8:	ffffe317          	auipc	t1,0xffffe
    800089dc:	6d430067          	jr	1748(t1) # 800070ac <plic_complete>
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	3e0080e7          	jalr	992(ra) # 80007dc0 <uartintr>
    800089e8:	fddff06f          	j	800089c4 <console_handler+0x74>
    800089ec:	00001517          	auipc	a0,0x1
    800089f0:	a0c50513          	addi	a0,a0,-1524 # 800093f8 <digits+0x78>
    800089f4:	fffff097          	auipc	ra,0xfffff
    800089f8:	a68080e7          	jalr	-1432(ra) # 8000745c <panic>
	...
