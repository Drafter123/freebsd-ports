# Created by: rene@FreeBSD.org
# $FreeBSD$

PORTNAME=	dcf77pi
PORTVERSION=	1.0.2
CATEGORIES=	comms

MAINTAINER=	rene@FreeBSD.org
COMMENT=	DCF77 receiver/logger/analyzer for the Raspberry Pi

LICENSE=	BSD

USE_GITHUB=	yes
GH_ACCOUNT=	rene0
GH_COMMIT=	27143b4

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${OSVERSION} < 900000
IGNORE=	no GPIO support
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCSDIR}
.endif
	@if [ ! ${ETCDIR}/hardware.txt ] ; then \
		${CP} -p ${ETCDIR}/hardware.txt.sample ${ETCDIR}/hardware.txt ; \
	fi

.include <bsd.port.mk>
