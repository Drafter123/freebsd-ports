# New ports collection makefile for:	p5-DBI-Shell
# Date created:		Sun Jan 18 07:27:41 CST 2004
# Whom:					dcf@aracnet.com
#
# $FreeBSD$
#

PORTNAME=	DBI-Shell
PORTVERSION=	11.95
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Interactive command shell for the DBI

RUN_DEPENDS=	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-Text-Reform>=0:${PORTSDIR}/textproc/p5-Text-Reform \
		p5-Text-CSV_XS>=0:${PORTSDIR}/textproc/p5-Text-CSV_XS \
		p5-IO-Tee>=0:${PORTSDIR}/devel/p5-IO-Tee
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		dbish.1
MAN3=		DBI::Format.3 DBI::Format::CSV.3 DBI::Format::SQLMinus.3 DBI::Shell.3

.include <bsd.port.mk>
