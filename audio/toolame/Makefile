# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD$

PORTNAME=	toolame
PORTVERSION=	0.2l
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}%200.2/${PORTNAME}%2002l
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.//}
EXTRACT_SUFX=	.tgz

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	Optimized mpeg 1/2 layer 2 audio encoder

LICENSE=	LGPL21

USE_GMAKE=	yes
ALL_TARGET=	${PORTNAME}
MAKE_ARGS=	CC="${CC}" TWEAKS="${CFLAGS}" ARCH="" PG="" OPTIM=""
USE_CSTD=	gnu89

PLIST_FILES=	bin/toolame
PORTDOCS=	FUTURE HISTORY LGPL.txt README

.include <bsd.port.pre.mk>

do-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for docs in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${docs} ${DOCSDIR}
.endfor
.endif
	@${INSTALL_PROGRAM} ${WRKSRC}/toolame ${PREFIX}/bin

.include <bsd.port.post.mk>
