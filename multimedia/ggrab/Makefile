# New ports collection makefile for:	ggrab
# Date created:        			Fri Jan  6 20:53:15 CET 2006
# Whom:    				Markus Brueffer <markus@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	ggrab
PORTVERSION=	0.22a
CATEGORIES=	multimedia
MASTER_SITES=	http://www.menzebach.de/ggrab/
DISTNAME=	${PORTNAME}-${PORTVERSION}-linux
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Records MPEG2 streams directly from your Dbox2 over Ethernet

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PLIST_FILES=	bin/ggrab bin/sserver
PORTDOCS=	README

post-patch:
	@${REINPLACE_CMD} -e 's/-lpthread/${PTHREAD_LIBS}/g' \
		${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ggrab ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/sserver ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
