# $FreeBSD$

PORTNAME=	local-lib
PORTVERSION=	1.008009
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:APEIRON
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to create and use a local lib/ with PERL5LIB

TEST_DEPENDS=	p5-Capture-Tiny>=0:${PORTSDIR}/devel/p5-Capture-Tiny

PERL_CONFIGURE=	yes

MAN3=	POD2::DE::local::lib.3 \
	POD2::PT_BR::local::lib.3 \
	lib::core::only.3 \
	local::lib.3

.include <bsd.port.mk>
