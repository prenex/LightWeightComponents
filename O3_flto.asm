
main:     file format elf32-i386


Disassembly of section .init:

08048498 <_init>:
 8048498:	53                   	push   %ebx
 8048499:	83 ec 08             	sub    $0x8,%esp
 804849c:	e8 0f 01 00 00       	call   80485b0 <__x86.get_pc_thunk.bx>
 80484a1:	81 c3 5f 1b 00 00    	add    $0x1b5f,%ebx
 80484a7:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80484ad:	85 c0                	test   %eax,%eax
 80484af:	74 05                	je     80484b6 <_init+0x1e>
 80484b1:	e8 6a 00 00 00       	call   8048520 <fopen@plt+0x10>
 80484b6:	83 c4 08             	add    $0x8,%esp
 80484b9:	5b                   	pop    %ebx
 80484ba:	c3                   	ret    

Disassembly of section .plt:

080484c0 <__fprintf_chk@plt-0x10>:
 80484c0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80484c6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80484cc:	00 00                	add    %al,(%eax)
	...

080484d0 <__fprintf_chk@plt>:
 80484d0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80484d6:	68 00 00 00 00       	push   $0x0
 80484db:	e9 e0 ff ff ff       	jmp    80484c0 <_init+0x28>

080484e0 <__printf_chk@plt>:
 80484e0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80484e6:	68 08 00 00 00       	push   $0x8
 80484eb:	e9 d0 ff ff ff       	jmp    80484c0 <_init+0x28>

080484f0 <__libc_start_main@plt>:
 80484f0:	ff 25 14 a0 04 08    	jmp    *0x804a014
 80484f6:	68 10 00 00 00       	push   $0x10
 80484fb:	e9 c0 ff ff ff       	jmp    80484c0 <_init+0x28>

08048500 <fclose@plt>:
 8048500:	ff 25 18 a0 04 08    	jmp    *0x804a018
 8048506:	68 18 00 00 00       	push   $0x18
 804850b:	e9 b0 ff ff ff       	jmp    80484c0 <_init+0x28>

08048510 <fopen@plt>:
 8048510:	ff 25 1c a0 04 08    	jmp    *0x804a01c
 8048516:	68 20 00 00 00       	push   $0x20
 804851b:	e9 a0 ff ff ff       	jmp    80484c0 <_init+0x28>

Disassembly of section .plt.got:

08048520 <.plt.got>:
 8048520:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048526:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048530 <main>:
 8048530:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048534:	83 e4 f0             	and    $0xfffffff0,%esp
 8048537:	ff 71 fc             	pushl  -0x4(%ecx)
 804853a:	55                   	push   %ebp
 804853b:	89 e5                	mov    %esp,%ebp
 804853d:	51                   	push   %ecx
 804853e:	83 ec 28             	sub    $0x28,%esp
 8048541:	8b 51 04             	mov    0x4(%ecx),%edx
 8048544:	8b 01                	mov    (%ecx),%eax
 8048546:	c7 45 e8 fc 8a 04 08 	movl   $0x8048afc,-0x18(%ebp)
 804854d:	c7 45 f0 f0 8a 04 08 	movl   $0x8048af0,-0x10(%ebp)
 8048554:	c7 45 f4 e4 8a 04 08 	movl   $0x8048ae4,-0xc(%ebp)
 804855b:	c7 45 ec d8 8a 04 08 	movl   $0x8048ad8,-0x14(%ebp)
 8048562:	52                   	push   %edx
 8048563:	50                   	push   %eax
 8048564:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8048567:	c7 45 e4 cc 8a 04 08 	movl   $0x8048acc,-0x1c(%ebp)
 804856e:	50                   	push   %eax
 804856f:	e8 8c 01 00 00       	call   8048700 <_ZN25MainControllerServiceImpl13ComponentImpl3runEiPPc>
 8048574:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 8048577:	83 c4 10             	add    $0x10,%esp
 804857a:	c9                   	leave  
 804857b:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804857e:	c3                   	ret    

0804857f <_start>:
 804857f:	31 ed                	xor    %ebp,%ebp
 8048581:	5e                   	pop    %esi
 8048582:	89 e1                	mov    %esp,%ecx
 8048584:	83 e4 f0             	and    $0xfffffff0,%esp
 8048587:	50                   	push   %eax
 8048588:	54                   	push   %esp
 8048589:	52                   	push   %edx
 804858a:	68 10 88 04 08       	push   $0x8048810
 804858f:	68 b0 87 04 08       	push   $0x80487b0
 8048594:	51                   	push   %ecx
 8048595:	56                   	push   %esi
 8048596:	68 30 85 04 08       	push   $0x8048530
 804859b:	e8 50 ff ff ff       	call   80484f0 <__libc_start_main@plt>
 80485a0:	f4                   	hlt    
 80485a1:	66 90                	xchg   %ax,%ax
 80485a3:	66 90                	xchg   %ax,%ax
 80485a5:	66 90                	xchg   %ax,%ax
 80485a7:	66 90                	xchg   %ax,%ax
 80485a9:	66 90                	xchg   %ax,%ax
 80485ab:	66 90                	xchg   %ax,%ax
 80485ad:	66 90                	xchg   %ax,%ax
 80485af:	90                   	nop

080485b0 <__x86.get_pc_thunk.bx>:
 80485b0:	8b 1c 24             	mov    (%esp),%ebx
 80485b3:	c3                   	ret    
 80485b4:	66 90                	xchg   %ax,%ax
 80485b6:	66 90                	xchg   %ax,%ax
 80485b8:	66 90                	xchg   %ax,%ax
 80485ba:	66 90                	xchg   %ax,%ax
 80485bc:	66 90                	xchg   %ax,%ax
 80485be:	66 90                	xchg   %ax,%ax

080485c0 <deregister_tm_clones>:
 80485c0:	b8 2b a0 04 08       	mov    $0x804a02b,%eax
 80485c5:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 80485ca:	83 f8 06             	cmp    $0x6,%eax
 80485cd:	76 1a                	jbe    80485e9 <deregister_tm_clones+0x29>
 80485cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80485d4:	85 c0                	test   %eax,%eax
 80485d6:	74 11                	je     80485e9 <deregister_tm_clones+0x29>
 80485d8:	55                   	push   %ebp
 80485d9:	89 e5                	mov    %esp,%ebp
 80485db:	83 ec 14             	sub    $0x14,%esp
 80485de:	68 28 a0 04 08       	push   $0x804a028
 80485e3:	ff d0                	call   *%eax
 80485e5:	83 c4 10             	add    $0x10,%esp
 80485e8:	c9                   	leave  
 80485e9:	f3 c3                	repz ret 
 80485eb:	90                   	nop
 80485ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080485f0 <register_tm_clones>:
 80485f0:	b8 28 a0 04 08       	mov    $0x804a028,%eax
 80485f5:	2d 28 a0 04 08       	sub    $0x804a028,%eax
 80485fa:	c1 f8 02             	sar    $0x2,%eax
 80485fd:	89 c2                	mov    %eax,%edx
 80485ff:	c1 ea 1f             	shr    $0x1f,%edx
 8048602:	01 d0                	add    %edx,%eax
 8048604:	d1 f8                	sar    %eax
 8048606:	74 1b                	je     8048623 <register_tm_clones+0x33>
 8048608:	ba 00 00 00 00       	mov    $0x0,%edx
 804860d:	85 d2                	test   %edx,%edx
 804860f:	74 12                	je     8048623 <register_tm_clones+0x33>
 8048611:	55                   	push   %ebp
 8048612:	89 e5                	mov    %esp,%ebp
 8048614:	83 ec 10             	sub    $0x10,%esp
 8048617:	50                   	push   %eax
 8048618:	68 28 a0 04 08       	push   $0x804a028
 804861d:	ff d2                	call   *%edx
 804861f:	83 c4 10             	add    $0x10,%esp
 8048622:	c9                   	leave  
 8048623:	f3 c3                	repz ret 
 8048625:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048630 <__do_global_dtors_aux>:
 8048630:	80 3d 80 a0 04 08 00 	cmpb   $0x0,0x804a080
 8048637:	75 13                	jne    804864c <__do_global_dtors_aux+0x1c>
 8048639:	55                   	push   %ebp
 804863a:	89 e5                	mov    %esp,%ebp
 804863c:	83 ec 08             	sub    $0x8,%esp
 804863f:	e8 7c ff ff ff       	call   80485c0 <deregister_tm_clones>
 8048644:	c6 05 80 a0 04 08 01 	movb   $0x1,0x804a080
 804864b:	c9                   	leave  
 804864c:	f3 c3                	repz ret 
 804864e:	66 90                	xchg   %ax,%ax

08048650 <frame_dummy>:
 8048650:	b8 08 9f 04 08       	mov    $0x8049f08,%eax
 8048655:	8b 10                	mov    (%eax),%edx
 8048657:	85 d2                	test   %edx,%edx
 8048659:	75 05                	jne    8048660 <frame_dummy+0x10>
 804865b:	eb 93                	jmp    80485f0 <register_tm_clones>
 804865d:	8d 76 00             	lea    0x0(%esi),%esi
 8048660:	ba 00 00 00 00       	mov    $0x0,%edx
 8048665:	85 d2                	test   %edx,%edx
 8048667:	74 f2                	je     804865b <frame_dummy+0xb>
 8048669:	55                   	push   %ebp
 804866a:	89 e5                	mov    %esp,%ebp
 804866c:	83 ec 14             	sub    $0x14,%esp
 804866f:	50                   	push   %eax
 8048670:	ff d2                	call   *%edx
 8048672:	83 c4 10             	add    $0x10,%esp
 8048675:	c9                   	leave  
 8048676:	e9 75 ff ff ff       	jmp    80485f0 <register_tm_clones>
 804867b:	66 90                	xchg   %ax,%ax
 804867d:	66 90                	xchg   %ax,%ax
 804867f:	90                   	nop

08048680 <_ZN22SimpleAdderServiceImpl13ComponentImpl3addEii>:
 8048680:	8b 44 24 0c          	mov    0xc(%esp),%eax
 8048684:	03 44 24 08          	add    0x8(%esp),%eax
 8048688:	c3                   	ret    
 8048689:	90                   	nop
 804868a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048690 <_ZN24SimplePrinterServiceImpl13ComponentImpl5printEi>:
 8048690:	83 ec 10             	sub    $0x10,%esp
 8048693:	ff 74 24 18          	pushl  0x18(%esp)
 8048697:	68 48 88 04 08       	push   $0x8048848
 804869c:	6a 01                	push   $0x1
 804869e:	e8 3d fe ff ff       	call   80484e0 <__printf_chk@plt>
 80486a3:	83 c4 1c             	add    $0x1c,%esp
 80486a6:	c3                   	ret    
 80486a7:	90                   	nop
 80486a8:	90                   	nop
 80486a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080486b0 <_ZN22FilePrinterServiceImpl13ComponentImpl5printEi>:
 80486b0:	56                   	push   %esi
 80486b1:	53                   	push   %ebx
 80486b2:	83 ec 0c             	sub    $0xc,%esp
 80486b5:	8b 74 24 1c          	mov    0x1c(%esp),%esi
 80486b9:	68 54 88 04 08       	push   $0x8048854
 80486be:	68 56 88 04 08       	push   $0x8048856
 80486c3:	e8 48 fe ff ff       	call   8048510 <fopen@plt>
 80486c8:	83 c4 10             	add    $0x10,%esp
 80486cb:	85 c0                	test   %eax,%eax
 80486cd:	74 21                	je     80486f0 <_ZN22FilePrinterServiceImpl13ComponentImpl5printEi+0x40>
 80486cf:	56                   	push   %esi
 80486d0:	68 48 88 04 08       	push   $0x8048848
 80486d5:	89 c3                	mov    %eax,%ebx
 80486d7:	6a 01                	push   $0x1
 80486d9:	50                   	push   %eax
 80486da:	e8 f1 fd ff ff       	call   80484d0 <__fprintf_chk@plt>
 80486df:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 80486e3:	83 c4 14             	add    $0x14,%esp
 80486e6:	5b                   	pop    %ebx
 80486e7:	5e                   	pop    %esi
 80486e8:	e9 13 fe ff ff       	jmp    8048500 <fclose@plt>
 80486ed:	8d 76 00             	lea    0x0(%esi),%esi
 80486f0:	83 c4 04             	add    $0x4,%esp
 80486f3:	5b                   	pop    %ebx
 80486f4:	5e                   	pop    %esi
 80486f5:	c3                   	ret    
 80486f6:	8d 76 00             	lea    0x0(%esi),%esi
 80486f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048700 <_ZN25MainControllerServiceImpl13ComponentImpl3runEiPPc>:
 8048700:	53                   	push   %ebx
 8048701:	83 ec 0c             	sub    $0xc,%esp
 8048704:	6a 0f                	push   $0xf
 8048706:	68 48 88 04 08       	push   $0x8048848
 804870b:	6a 01                	push   $0x1
 804870d:	e8 ce fd ff ff       	call   80484e0 <__printf_chk@plt>
 8048712:	58                   	pop    %eax
 8048713:	5a                   	pop    %edx
 8048714:	68 54 88 04 08       	push   $0x8048854
 8048719:	68 56 88 04 08       	push   $0x8048856
 804871e:	e8 ed fd ff ff       	call   8048510 <fopen@plt>
 8048723:	83 c4 10             	add    $0x10,%esp
 8048726:	85 c0                	test   %eax,%eax
 8048728:	74 1c                	je     8048746 <_ZN25MainControllerServiceImpl13ComponentImpl3runEiPPc+0x46>
 804872a:	6a 0f                	push   $0xf
 804872c:	68 48 88 04 08       	push   $0x8048848
 8048731:	89 c3                	mov    %eax,%ebx
 8048733:	6a 01                	push   $0x1
 8048735:	50                   	push   %eax
 8048736:	e8 95 fd ff ff       	call   80484d0 <__fprintf_chk@plt>
 804873b:	89 1c 24             	mov    %ebx,(%esp)
 804873e:	e8 bd fd ff ff       	call   8048500 <fclose@plt>
 8048743:	83 c4 10             	add    $0x10,%esp
 8048746:	83 c4 08             	add    $0x8,%esp
 8048749:	31 c0                	xor    %eax,%eax
 804874b:	5b                   	pop    %ebx
 804874c:	c3                   	ret    
 804874d:	90                   	nop
 804874e:	66 90                	xchg   %ax,%ax

08048750 <_ZN22BothPrinterServiceImpl13ComponentImpl5printEi>:
 8048750:	56                   	push   %esi
 8048751:	53                   	push   %ebx
 8048752:	83 ec 08             	sub    $0x8,%esp
 8048755:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048759:	56                   	push   %esi
 804875a:	68 48 88 04 08       	push   $0x8048848
 804875f:	6a 01                	push   $0x1
 8048761:	e8 7a fd ff ff       	call   80484e0 <__printf_chk@plt>
 8048766:	58                   	pop    %eax
 8048767:	5a                   	pop    %edx
 8048768:	68 54 88 04 08       	push   $0x8048854
 804876d:	68 56 88 04 08       	push   $0x8048856
 8048772:	e8 99 fd ff ff       	call   8048510 <fopen@plt>
 8048777:	83 c4 10             	add    $0x10,%esp
 804877a:	85 c0                	test   %eax,%eax
 804877c:	74 22                	je     80487a0 <_ZN22BothPrinterServiceImpl13ComponentImpl5printEi+0x50>
 804877e:	56                   	push   %esi
 804877f:	68 48 88 04 08       	push   $0x8048848
 8048784:	89 c3                	mov    %eax,%ebx
 8048786:	6a 01                	push   $0x1
 8048788:	50                   	push   %eax
 8048789:	e8 42 fd ff ff       	call   80484d0 <__fprintf_chk@plt>
 804878e:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 8048792:	83 c4 14             	add    $0x14,%esp
 8048795:	5b                   	pop    %ebx
 8048796:	5e                   	pop    %esi
 8048797:	e9 64 fd ff ff       	jmp    8048500 <fclose@plt>
 804879c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80487a0:	83 c4 04             	add    $0x4,%esp
 80487a3:	5b                   	pop    %ebx
 80487a4:	5e                   	pop    %esi
 80487a5:	c3                   	ret    
 80487a6:	66 90                	xchg   %ax,%ax
 80487a8:	66 90                	xchg   %ax,%ax
 80487aa:	66 90                	xchg   %ax,%ax
 80487ac:	66 90                	xchg   %ax,%ax
 80487ae:	66 90                	xchg   %ax,%ax

080487b0 <__libc_csu_init>:
 80487b0:	55                   	push   %ebp
 80487b1:	57                   	push   %edi
 80487b2:	56                   	push   %esi
 80487b3:	53                   	push   %ebx
 80487b4:	e8 f7 fd ff ff       	call   80485b0 <__x86.get_pc_thunk.bx>
 80487b9:	81 c3 47 18 00 00    	add    $0x1847,%ebx
 80487bf:	83 ec 0c             	sub    $0xc,%esp
 80487c2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80487c6:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
 80487cc:	e8 c7 fc ff ff       	call   8048498 <_init>
 80487d1:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
 80487d7:	29 c6                	sub    %eax,%esi
 80487d9:	c1 fe 02             	sar    $0x2,%esi
 80487dc:	85 f6                	test   %esi,%esi
 80487de:	74 25                	je     8048805 <__libc_csu_init+0x55>
 80487e0:	31 ff                	xor    %edi,%edi
 80487e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80487e8:	83 ec 04             	sub    $0x4,%esp
 80487eb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80487ef:	ff 74 24 2c          	pushl  0x2c(%esp)
 80487f3:	55                   	push   %ebp
 80487f4:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
 80487fb:	83 c7 01             	add    $0x1,%edi
 80487fe:	83 c4 10             	add    $0x10,%esp
 8048801:	39 f7                	cmp    %esi,%edi
 8048803:	75 e3                	jne    80487e8 <__libc_csu_init+0x38>
 8048805:	83 c4 0c             	add    $0xc,%esp
 8048808:	5b                   	pop    %ebx
 8048809:	5e                   	pop    %esi
 804880a:	5f                   	pop    %edi
 804880b:	5d                   	pop    %ebp
 804880c:	c3                   	ret    
 804880d:	8d 76 00             	lea    0x0(%esi),%esi

08048810 <__libc_csu_fini>:
 8048810:	f3 c3                	repz ret 

Disassembly of section .fini:

08048814 <_fini>:
 8048814:	53                   	push   %ebx
 8048815:	83 ec 08             	sub    $0x8,%esp
 8048818:	e8 93 fd ff ff       	call   80485b0 <__x86.get_pc_thunk.bx>
 804881d:	81 c3 e3 17 00 00    	add    $0x17e3,%ebx
 8048823:	83 c4 08             	add    $0x8,%esp
 8048826:	5b                   	pop    %ebx
 8048827:	c3                   	ret    
