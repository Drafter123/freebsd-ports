# Created by: Andrej Zverev <az@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Net-OpenSSH
PORTVERSION=	0.60
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SALVA
PKGNAMEPREFIX=	p5-

MAINTAINER=	az@FreeBSD.org
COMMENT=	Perl SSH client package implemented on top of OpenSSH

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-IO-Tty>=0:${PORTSDIR}/devel/p5-IO-Tty
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Net::OpenSSH::Constants.3 \
	Net::OpenSSH::ConnectionCache.3 \
	Net::OpenSSH::OSTracer.3 \
	Net::OpenSSH.3

.include <bsd.port.mk>
