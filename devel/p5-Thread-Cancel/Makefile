# Created by: Ruben van Staveren
# $FreeBSD$

PORTNAME=	Thread-Cancel
PORTVERSION=	1.13
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Cancel (i.e., kill) threads

RUN_DEPENDS=	p5-threads>=1.34:${PORTSDIR}/devel/p5-threads
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Thread::Cancel.3

pre-everything::
	@${ECHO_MSG} "--------------------------------------------------------"
	@${ECHO_MSG} "This module requires a threaded perl.  If your install"
	@${ECHO_MSG} "is not threaded please install lang/perl5.8 with threads"
	@${ECHO_MSG} "--------------------------------------------------------"

.include <bsd.port.mk>
