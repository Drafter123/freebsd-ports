# New ports collection makefile for:    pychecker
# Date created:         		20 November 2009
# Whom:                 		Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	sippy_b2bua
PORTVERSION=	1.0.2
PORTREVISION=	2
CATEGORIES=	net python
MASTER_SITES=	http://www.b2bua.org/chrome/site/
DISTNAME=	sippy-${PORTVERSION}

MAINTAINER=	sobomax@FreeBSD.org
COMMENT=	SIP Back-to-back user agent (B2BUA) server with Radius support

USE_PYTHON=		yes
USE_TWISTED=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	sippy
DOCSDIR=	${PREFIX}/share/doc/${PYDISTUTILS_PKGNAME}

DOCS=		COPYING README

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
