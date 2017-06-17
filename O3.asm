
main:     file format elf32-i386


Disassembly of section .init:

080484e0 <_init>:
 80484e0:	53                   	push   %ebx
 80484e1:	83 ec 08             	sub    $0x8,%esp
 80484e4:	e8 37 01 00 00       	call   8048620 <__x86.get_pc_thunk.bx>
 80484e9:	81 c3 17 1b 00 00    	add    $0x1b17,%ebx
 80484ef:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80484f5:	85 c0                	test   %eax,%eax
 80484f7:	74 05                	je     80484fe <_init+0x1e>
 80484f9:	e8 82 00 00 00       	call   8048580 <__stack_chk_fail@plt+0x10>
 80484fe:	83 c4 08             	add    $0x8,%esp
 8048501:	5b                   	pop    %ebx
 8048502:	c3                   	ret    

Disassembly of section .plt:

08048510 <__fprintf_chk@plt-0x10>:
 8048510:	ff 35 04 a0 04 08    	pushl  0x804a004
 8048516:	ff 25 08 a0 04 08    	jmp    *0x804a008
 804851c:	00 00                	add    %al,(%eax)
	...

08048520 <__fprintf_chk@plt>:
 8048520:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048526:	68 00 00 00 00       	push   $0x0
 804852b:	e9 e0 ff ff ff       	jmp    8048510 <_init+0x30>

08048530 <__printf_chk@plt>:
 8048530:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048536:	68 08 00 00 00       	push   $0x8
 804853b:	e9 d0 ff ff ff       	jmp    8048510 <_init+0x30>

08048540 <__libc_start_main@plt>:
 8048540:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048546:	68 10 00 00 00       	push   $0x10
 804854b:	e9 c0 ff ff ff       	jmp    8048510 <_init+0x30>

08048550 <fclose@plt>:
 8048550:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048556:	68 18 00 00 00       	push   $0x18
 804855b:	e9 b0 ff ff ff       	jmp    8048510 <_init+0x30>

08048560 <fopen@plt>:
 8048560:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048566:	68 20 00 00 00       	push   $0x20
 804856b:	e9 a0 ff ff ff       	jmp    8048510 <_init+0x30>

08048570 <__stack_chk_fail@plt>:
 8048570:	ff 25 20 a0 04 08    	jmp    *0x804a020
 8048576:	68 28 00 00 00       	push   $0x28
 804857b:	e9 90 ff ff ff       	jmp    8048510 <_init+0x30>

Disassembly of section .plt.got:

08048580 <.plt.got>:
 8048580:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048586:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048590 <main>:
 8048590:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048594:	83 e4 f0             	and    $0xfffffff0,%esp
 8048597:	ff 71 fc             	pushl  -0x4(%ecx)
 804859a:	55                   	push   %ebp
 804859b:	89 e5                	mov    %esp,%ebp
 804859d:	51                   	push   %ecx
 804859e:	83 ec 28             	sub    $0x28,%esp
 80485a1:	8b 01                	mov    (%ecx),%eax
 80485a3:	8b 51 04             	mov    0x4(%ecx),%edx
 80485a6:	c7 45 e4 e0 89 04 08 	movl   $0x80489e0,-0x1c(%ebp)
 80485ad:	c7 45 ec e0 8a 04 08 	movl   $0x8048ae0,-0x14(%ebp)
 80485b4:	65 8b 0d 14 00 00 00 	mov    %gs:0x14,%ecx
 80485bb:	89 4d f4             	mov    %ecx,-0xc(%ebp)
 80485be:	31 c9                	xor    %ecx,%ecx
 80485c0:	52                   	push   %edx
 80485c1:	50                   	push   %eax
 80485c2:	8d 45 e0             	lea    -0x20(%ebp),%eax
 80485c5:	c7 45 f0 ec 89 04 08 	movl   $0x80489ec,-0x10(%ebp)
 80485cc:	c7 45 e8 f8 89 04 08 	movl   $0x80489f8,-0x18(%ebp)
 80485d3:	50                   	push   %eax
 80485d4:	c7 45 e0 04 8a 04 08 	movl   $0x8048a04,-0x20(%ebp)
 80485db:	e8 c0 01 00 00       	call   80487a0 <_ZN25MainControllerServiceImpl13ComponentImpl3runEiPPc>
 80485e0:	83 c4 10             	add    $0x10,%esp
 80485e3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80485e6:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80485ed:	75 08                	jne    80485f7 <main+0x67>
 80485ef:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80485f2:	c9                   	leave  
 80485f3:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80485f6:	c3                   	ret    
 80485f7:	e8 74 ff ff ff       	call   8048570 <__stack_chk_fail@plt>

080485fc <_start>:
 80485fc:	31 ed                	xor    %ebp,%ebp
 80485fe:	5e                   	pop    %esi
 80485ff:	89 e1                	mov    %esp,%ecx
 8048601:	83 e4 f0             	and    $0xfffffff0,%esp
 8048604:	50                   	push   %eax
 8048605:	54                   	push   %esp
 8048606:	52                   	push   %edx
 8048607:	68 40 88 04 08       	push   $0x8048840
 804860c:	68 e0 87 04 08       	push   $0x80487e0
 8048611:	51                   	push   %ecx
 8048612:	56                   	push   %esi
 8048613:	68 90 85 04 08       	push   $0x8048590
 8048618:	e8 23 ff ff ff       	call   8048540 <__libc_start_main@plt>
 804861d:	f4                   	hlt    
 804861e:	66 90                	xchg   %ax,%ax

08048620 <__x86.get_pc_thunk.bx>:
 8048620:	8b 1c 24             	mov    (%esp),%ebx
 8048623:	c3                   	ret    
 8048624:	66 90                	xchg   %ax,%ax
 8048626:	66 90                	xchg   %ax,%ax
 8048628:	66 90                	xchg   %ax,%ax
 804862a:	66 90                	xchg   %ax,%ax
 804862c:	66 90                	xchg   %ax,%ax
 804862e:	66 90                	xchg   %ax,%ax

08048630 <deregister_tm_clones>:
 8048630:	b8 2f a0 04 08       	mov    $0x804a02f,%eax
 8048635:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804863a:	83 f8 06             	cmp    $0x6,%eax
 804863d:	76 1a                	jbe    8048659 <deregister_tm_clones+0x29>
 804863f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048644:	85 c0                	test   %eax,%eax
 8048646:	74 11                	je     8048659 <deregister_tm_clones+0x29>
 8048648:	55                   	push   %ebp
 8048649:	89 e5                	mov    %esp,%ebp
 804864b:	83 ec 14             	sub    $0x14,%esp
 804864e:	68 2c a0 04 08       	push   $0x804a02c
 8048653:	ff d0                	call   *%eax
 8048655:	83 c4 10             	add    $0x10,%esp
 8048658:	c9                   	leave  
 8048659:	f3 c3                	repz ret 
 804865b:	90                   	nop
 804865c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048660 <register_tm_clones>:
 8048660:	b8 2c a0 04 08       	mov    $0x804a02c,%eax
 8048665:	2d 2c a0 04 08       	sub    $0x804a02c,%eax
 804866a:	c1 f8 02             	sar    $0x2,%eax
 804866d:	89 c2                	mov    %eax,%edx
 804866f:	c1 ea 1f             	shr    $0x1f,%edx
 8048672:	01 d0                	add    %edx,%eax
 8048674:	d1 f8                	sar    %eax
 8048676:	74 1b                	je     8048693 <register_tm_clones+0x33>
 8048678:	ba 00 00 00 00       	mov    $0x0,%edx
 804867d:	85 d2                	test   %edx,%edx
 804867f:	74 12                	je     8048693 <register_tm_clones+0x33>
 8048681:	55                   	push   %ebp
 8048682:	89 e5                	mov    %esp,%ebp
 8048684:	83 ec 10             	sub    $0x10,%esp
 8048687:	50                   	push   %eax
 8048688:	68 2c a0 04 08       	push   $0x804a02c
 804868d:	ff d2                	call   *%edx
 804868f:	83 c4 10             	add    $0x10,%esp
 8048692:	c9                   	leave  
 8048693:	f3 c3                	repz ret 
 8048695:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080486a0 <__do_global_dtors_aux>:
 80486a0:	80 3d 84 a0 04 08 00 	cmpb   $0x0,0x804a084
 80486a7:	75 13                	jne    80486bc <__do_global_dtors_aux+0x1c>
 80486a9:	55                   	push   %ebp
 80486aa:	89 e5                	mov    %esp,%ebp
 80486ac:	83 ec 08             	sub    $0x8,%esp
 80486af:	e8 7c ff ff ff       	call   8048630 <deregister_tm_clones>
 80486b4:	c6 05 84 a0 04 08 01 	movb   $0x1,0x804a084
 80486bb:	c9                   	leave  
 80486bc:	f3 c3                	repz ret 
 80486be:	66 90                	xchg   %ax,%ax

080486c0 <frame_dummy>:
 80486c0:	b8 08 9f 04 08       	mov    $0x8049f08,%eax
 80486c5:	8b 10                	mov    (%eax),%edx
 80486c7:	85 d2                	test   %edx,%edx
 80486c9:	75 05                	jne    80486d0 <frame_dummy+0x10>
 80486cb:	eb 93                	jmp    8048660 <register_tm_clones>
 80486cd:	8d 76 00             	lea    0x0(%esi),%esi
 80486d0:	ba 00 00 00 00       	mov    $0x0,%edx
 80486d5:	85 d2                	test   %edx,%edx
 80486d7:	74 f2                	je     80486cb <frame_dummy+0xb>
 80486d9:	55                   	push   %ebp
 80486da:	89 e5                	mov    %esp,%ebp
 80486dc:	83 ec 14             	sub    $0x14,%esp
 80486df:	50                   	push   %eax
 80486e0:	ff d2                	call   *%edx
 80486e2:	83 c4 10             	add    $0x10,%esp
 80486e5:	c9                   	leave  
 80486e6:	e9 75 ff ff ff       	jmp    8048660 <register_tm_clones>
 80486eb:	66 90                	xchg   %ax,%ax
 80486ed:	66 90                	xchg   %ax,%ax
 80486ef:	90                   	nop

080486f0 <_ZN24SimplePrinterServiceImpl13ComponentImpl5printEi>:
 80486f0:	83 ec 10             	sub    $0x10,%esp
 80486f3:	ff 74 24 18          	pushl  0x18(%esp)
 80486f7:	68 68 88 04 08       	push   $0x8048868
 80486fc:	6a 01                	push   $0x1
 80486fe:	e8 2d fe ff ff       	call   8048530 <__printf_chk@plt>
 8048703:	83 c4 1c             	add    $0x1c,%esp
 8048706:	c3                   	ret    
 8048707:	66 90                	xchg   %ax,%ax
 8048709:	66 90                	xchg   %ax,%ax
 804870b:	66 90                	xchg   %ax,%ax
 804870d:	66 90                	xchg   %ax,%ax
 804870f:	90                   	nop

08048710 <_ZN22BothPrinterServiceImpl13ComponentImpl5printEi>:
 8048710:	56                   	push   %esi
 8048711:	53                   	push   %ebx
 8048712:	83 ec 08             	sub    $0x8,%esp
 8048715:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048719:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 804871d:	56                   	push   %esi
 804871e:	68 68 88 04 08       	push   $0x8048868
 8048723:	83 c3 04             	add    $0x4,%ebx
 8048726:	6a 01                	push   $0x1
 8048728:	e8 03 fe ff ff       	call   8048530 <__printf_chk@plt>
 804872d:	89 74 24 24          	mov    %esi,0x24(%esp)
 8048731:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 8048735:	83 c4 14             	add    $0x14,%esp
 8048738:	5b                   	pop    %ebx
 8048739:	5e                   	pop    %esi
 804873a:	e9 11 00 00 00       	jmp    8048750 <_ZN22FilePrinterServiceImpl13ComponentImpl5printEi>
 804873f:	90                   	nop

08048740 <_ZN22SimpleAdderServiceImpl13ComponentImpl3addEii>:
 8048740:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048744:	03 44 24 08          	add    0x8(%esp),%eax
 8048748:	c3                   	ret    
 8048749:	66 90                	xchg   %ax,%ax
 804874b:	66 90                	xchg   %ax,%ax
 804874d:	66 90                	xchg   %ax,%ax
 804874f:	90                   	nop

08048750 <_ZN22FilePrinterServiceImpl13ComponentImpl5printEi>:
 8048750:	56                   	push   %esi
 8048751:	53                   	push   %ebx
 8048752:	83 ec 0c             	sub    $0xc,%esp
 8048755:	8b 74 24 1c          	mov    0x1c(%esp),%esi
 8048759:	68 84 8a 04 08       	push   $0x8048a84
 804875e:	68 86 8a 04 08       	push   $0x8048a86
 8048763:	e8 f8 fd ff ff       	call   8048560 <fopen@plt>
 8048768:	83 c4 10             	add    $0x10,%esp
 804876b:	85 c0                	test   %eax,%eax
 804876d:	74 21                	je     8048790 <_ZN22FilePrinterServiceImpl13ComponentImpl5printEi+0x40>
 804876f:	56                   	push   %esi
 8048770:	68 68 88 04 08       	push   $0x8048868
 8048775:	89 c3                	mov    %eax,%ebx
 8048777:	6a 01                	push   $0x1
 8048779:	50                   	push   %eax
 804877a:	e8 a1 fd ff ff       	call   8048520 <__fprintf_chk@plt>
 804877f:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 8048783:	83 c4 14             	add    $0x14,%esp
 8048786:	5b                   	pop    %ebx
 8048787:	5e                   	pop    %esi
 8048788:	e9 c3 fd ff ff       	jmp    8048550 <fclose@plt>
 804878d:	8d 76 00             	lea    0x0(%esi),%esi
 8048790:	83 c4 04             	add    $0x4,%esp
 8048793:	5b                   	pop    %ebx
 8048794:	5e                   	pop    %esi
 8048795:	c3                   	ret    
 8048796:	66 90                	xchg   %ax,%ax
 8048798:	66 90                	xchg   %ax,%ax
 804879a:	66 90                	xchg   %ax,%ax
 804879c:	66 90                	xchg   %ax,%ax
 804879e:	66 90                	xchg   %ax,%ax

080487a0 <_ZN25MainControllerServiceImpl13ComponentImpl3runEiPPc>:
 80487a0:	56                   	push   %esi
 80487a1:	53                   	push   %ebx
 80487a2:	83 ec 08             	sub    $0x8,%esp
 80487a5:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 80487a9:	6a 0a                	push   $0xa
 80487ab:	6a 05                	push   $0x5
 80487ad:	8d 43 04             	lea    0x4(%ebx),%eax
 80487b0:	83 c3 0c             	add    $0xc,%ebx
 80487b3:	50                   	push   %eax
 80487b4:	e8 87 ff ff ff       	call   8048740 <_ZN22SimpleAdderServiceImpl13ComponentImpl3addEii>
 80487b9:	83 c4 0c             	add    $0xc,%esp
 80487bc:	89 c6                	mov    %eax,%esi
 80487be:	50                   	push   %eax
 80487bf:	68 68 88 04 08       	push   $0x8048868
 80487c4:	6a 01                	push   $0x1
 80487c6:	e8 65 fd ff ff       	call   8048530 <__printf_chk@plt>
 80487cb:	58                   	pop    %eax
 80487cc:	5a                   	pop    %edx
 80487cd:	56                   	push   %esi
 80487ce:	53                   	push   %ebx
 80487cf:	e8 7c ff ff ff       	call   8048750 <_ZN22FilePrinterServiceImpl13ComponentImpl5printEi>
 80487d4:	83 c4 14             	add    $0x14,%esp
 80487d7:	31 c0                	xor    %eax,%eax
 80487d9:	5b                   	pop    %ebx
 80487da:	5e                   	pop    %esi
 80487db:	c3                   	ret    
 80487dc:	66 90                	xchg   %ax,%ax
 80487de:	66 90                	xchg   %ax,%ax

080487e0 <__libc_csu_init>:
 80487e0:	55                   	push   %ebp
 80487e1:	57                   	push   %edi
 80487e2:	56                   	push   %esi
 80487e3:	53                   	push   %ebx
 80487e4:	e8 37 fe ff ff       	call   8048620 <__x86.get_pc_thunk.bx>
 80487e9:	81 c3 17 18 00 00    	add    $0x1817,%ebx
 80487ef:	83 ec 0c             	sub    $0xc,%esp
 80487f2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80487f6:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 80487fc:	e8 df fc ff ff       	call   80484e0 <_init>
 8048801:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 8048807:	29 c6                	sub    %eax,%esi
 8048809:	c1 fe 02             	sar    $0x2,%esi
 804880c:	85 f6                	test   %esi,%esi
 804880e:	74 25                	je     8048835 <__libc_csu_init+0x55>
 8048810:	31 ff                	xor    %edi,%edi
 8048812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048818:	83 ec 04             	sub    $0x4,%esp
 804881b:	ff 74 24 2c          	pushl  0x2c(%esp)
 804881f:	ff 74 24 2c          	pushl  0x2c(%esp)
 8048823:	55                   	push   %ebp
 8048824:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 804882b:	83 c7 01             	add    $0x1,%edi
 804882e:	83 c4 10             	add    $0x10,%esp
 8048831:	39 f7                	cmp    %esi,%edi
 8048833:	75 e3                	jne    8048818 <__libc_csu_init+0x38>
 8048835:	83 c4 0c             	add    $0xc,%esp
 8048838:	5b                   	pop    %ebx
 8048839:	5e                   	pop    %esi
 804883a:	5f                   	pop    %edi
 804883b:	5d                   	pop    %ebp
 804883c:	c3                   	ret    
 804883d:	8d 76 00             	lea    0x0(%esi),%esi

08048840 <__libc_csu_fini>:
 8048840:	f3 c3                	repz ret 

Disassembly of section .fini:

08048844 <_fini>:
 8048844:	53                   	push   %ebx
 8048845:	83 ec 08             	sub    $0x8,%esp
 8048848:	e8 d3 fd ff ff       	call   8048620 <__x86.get_pc_thunk.bx>
 804884d:	81 c3 b3 17 00 00    	add    $0x17b3,%ebx
 8048853:	83 c4 08             	add    $0x8,%esp
 8048856:	5b                   	pop    %ebx
 8048857:	c3                   	ret    
