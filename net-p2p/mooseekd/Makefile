# New ports collection makefile for:	mooseekd
# Date created:				2006-07-24
# Whom:					Roman Bogorodskiy <novel@FreeBSD.org>
#
# $FreeBSD$
#

PORTNAME=	mooseekd
PORTVERSION=	0.05
PORTREVISION=	1
CATEGORIES=	net-p2p
MASTER_SITES=	http://files.backtrace.info/releases/mooseekd/

MAINTAINER=	novel@FreeBSD.org
COMMENT=	A daemon to connect to the Soulseek network

LIB_DEPENDS=	xml\\+\\+-2.6.2:${PORTSDIR}/textproc/libxml++26

BROKEN=		checksum mismatch

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
LDFLAGS+=	-L${LOCALBASE}/lib
CXXFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
USE_FAM=	yes
USES=		iconv

.include <bsd.port.mk>
