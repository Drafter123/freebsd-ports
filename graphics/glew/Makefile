# New ports collection makefile for: glew
# Date created:		29 Dec 2003
# Whom:			Igor Pokrovsky <tiamat@comset.net>
#
# $FreeBSD$
#

PORTNAME=	glew
PORTVERSION=	1.9.0
CATEGORIES=	graphics
MASTER_SITES=	SF
EXTRACT_SUFX=	.tgz

MAINTAINER=	mva@FreeBSD.org
COMMENT=	The OpenGL Extension Wrangler Library

USE_XORG=	x11 xext xi xmu
USE_GMAKE=	yes
USE_GL=		yes
USE_LDCONFIG=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/glewinfo ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/visualinfo ${PREFIX}/bin

	${INSTALL_PROGRAM} ${WRKSRC}/lib/libGLEW.so.${PORTVERSION} \
		${PREFIX}/lib/libGLEW.so.1
	${INSTALL_PROGRAM} ${WRKSRC}/lib/libGLEWmx.so.${PORTVERSION} \
		${PREFIX}/lib/libGLEWmx.so.1
	${LN} -sf ${PREFIX}/lib/libGLEW.so.1 ${PREFIX}/lib/libGLEW.so
	${LN} -sf ${PREFIX}/lib/libGLEWmx.so.1 ${PREFIX}/lib/libGLEWmx.so
	${INSTALL_DATA} ${WRKSRC}/lib/libGLEW.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libGLEWmx.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/include/GL/*.h ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/glew.pc ${PREFIX}/libdata/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/glewmx.pc ${PREFIX}/libdata/pkgconfig

.ifndef (NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for i in css html jpg png
	${INSTALL_DATA} ${WRKSRC}/doc/*.${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
