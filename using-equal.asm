        mov     rdx, QWORD PTR [rdi+16]   # MEM[(const struct ._anon_76 *)this_1(D) + 16B].__working, MEM[(const struct ._anon_76 *)this_1(D) + 16B].__working
        mov     DWORD PTR [rdx+rcx*4], ecx        # MEM <const int[100]> [(value_type &)_4][_5], _3
        ret
main:
        push    r14     #
        xor     eax, eax  # tmp114
        mov     ecx, 100  # tmp115,
        push    r13     #
        push    r12     #
        push    rbp     #
        push    rbx     #
        xor     ebx, ebx  # ivtmp.161
        sub     rsp, 1616 #,
        lea     rbp, [rsp+816]    # tmp149,
        lea     r12, [rsp+16]     # tmp152,
        mov     rdi, rbp  # tmp113, tmp149
        lea     r13, [rsp+416]    # tmp153,
        rep stosq
        mov     ecx, 50   # tmp118,
        mov     rdi, r12  # tmp116, tmp152
        rep stosq
.L13:
        mov     QWORD PTR [rsp+8], 0      # MEM[(struct id *)&D.34994]._M_thread,
        mov     edi, 24   #,
        call    operator new(unsigned long)   #
        mov     DWORD PTR [rax+8], ebx    # MEM[(struct _Head_base *)_60 + 8B]._M_head_impl, ivtmp.161
        mov     edx, OFFSET FLAT:pthread_create   #,
        mov     rsi, r13  #, tmp153
        lea     rdi, [rsp+8]      # tmp161,
        mov     QWORD PTR [rax], OFFSET FLAT:vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >+16    # MEM[(struct _State_impl *)_60].D.37854._vptr._State,
        mov     QWORD PTR [rax+16], r12   # MEM[(struct _Head_base *)_60 + 16B]._M_head_impl.__working, tmp152
        mov     QWORD PTR [rsp+416], rax  # MEM[(struct _State * &)_76], tmp119
        call    std::thread::_M_start_thread(std::unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >, void (*)())   #
        mov     rdi, QWORD PTR [rsp+416]  # _62, MEM[(struct _State * &)_76]
        test    rdi, rdi        # _62
        je      .L7 #,
        mov     rax, QWORD PTR [rdi]      # _62->_vptr._State, _62->_vptr._State
        call    [QWORD PTR [rax+8]]     # MEM[(int (*) () *)_63 + 8B]
.L7:
        cmp     QWORD PTR [rbp+0+rbx*8], 0        # MEM[(long unsigned int *)&threads + ivtmp.161_42 * 8],
        jne     .L8       #,
        mov     rax, QWORD PTR [rsp+8]    # MEM[(struct id &)&D.34994], MEM[(struct id &)&D.34994]
        mov     QWORD PTR [rbp+0+rbx*8], rax      # MEM[(struct id *)&threads + ivtmp.161_42 * 8], MEM[(struct id &)&D.34994]
        add     rbx, 1    # ivtmp.161,
        cmp     rbx, 100  # ivtmp.161,
        jne     .L13      #,
        lea     r14, [rsp+1616]   # _61,
        mov     rbx, rbp  # ivtmp.159, tmp149
.L14:
        mov     rdi, rbx  #, ivtmp.159
        call    std::thread::join()     #
        add     rbx, 8    # ivtmp.159,
        cmp     rbx, r14  # ivtmp.159, _61
        jne     .L14      #,
        xor     eax, eax  # tmp135
        mov     ecx, 50   # tmp136,
        mov     rdi, r13  # tmp153, tmp153
        movdqa  xmm0, XMMWORD PTR .LC0[rip] # vect_vec_iv_.111,
        rep stosq
        movdqa  xmm2, XMMWORD PTR .LC1[rip] # tmp151,
        lea     rax, [rsp+416]    # tmp163,
.L15:
        movdqa  xmm1, xmm0  # vect_vec_iv_.111, vect_vec_iv_.111
        add     rax, 16   # ivtmp.151,
        paddd   xmm0, xmm2    # vect_vec_iv_.111, tmp151
        movaps  XMMWORD PTR [rax-16], xmm1  # MEM <vector(4) int> [(int *)_36], vect_vec_iv_.111
        cmp     rbp, rax  # tmp149, ivtmp.151
        jne     .L15      #,
        mov     edx, 400  #,
        mov     rsi, r12  #, tmp152
        lea     rdi, [rsp+416]    # tmp164,
        call    memcmp  #
        xor     ecx, ecx  # <retval>
        test    eax, eax        # tmp156
        lea     rax, [rsp+1608]   # ivtmp.138,
        sete    cl      #, <retval>
        jmp     .L16      #
.L18:
        mov     rax, rdx  # ivtmp.138, ivtmp.138
.L16:
        cmp     QWORD PTR [rax], 0        # MEM[(long unsigned int *)_31],
        jne     .L8       #,
        lea     rdx, [rax-8]      # ivtmp.138,
        cmp     rbp, rax  # tmp149, ivtmp.138
        jne     .L18      #,
        add     rsp, 1616 #,
        mov     eax, ecx  #, <retval>
        pop     rbx       #
        pop     rbp       #
        pop     r12       #
        pop     r13       #
        pop     r14       #
        ret
.L8:
        call    std::terminate() #
        mov     rdi, rax  # tmp128, tmp157
        jmp     .L12      #
        mov     rbx, rax  # tmp129, tmp155
        jmp     .L10      #
main.cold:
typeinfo for std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >:
        .quad   vtable for __cxxabiv1::__si_class_type_info+16
        .quad   typeinfo name for std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >
        .quad   typeinfo for std::thread::_State
typeinfo name for std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >:
        .string "*NSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUliE_iEEEEEE"
vtable for std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >:
        .quad   0
        .quad   typeinfo for std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >
        .quad   std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >::~_State_impl() [complete object destructor]
        .quad   std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >::~_State_impl() [deleting destructor]
        .quad   std::thread::_State_impl<std::thread::_Invoker<std::tuple<main::{lambda(int)#1}, int> > >::_M_run()
.LC0:
        .long   0
        .long   1
        .long   2
        .long   3
.LC1:
        .long   4
        .long   4
        .long   4
        .long   4
