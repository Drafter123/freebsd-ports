# Created by: Gvozdikov Veniamin <g.veniamin@googlemail.com>
# $FreeBSD$

PORTNAME=	smack
PORTVERSION=	0.5.0
PORTREVISION=	1
CATEGORIES=	devel

MAINTAINER=	g.veniamin@googlemail.com
COMMENT=	Low-level I/O storage library which packs data

LICENSE=	GPLv2

LIB_DEPENDS=	boost_iostreams:${PORTSDIR}/devel/boost-libs \
		snappy:${PORTSDIR}/archivers/snappy

USE_GITHUB=	yes
GH_ACCOUNT=	zloidemon
GH_COMMIT=	72c81bf
GH_TAGNAME=	${GH_COMMIT}

USES=		cmake
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	EXAMPLES

.include <bsd.port.options.mk>

.if ${OSVERSION} < 802515 || ${OSVERSION} >= 900000 && ${OSVERSION} < 900501
BROKEN=		requires posix_fadvise(2)
.endif

.if ${PORT_OPTIONS:MEXAMPLES}
PLIST_SUB=	EXAMPLES=""
CMAKE_ARGS=	-DENABLE_EXAMPLES=ON
.else
CMAKE_ARGS=	-DENABLE_EXAMPLES=OFF
PLIST_SUB=	EXAMPLES="@comment "
.endif

.include <bsd.port.mk>
